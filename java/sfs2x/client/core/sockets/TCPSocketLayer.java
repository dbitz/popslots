package sfs2x.client.core.sockets;

import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.res.values.HSConsts;
import java.net.InetSocketAddress;
import java.util.Properties;
import java.util.concurrent.Executors;
import org.jboss.netty.bootstrap.ClientBootstrap;
import org.jboss.netty.buffer.BigEndianHeapChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.channel.socket.nio.NioClientSocketChannelFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.core.EventDispatcher;
import sfs2x.client.core.IDispatchable;
import sfs2x.client.core.IEventListener;
import sfs2x.fsm.FiniteStateMachine;

public class TCPSocketLayer implements IDispatchable, ISocketLayer {
    private static final String BOSS_THREADS_NUM_KEY = "com.smartfoxserver.bossThreadsNum";
    private static final int StateConnected = 2;
    private static final int StateConnecting = 1;
    private static final int StateDisconnected = 0;
    private static final int StateDisconnecting = 3;
    private static final int TransConnectionFailure = 2;
    private static final int TransConnectionSuccess = 1;
    private static final int TransDisconnect = 3;
    private static final int TransStartConnect = 0;
    private static final String WORKER_THREADS_NUM_KEY = "com.smartfoxserver.workerThreadsNum";
    private ClientBootstrap bootstrap;
    private Channel channel;
    private ChannelFactory channelFactory;
    private EventDispatcher dispatcher = new EventDispatcher(this);
    private FiniteStateMachine fsm;
    private String ipAddress;
    private Logger log = LoggerFactory.getLogger(getClass());
    private int socketNumber;
    private int socketPollSleep;

    private class NettyIOHandler extends SimpleChannelHandler {
        private NettyIOHandler() {
        }

        public void channelConnected(ChannelHandlerContext ctx, ChannelStateEvent e) {
            TCPSocketLayer.this.channel = e.getFuture().getChannel();
            TCPSocketLayer.this.fsm.applyTransition(TCPSocketLayer.TransConnectionSuccess);
            TCPSocketLayer.this.callOnConnect();
        }

        public void channelDisconnected(ChannelHandlerContext ctx, ChannelStateEvent e) {
            TCPSocketLayer.this.releaseResources();
            TCPSocketLayer.this.handleDisconnection();
        }

        public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) {
            try {
                Object m = e.getMessage();
                if (m instanceof BigEndianHeapChannelBuffer) {
                    byte[] byteBuffer = ((BigEndianHeapChannelBuffer) m).array();
                    if (byteBuffer.length < TCPSocketLayer.TransConnectionSuccess) {
                        TCPSocketLayer.this.handleError("Connection closed by the remote side");
                        return;
                    }
                    TCPSocketLayer.this.handleBinaryData(byteBuffer);
                    super.messageReceived(ctx, e);
                    return;
                }
                TCPSocketLayer.this.log.warn("Not BigEndianHeapChannelBuffer " + m.getClass());
                ctx.sendUpstream(e);
            } catch (Exception ex) {
                TCPSocketLayer.this.handleError("General error reading data from socket: " + ex.getMessage());
            }
        }

