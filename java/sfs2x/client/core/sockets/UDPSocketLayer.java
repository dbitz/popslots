package sfs2x.client.core.sockets;

import com.facebook.internal.ServerProtocol;
import com.helpshift.support.model.ErrorReport;
import java.net.InetSocketAddress;
import java.util.concurrent.Executors;
import org.jboss.netty.bootstrap.ConnectionlessBootstrap;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.buffer.TruncatedChannelBuffer;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.FixedReceiveBufferSizePredictorFactory;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelFactory;
import org.jboss.netty.channel.socket.nio.NioDatagramChannelFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.core.EventDispatcher;
import sfs2x.client.core.IDispatchable;
import sfs2x.client.core.IEventListener;

public class UDPSocketLayer implements IDispatchable, ISocketLayer {
    private DatagramChannel channel;
    private EventDispatcher dispatcher = new EventDispatcher(this);
    private DatagramChannelFactory factory;
    private String ipAddress;
    private boolean isDisconnecting = false;
    private Logger log = LoggerFactory.getLogger(getClass());
    private int socketNumber;

    private class UDPClientHandler extends SimpleChannelUpstreamHandler {
        private UDPClientHandler() {
        }

        public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) {
            try {
                UDPSocketLayer.this.handleBinaryData(((TruncatedChannelBuffer) e.getMessage()).array());
            } catch (Exception ex) {
                UDPSocketLayer.this.handleError("General error reading data from socket: " + ex.getMessage());
            }
        }

        public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) {
            UDPSocketLayer.this.channel.close();
            UDPSocketLayer.this.handleError("Socket error: " + e.getCause().getMessage());
        }
    }

    private void handleError(final String err) {
        new Thread(new Runnable() {
            public void run() {
                UDPSocketLayer.this.handleErrorThread(err);
            }
        }).start();
    }

    private void handleErrorThread(String err) {
        releaseResources();
        if (!this.isDisconnecting) {
            logError(err);
            callOnError(err);
        }
    }

    private void logError(String msg) {
        this.log.error("UDPSocketLayer: " + msg);
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

    private void handleBinaryData(byte[] buf) {
        callOnData(buf);
    }

    public EventDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public void addEventListener(String eventType, IEventListener listener) {
        this.dispatcher.addEventListener(eventType, listener);
    }

    public void connect(String adr, int port) {
        this.ipAddress = adr;
        this.socketNumber = port;
        this.factory = new NioDatagramChannelFactory(Executors.newCachedThreadPool());
        ConnectionlessBootstrap b = new ConnectionlessBootstrap(this.factory);
        b.setPipelineFactory(new ChannelPipelineFactory() {
            public ChannelPipeline getPipeline() throws Exception {
                return Channels.pipeline(new UDPClientHandler());
            }
        });
        b.setOption("broadcast", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        b.setOption("receiveBufferSizePredictorFactory", new FixedReceiveBufferSizePredictorFactory(1024));
        this.channel = (DatagramChannel) b.bind(new InetSocketAddress(0));
    }

    public boolean isConnected() {
        return false;
    }

    public boolean requiresConnection() {
        return false;
    }

    public void disconnect(String reason) {
    }

    public void disconnect() {
        this.isDisconnecting = true;
        releaseResources();
        this.isDisconnecting = false;
    }

    private void releaseResources() {
        if (this.channel != null) {
            this.channel.close();
        }
        if (this.factory != null) {
            this.factory.releaseExternalResources();
        }
        this.factory = null;
        this.channel = null;
    }

    public void kill() {
    }

    public void write(byte[] data) {
        try {
            if (this.channel != null) {
                this.channel.write(ChannelBuffers.wrappedBuffer(data), new InetSocketAddress(this.ipAddress, this.socketNumber));
            }
        } catch (Exception e) {
            logError("Error writing UDP data: " + e.getLocalizedMessage());
            handleError(e.getLocalizedMessage());
        }
    }
}
