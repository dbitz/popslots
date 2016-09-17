package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.Selector;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.jboss.netty.channel.AbstractServerChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.socket.DefaultServerSocketChannelConfig;
import org.jboss.netty.channel.socket.ServerSocketChannel;
import org.jboss.netty.channel.socket.ServerSocketChannelConfig;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

class NioServerSocketChannel extends AbstractServerChannel implements ServerSocketChannel {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(NioServerSocketChannel.class);
    private final ServerSocketChannelConfig config;
    volatile Selector selector;
    final Lock shutdownLock = new ReentrantLock();
    final java.nio.channels.ServerSocketChannel socket;

    NioServerSocketChannel(ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink) {
        super(factory, pipeline, sink);
        try {
            this.socket = java.nio.channels.ServerSocketChannel.open();
            try {
                this.socket.configureBlocking(false);
                this.config = new DefaultServerSocketChannelConfig(this.socket.socket());
                Channels.fireChannelOpen((Channel) this);
            } catch (IOException e) {
                try {
                    this.socket.close();
                } catch (IOException e2) {
                    logger.warn("Failed to close a partially initialized socket.", e2);
                }
                throw new ChannelException("Failed to enter non-blocking mode.", e);
            }
        } catch (IOException e3) {
            throw new ChannelException("Failed to open a server socket.", e3);
        }
    }

    public ServerSocketChannelConfig getConfig() {
        return this.config;
    }

    public InetSocketAddress getLocalAddress() {
        return (InetSocketAddress) this.socket.socket().getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteAddress() {
        return null;
    }

    public boolean isBound() {
        return isOpen() && this.socket.socket().isBound();
    }

    protected boolean setClosed() {
        return super.setClosed();
    }
}
