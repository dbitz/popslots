package org.jboss.netty.channel.local;

import java.net.SocketAddress;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

final class LocalServerChannelSink extends AbstractChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!LocalServerChannelSink.class.desiredAssertionStatus());

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    LocalServerChannelSink() {
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        Channel channel = e.getChannel();
        if (channel instanceof DefaultLocalServerChannel) {
            handleServerChannel(e);
        } else if (channel instanceof DefaultLocalChannel) {
            handleAcceptedChannel(e);
        }
    }

    private void handleServerChannel(ChannelEvent e) {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            DefaultLocalServerChannel channel = (DefaultLocalServerChannel) event.getChannel();
            ChannelFuture future = event.getFuture();
            ChannelState state = event.getState();
            Object value = event.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        bind(channel, future, (LocalAddress) value);
                        return;
                    } else {
                        close(channel, future);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    private void handleAcceptedChannel(ChannelEvent e) {
        DefaultLocalChannel channel;
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            channel = (DefaultLocalChannel) event.getChannel();
            ChannelFuture future = event.getFuture();
            ChannelState state = event.getState();
            Object value = event.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        channel.closeNow(future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value == null) {
                        channel.closeNow(future);
                        return;
                    }
                    return;
                case Base64.DONT_GUNZIP /*4*/:
                    future.setSuccess();
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            MessageEvent event2 = (MessageEvent) e;
            channel = (DefaultLocalChannel) event2.getChannel();
            boolean offered = channel.writeBuffer.offer(event2);
            if ($assertionsDisabled || offered) {
                channel.flushWriteBuffer();
                return;
            }
            throw new AssertionError();
        }
    }

    private void bind(DefaultLocalServerChannel channel, ChannelFuture future, LocalAddress localAddress) {
        try {
            if (!LocalChannelRegistry.register(localAddress, channel)) {
                throw new ChannelException("address already in use: " + localAddress);
            } else if (channel.bound.compareAndSet(false, true)) {
                channel.localAddress = localAddress;
                future.setSuccess();
                Channels.fireChannelBound((Channel) channel, (SocketAddress) localAddress);
            } else {
                throw new ChannelException("already bound");
            }
        } catch (Throwable t) {
            LocalChannelRegistry.unregister(localAddress);
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    private void close(DefaultLocalServerChannel channel, ChannelFuture future) {
        try {
            if (channel.setClosed()) {
                future.setSuccess();
                LocalAddress localAddress = channel.localAddress;
                if (channel.bound.compareAndSet(true, false)) {
                    channel.localAddress = null;
                    LocalChannelRegistry.unregister(localAddress);
                    Channels.fireChannelUnbound((Channel) channel);
                }
                Channels.fireChannelClosed((Channel) channel);
                return;
            }
            future.setSuccess();
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }
}
