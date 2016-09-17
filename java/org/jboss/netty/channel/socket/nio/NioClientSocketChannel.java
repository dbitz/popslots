package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

final class NioClientSocketChannel extends NioSocketChannel {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(NioClientSocketChannel.class);
    volatile boolean boundManually;
    long connectDeadlineNanos;
    volatile ChannelFuture connectFuture;

    private static SocketChannel newSocket() {
        try {
            SocketChannel socket = SocketChannel.open();
            try {
                socket.configureBlocking(false);
                if (!true) {
                    try {
                        socket.close();
                    } catch (IOException e) {
                        logger.warn("Failed to close a partially initialized socket.", e);
                    }
                }
                return socket;
            } catch (IOException e2) {
                throw new ChannelException("Failed to enter non-blocking mode.", e2);
            } catch (Throwable th) {
                if (!false) {
                    try {
                        socket.close();
                    } catch (IOException e22) {
                        logger.warn("Failed to close a partially initialized socket.", e22);
                    }
                }
            }
        } catch (IOException e222) {
            throw new ChannelException("Failed to open a socket.", e222);
        }
    }

    NioClientSocketChannel(ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink, NioWorker worker) {
        super(null, factory, pipeline, sink, newSocket(), worker);
        Channels.fireChannelOpen((Channel) this);
    }
}
