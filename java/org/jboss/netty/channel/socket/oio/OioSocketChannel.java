package org.jboss.netty.channel.socket.oio;

import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.socket.DefaultSocketChannelConfig;
import org.jboss.netty.channel.socket.SocketChannel;
import org.jboss.netty.channel.socket.SocketChannelConfig;

abstract class OioSocketChannel extends AbstractChannel implements SocketChannel {
    private final SocketChannelConfig config;
    final Object interestOpsLock = new Object();
    private volatile InetSocketAddress localAddress;
    private volatile InetSocketAddress remoteAddress;
    final Socket socket;
    volatile Thread workerThread;

    abstract PushbackInputStream getInputStream();

    abstract OutputStream getOutputStream();

    OioSocketChannel(Channel parent, ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink, Socket socket) {
        super(parent, factory, pipeline, sink);
        this.socket = socket;
        this.config = new DefaultSocketChannelConfig(socket);
    }

    public SocketChannelConfig getConfig() {
        return this.config;
    }

    public InetSocketAddress getLocalAddress() {
        InetSocketAddress localAddress = this.localAddress;
        if (localAddress == null) {
            try {
                localAddress = (InetSocketAddress) this.socket.getLocalSocketAddress();
                this.localAddress = localAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return localAddress;
    }

    public InetSocketAddress getRemoteAddress() {
        InetSocketAddress remoteAddress = this.remoteAddress;
        if (remoteAddress == null) {
            try {
                remoteAddress = (InetSocketAddress) this.socket.getRemoteSocketAddress();
                this.remoteAddress = remoteAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return remoteAddress;
    }

    public boolean isBound() {
        return isOpen() && this.socket.isBound();
    }

    public boolean isConnected() {
        return isOpen() && this.socket.isConnected();
    }

    protected boolean setClosed() {
        return super.setClosed();
    }

    protected void setInterestOpsNow(int interestOps) {
        super.setInterestOpsNow(interestOps);
    }

    public ChannelFuture write(Object message, SocketAddress remoteAddress) {
        if (remoteAddress == null || remoteAddress.equals(getRemoteAddress())) {
            return super.write(message, null);
        }
        return getUnsupportedOperationFuture();
    }
}
