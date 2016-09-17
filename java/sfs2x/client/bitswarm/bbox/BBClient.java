package sfs2x.client.bitswarm.bbox;

import com.adjust.sdk.Constants;
import com.helpshift.network.util.constants.NetworkConstants;
import com.helpshift.support.model.ErrorReport;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.bootstrap.ClientBootstrap;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.DefaultChannelPipeline;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.channel.socket.nio.NioClientSocketChannelFactory;
import org.jboss.netty.handler.codec.http.DefaultHttpRequest;
import org.jboss.netty.handler.codec.http.HttpChunk;
import org.jboss.netty.handler.codec.http.HttpChunkAggregator;
import org.jboss.netty.handler.codec.http.HttpClientCodec;
import org.jboss.netty.handler.codec.http.HttpContentDecompressor;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.http.HttpVersion;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.jboss.netty.util.CharsetUtil;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.bitswarm.BitSwarmEvent;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.EventDispatcher;
import sfs2x.client.core.IDispatchable;
import sfs2x.client.core.IEventListener;
import sfs2x.client.core.sockets.NettyTerminator;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.ByteArray;
import sfs2x.client.util.ClientDisconnectionReason;

public class BBClient implements IDispatchable {
    private final String BB_DEFAULT_HOST;
    private final int BB_DEFAULT_PORT;
    private final String BB_NULL;
    private final String BB_SERVLET;
    private final String CMD_CONNECT;
    private final String CMD_DATA;
    private final String CMD_POLL;
    private final int DEFAULT_POLL_SPEED;
    private final String ERR_INVALID_SESSION;
    private final int MAX_POLL_SPEED;
    private final int MIN_POLL_SPEED;
    private final int POLLING_TIMEOUT;
    private final String SEP;
    private final String SFS_HTTP;
    private String bbUrl;
    private BitSwarmClient bitswarm;
    private ClientBootstrap bootstrap;
    private Channel channel;
    private boolean debug;
    private EventDispatcher dispatcher;
    private String host;
    private boolean isConnected;
    private long lastPollingTime;
    private final Runnable pollRunner;
    private final ScheduledExecutorService pollScheduler;
    private int pollSpeed;
    private int port;
    private String sessId;
    URI uri;

    private final class BBChannelFutureListener implements ChannelFutureListener {
        private final HttpRequest request;

        public BBChannelFutureListener(HttpRequest request) {
            this.request = request;
        }

        public void operationComplete(ChannelFuture future) throws Exception {
            BBClient.this.channel = future.getChannel();
            BBClient.this.channel.write(this.request);
        }
    }

    private class HttpClientPipelineFactory implements ChannelPipelineFactory {
        private final boolean ssl;

        public HttpClientPipelineFactory(boolean ssl) {
            this.ssl = ssl;
        }

        public ChannelPipeline getPipeline() throws Exception {
            ChannelPipeline pipeline = new DefaultChannelPipeline();
            pipeline.addLast("codec", new HttpClientCodec());
            pipeline.addLast("inflater", new HttpContentDecompressor());
            pipeline.addLast("aggregator", new HttpChunkAggregator(1048576));
            pipeline.addLast("handler", new HttpResponseHandler());
            return pipeline;
        }
    }

    private class HttpResponseHandler extends SimpleChannelUpstreamHandler {
        private boolean readingChunks;

        private HttpResponseHandler() {
        }

        public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) throws Exception {
            if (!(e.getCause() instanceof ConnectException)) {
                return;
            }
            if (BBClient.this.bitswarm == null || BBClient.this.bitswarm.getSfs().isConnecting()) {
                BBClient.this.onHttpError(e.getCause(), true);
            } else {
                BBClient.this.onHttpError(e.getCause(), false);
            }
        }