        public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) {
            TCPSocketLayer.this.handleError("Socket error: " + e.getCause().getMessage());
        }
    }

    public int getState() {
        return this.fsm.getCurrentState();
    }

    public TCPSocketLayer() {
        initStates();
    }

    private void initNetty() {
        Properties properties = System.getProperties();
        int bossThreadsNum = TransConnectionSuccess;
        try {
            bossThreadsNum = Integer.parseInt(properties.getProperty(BOSS_THREADS_NUM_KEY, HSConsts.STATUS_INPROGRESS));
        } catch (NumberFormatException e) {
        }
        int workerThreadsNum = TransConnectionSuccess;
        try {
            workerThreadsNum = Integer.parseInt(properties.getProperty(WORKER_THREADS_NUM_KEY, HSConsts.STATUS_INPROGRESS));
        } catch (NumberFormatException e2) {
        }
        this.channelFactory = new NioClientSocketChannelFactory(Executors.newFixedThreadPool(bossThreadsNum), Executors.newFixedThreadPool(workerThreadsNum));
    }

    private void initStates() {
        this.fsm = new FiniteStateMachine();
        this.fsm.addAllStates(4);
        this.fsm.addStateTransition(TransStartConnect, TransConnectionSuccess, TransStartConnect);
        this.fsm.addStateTransition(TransConnectionSuccess, TransConnectionFailure, TransConnectionSuccess);
        this.fsm.addStateTransition(TransConnectionSuccess, TransStartConnect, TransConnectionFailure);
        this.fsm.addStateTransition(TransConnectionFailure, TransStartConnect, TransDisconnect);
        this.fsm.setCurrentState(TransStartConnect);
    }

    private void logWarn(String msg) {
        this.log.warn("TCPSocketLayer: " + msg);
    }

    private void logError(String msg) {
        this.log.error("TCPSocketLayer: " + msg);
    }

    private void handleError(final String err) {
        new Thread(new Runnable() {
            public void run() {
                TCPSocketLayer.this.handleErrorThread(err);
            }
        }).start();
    }

    private void handleErrorThread(String err) {
        this.fsm.applyTransition(TransConnectionFailure);
        releaseResources();
        if (getState() != TransDisconnect) {
            logError(err);
            callOnError(err);
            return;
        }
        handleDisconnection();
    }

    private void handleDisconnection() {
        handleDisconnection(null);
    }

    private void handleDisconnection(String reason) {
        if (getState() != 0) {
            this.fsm.applyTransition(TransDisconnect);
            if (reason == null) {
                callOnDisconnect();
            }
        }
    }

    private void writeSocket(byte[] buf) {
        if (getState() != TransConnectionFailure) {
            logError("Trying to write to disconnected socket");
        } else if (this.channel != null) {
            this.channel.write(ChannelBuffers.wrappedBuffer(buf));
        }
    }

    private void handleBinaryData(byte[] buf) {
        callOnData(buf);
    }

    private void callOnData(byte[] array) {
        SocketEvent event = new SocketEvent(SocketEvent.OnData);
        event.getArguments().put("data", array);
        this.dispatcher.dispatchEvent(event);
    }

    private void callOnError(String message) {
        SocketEvent event = new SocketEvent(SocketEvent.OnError);
        event.getArguments().put(ErrorReport.KEY_MESSAGE, message);
        this.dispatcher.dispatchEvent(event);
    }

    private void callOnConnect() {
        this.dispatcher.dispatchEvent(new SocketEvent(SocketEvent.OnConnect));
    }

    private void callOnDisconnect() {
        this.dispatcher.dispatchEvent(new SocketEvent(SocketEvent.OnDisconnect));
    }

    public EventDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public void addEventListener(String eventType, IEventListener listener) {
        this.dispatcher.addEventListener(eventType, listener);
    }

    public void connect(String adr, int port) {
        if (getState() != 0) {
            logWarn("Calling connect when the socket is not disconnected");
            return;
        }
        initNetty();
        this.socketNumber = port;
        this.ipAddress = adr;
        this.fsm.applyTransition(TransStartConnect);
        this.bootstrap = new ClientBootstrap(this.channelFactory);
        this.bootstrap.setPipelineFactory(new ChannelPipelineFactory() {
            public ChannelPipeline getPipeline() throws Exception {
                ChannelHandler[] channelHandlerArr = new ChannelHandler[TCPSocketLayer.TransConnectionSuccess];
                channelHandlerArr[TCPSocketLayer.TransStartConnect] = new NettyIOHandler();
                return Channels.pipeline(channelHandlerArr);
            }
        });
        this.bootstrap.connect(new InetSocketAddress(this.ipAddress, this.socketNumber));
    }

    public void disconnect() {
        disconnect(null);
    }

    public void disconnect(String reason) {
        if (getState() != TransConnectionFailure) {
            logWarn("Calling disconnect when the socket is not connected");
            return;
        }
        try {
            this.channel.disconnect();
        } catch (Exception e) {
            logWarn("Disconnection error: " + e.getMessage());
        }
        handleDisconnection(reason);
    }

    private void releaseResources() {
        if (this.channel != null) {
            this.channel.close();
        }
        this.channel = null;
        this.channelFactory = null;
        NettyTerminator nettyTerminator = new NettyTerminator(this.bootstrap);
    }

    public boolean requiresConnection() {
        return true;
    }

    public void kill() {
        this.channel.disconnect();
    }

    public boolean isConnected() {
        return getState() == TransConnectionFailure;
    }

    public void write(byte[] data) {
        writeSocket(data);
    }

    public int getSocketPollSleep() {
        return this.socketPollSleep;
    }

    public void setSocketPollSleep(int socketPollSleep) {
        this.socketPollSleep = socketPollSleep;
    }
}
