package org.jboss.netty.channel.local;

import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelConfig;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DefaultChannelConfig;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import org.jboss.netty.util.internal.ThreadLocalBoolean;

final class DefaultLocalChannel extends AbstractChannel implements LocalChannel {
    final AtomicBoolean bound = new AtomicBoolean();
    private final ChannelConfig config;
    private final ThreadLocalBoolean delivering = new ThreadLocalBoolean();
    volatile LocalAddress localAddress;
    volatile DefaultLocalChannel pairedChannel;
    volatile LocalAddress remoteAddress;
    final Queue<MessageEvent> writeBuffer = new LinkedTransferQueue();

    DefaultLocalChannel(LocalServerChannel parent, ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink, DefaultLocalChannel pairedChannel) {
        super(parent, factory, pipeline, sink);
        this.pairedChannel = pairedChannel;
        this.config = new DefaultChannelConfig();
        Channels.fireChannelOpen((Channel) this);
    }

    public ChannelConfig getConfig() {
        return this.config;
    }

    public boolean isBound() {
        return this.bound.get() && isOpen();
    }

    public boolean isConnected() {
        return this.pairedChannel != null && isOpen();
    }

    public LocalAddress getLocalAddress() {
        return this.localAddress;
    }

    public LocalAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    void closeNow(ChannelFuture future) {
        LocalAddress localAddress = this.localAddress;
        try {
            if (setClosed()) {
                Channel pairedChannel = this.pairedChannel;
                if (pairedChannel != null) {
                    this.pairedChannel = null;
                    Channels.fireChannelDisconnected((Channel) this);
                    Channels.fireChannelUnbound((Channel) this);
                }
                Channels.fireChannelClosed((Channel) this);
                if (pairedChannel == null || !pairedChannel.setClosed()) {
                    future.setSuccess();
                    if (localAddress == null || getParent() != null) {
                    }
                } else {
                    if (pairedChannel.pairedChannel != null) {
                        pairedChannel.pairedChannel = null;
                        Channels.fireChannelDisconnected(pairedChannel);
                        Channels.fireChannelUnbound(pairedChannel);
                    }
                    Channels.fireChannelClosed(pairedChannel);
                    future.setSuccess();
                    if (localAddress == null || getParent() != null) {
                    }
                }
            }
        } finally {
            future.setSuccess();
            if (localAddress != null && getParent() == null) {
                LocalChannelRegistry.unregister(localAddress);
            }
        }
    }

    void flushWriteBuffer() {
        Channel pairedChannel = this.pairedChannel;
        MessageEvent e;
        if (pairedChannel == null) {
            Throwable cause;
            if (isOpen()) {
                cause = new NotYetConnectedException();
            } else {
                cause = new ClosedChannelException();
            }
            while (true) {
                e = (MessageEvent) this.writeBuffer.poll();
                if (e != null) {
                    e.getFuture().setFailure(cause);
                    Channels.fireExceptionCaught((Channel) this, cause);
                } else {
                    return;
                }
            }
        } else if (pairedChannel.isConnected() && !((Boolean) this.delivering.get()).booleanValue()) {
            this.delivering.set(Boolean.valueOf(true));
            while (true) {
                e = (MessageEvent) this.writeBuffer.poll();
                if (e == null) {
                    break;
                }
                try {
                    e.getFuture().setSuccess();
                    Channels.fireMessageReceived(pairedChannel, e.getMessage());
                    Channels.fireWriteComplete((Channel) this, 1);
                } finally {
                    this.delivering.set(Boolean.valueOf(false));
                }
            }
        }
    }
}