        public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
            if (!this.readingChunks) {
                HttpResponse response = (HttpResponse) e.getMessage();
                if (response.getStatus().getCode() == BaseRequest.InitBuddyList && response.isChunked()) {
                    this.readingChunks = true;
                    return;
                }
                BBClient.this.onHttpResponse(response.getContent().toString(CharsetUtil.UTF_8));
            } else if (((HttpChunk) e.getMessage()).isLast()) {
                this.readingChunks = false;
            }
        }
    }

    private final class PollRunner implements Runnable {
        private PollRunner() {
        }

        public void run() {
            BBClient.this.poll();
        }
    }

    private final class PollTimeOutMonitor implements Runnable {
        public PollTimeOutMonitor() {
            BBClient.this.lastPollingTime = System.currentTimeMillis();
        }

        public void run() {
            if (System.currentTimeMillis() > BBClient.this.lastPollingTime + 45000) {
                Map<String, Object> params = new HashMap();
                params.put("reason", ClientDisconnectionReason.UNKNOWN);
                BBClient.this.dispatchEvent(new BBEvent(BBEvent.DISCONNECT, params));
                BBClient.this.pollScheduler.shutdownNow();
            }
        }
    }

    public BBClient() {
        this.BB_DEFAULT_HOST = "localhost";
        this.BB_DEFAULT_PORT = 8080;
        this.BB_SERVLET = "BlueBox/BlueBox.do";
        this.BB_NULL = "null";
        this.CMD_CONNECT = BitSwarmEvent.CONNECT;
        this.CMD_POLL = "poll";
        this.CMD_DATA = "data";
        this.ERR_INVALID_SESSION = "err01";
        this.SFS_HTTP = "sfsHttp";
        this.SEP = "|";
        this.MIN_POLL_SPEED = 50;
        this.MAX_POLL_SPEED = NetworkConstants.SOCKET_TIMEOUT;
        this.DEFAULT_POLL_SPEED = InviteUsersRequest.MAX_EXPIRY_TIME;
        this.POLLING_TIMEOUT = 45000;
        this.isConnected = false;
        this.host = "localhost";
        this.port = 8080;
        this.sessId = null;
        this.pollSpeed = InviteUsersRequest.MAX_EXPIRY_TIME;
        this.lastPollingTime = 0;
        this.pollScheduler = new ScheduledThreadPoolExecutor(3);
        this.pollRunner = new PollRunner();
    }

    private void init(BitSwarmClient bs, String host, int port, boolean debug) {
        this.bitswarm = bs;
        this.host = host;
        this.port = port;
        setDebug(debug);
        if (this.dispatcher == null) {
            this.dispatcher = new EventDispatcher(this);
        }
    }

    public BBClient(BitSwarmClient bs) {
        this();
        init(bs, "localhost", 8080, false);
    }

    public BBClient(String host, BitSwarmClient bs) {
        this();
        init(bs, host, 8080, false);
    }

    public BBClient(String host, int port, BitSwarmClient bs) {
        this();
        init(bs, host, port, false);
    }

    public BBClient(String host, int port, boolean debug, BitSwarmClient bs) {
        this();
        init(bs, host, port, debug);
    }

    public boolean isConnected() {
        return this.sessId != null;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        return this.port;
    }

    public String getSessionId() {
        return this.sessId;
    }

    public void connect() {
        connect("127.0.0.1", 8080);
    }

    public void connect(String host) {
        connect(host, 8080);
    }

    public void connect(String host, int port) {
        if (this.isConnected) {
            System.out.println("BB is already connected!");
            return;
        }
        this.host = host;
        this.port = port;
        this.bbUrl = "https://" + host + ":" + port + "/" + "BlueBox/BlueBox.do";
        try {
            this.uri = new URI(this.bbUrl);
            this.bootstrap = new ClientBootstrap(new NioClientSocketChannelFactory(Executors.newCachedThreadPool(), Executors.newCachedThreadPool()));
            this.bootstrap.setPipelineFactory(new HttpClientPipelineFactory((this.uri.getScheme() == null ? "http" : this.uri.getScheme()).equalsIgnoreCase(Constants.SCHEME)));
            sendRequest(BitSwarmEvent.CONNECT);
        } catch (URISyntaxException e) {
            System.out.println("Wrong uri: " + this.bbUrl);
        }
    }

    public void send(ByteArray binData) {
        if (!this.isConnected) {
            System.out.println("BB sending error: can't send data, BlueBox connection is not active");
        }
        try {
            sendRequest("data", binData);
        } catch (Exception ex) {
            System.out.println("BB sending error: " + ex.getMessage());
        }
    }

    public void close(String reason) {
        handleConnectionLost(true, reason);
    }

    private void onHttpError(Throwable e, boolean fireDisconnectEvent) {
        handleConnectionLost(fireDisconnectEvent);
        Map<String, Object> parameters = new HashMap();
        parameters.put(ErrorReport.KEY_MESSAGE, e.getMessage());
        dispatchEvent(new BBEvent(BBEvent.IO_ERROR, parameters));
    }

    private void onHttpResponse(String response) {
        try {
            if (isDebug()) {
                System.out.println("[ BB-Receive ]: " + response);
            }
            String[] reqBits = response.split("\\|");
            if (reqBits.length >= 2) {
                String cmd = reqBits[0];
                String data = reqBits[1];
                if (cmd.equals(BitSwarmEvent.CONNECT)) {
                    this.sessId = data;
                    this.isConnected = true;
                    dispatchEvent(new BBEvent(BBEvent.CONNECT));
                    this.pollScheduler.scheduleAtFixedRate(new PollTimeOutMonitor(), 0, 45000, TimeUnit.MILLISECONDS);
                    pollNext();
                } else if (cmd.equals("poll")) {
                    ByteArray binData = null;
                    if (!data.equals("null")) {
                        binData = decodeResponse(data);
                    }
                    pollNext();
                    if (binData != null) {
                        Map<String, Object> parameters = new HashMap();
                        parameters.put("data", binData);
                        dispatchEvent(new BBEvent(BBEvent.DATA, parameters));
                    }
                } else if (cmd.equals("err01")) {
                    onHttpError(new Exception("Invalid BB session !"), false);
                }
            }
        } catch (Exception e) {
            onHttpError(e, false);
        }
    }

    private void pollNext() {
        if (this.isConnected) {
            this.pollScheduler.schedule(this.pollRunner, (long) getPollSpeed(), TimeUnit.MILLISECONDS);
        }
    }

    private void poll() {
        if (this.isConnected) {
            this.lastPollingTime = System.currentTimeMillis();
            sendRequest("poll");
        }
    }

    private void sendRequest(String cmd) {
        sendRequest(cmd, null);
    }

    private void sendRequest(final String cmd, final Object data) {
        this.pollScheduler.submit(new Runnable() {
            public void run() {
                BBClient.this.bootstrap.connect(new InetSocketAddress(BBClient.this.host, BBClient.this.port)).addListener(new BBChannelFutureListener(BBClient.this.createRequest(cmd, data)));
            }
        });
    }

    private HttpRequest createRequest(String cmd, Object data) {
        String encodedData = encodeRequest(cmd, data);
        HttpRequest request = new DefaultHttpRequest(HttpVersion.HTTP_1_0, HttpMethod.POST, this.uri.toASCIIString());
        request.setHeader(Names.HOST, (Object) this.host);
        request.setHeader(Names.CONNECTION, (Object) Values.CLOSE);
        request.setHeader(Names.CONTENT_TYPE, (Object) "application/x-www-form-urlencoded");
        request.setHeader(Names.ACCEPT_ENCODING, (Object) Values.GZIP);
        byte[] contentBytes = new byte[0];
        try {
            contentBytes = ("sfsHttp=" + encodedData).getBytes(Constants.ENCODING);
        } catch (UnsupportedEncodingException e) {
            System.out.println("Unsupported encoding: " + e.getLocalizedMessage());
        }
        request.setContent(ChannelBuffers.copiedBuffer(contentBytes));
        request.setHeader(Names.CONTENT_LENGTH, (Object) Integer.valueOf(contentBytes.length));
        return request;
    }

    private void handleConnectionLost(boolean fireEvent) {
        handleConnectionLost(fireEvent, null);
    }

    private void handleConnectionLost(boolean fireEvent, String reason) {
        try {
            if (this.isConnected) {
                this.isConnected = false;
                this.sessId = null;
                this.pollScheduler.shutdownNow();
                this.channel.close();
                this.channel = null;
                if (fireEvent) {
                    Map<String, Object> params = new HashMap();
                    params.put("reason", reason);
                    dispatchEvent(new BBEvent(BBEvent.DISCONNECT, params));
                }
            }
            NettyTerminator nettyTerminator = new NettyTerminator(this.bootstrap);
        } catch (Throwable th) {
            NettyTerminator nettyTerminator2 = new NettyTerminator(this.bootstrap);
        }
    }

    private String encodeRequest(String cmd, Object data) {
        String encoded = "";
        if (cmd == null) {
            cmd = "null";
        }
        if (data == null) {
            data = "null";
        } else if (data instanceof ByteArray) {
            data = toBase64String(((ByteArray) data).getBytes());
        }
        try {
            return URLEncoder.encode(new StringBuilder(String.valueOf(encoded)).append(this.sessId == null ? "null" : this.sessId).append(String.valueOf("|")).append(cmd).append(String.valueOf("|")).append(data).toString(), Constants.ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Unable to encode BlueBox Message. Missing UTF-8 support!");
        }
    }

    private String toBase64String(byte[] bytes) {
        return Base64.encodeBytes(bytes);
    }

    private byte[] fromBase64String(String rawData) throws IOException {
        return Base64.decode(rawData);
    }

    private ByteArray decodeResponse(String rawData) throws IOException {
        return new ByteArray(fromBase64String(rawData));
    }

    private void dispatchEvent(BaseEvent evt) {
        this.dispatcher.dispatchEvent(evt);
    }

    public boolean isDebug() {
        return this.debug;
    }

    public void setDebug(boolean debug) {
        this.debug = debug;
    }

    public void setPollSpeed(int pollSpeed) {
        if (pollSpeed < 50 || pollSpeed > NetworkConstants.SOCKET_TIMEOUT) {
            pollSpeed = InviteUsersRequest.MAX_EXPIRY_TIME;
        }
        this.pollSpeed = pollSpeed;
    }

    public int getPollSpeed() {
        return this.pollSpeed;
    }

    public EventDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public void addEventListener(String eventType, IEventListener listener) {
        this.dispatcher.addEventListener(eventType, listener);
    }
}
