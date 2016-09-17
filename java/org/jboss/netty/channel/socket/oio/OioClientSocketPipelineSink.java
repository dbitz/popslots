package org.jboss.netty.channel.socket.oio;

import java.io.PushbackInputStream;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.IoWorkerRunnable;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class OioClientSocketPipelineSink extends AbstractChannelSink {
    private final Executor workerExecutor;

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

    OioClientSocketPipelineSink(Executor workerExecutor) {
        this.workerExecutor = workerExecutor;
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        OioClientSocketChannel channel = (OioClientSocketChannel) e.getChannel();
        ChannelFuture future = e.getFuture();
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent stateEvent = (ChannelStateEvent) e;
            ChannelState state = stateEvent.getState();
            Object value = stateEvent.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        OioWorker.close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        bind(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        OioWorker.close(channel, future);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value != null) {
                        connect(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        OioWorker.close(channel, future);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    OioWorker.setInterestOps(channel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            OioWorker.write(channel, future, ((MessageEvent) e).getMessage());
        }
    }

    private void bind(OioClientSocketChannel channel, ChannelFuture future, SocketAddress localAddress) {
        try {
            channel.socket.bind(localAddress);
            future.setSuccess();
            Channels.fireChannelBound((Channel) channel, channel.getLocalAddress());
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    private void connect(OioClientSocketChannel channel, ChannelFuture future, SocketAddress remoteAddress) {
        boolean bound = channel.isBound();
        future.addListener(ChannelFutureListener.CLOSE_ON_FAILURE);
        try {
            channel.socket.connect(remoteAddress, channel.getConfig().getConnectTimeoutMillis());
            channel.in = new PushbackInputStream(channel.socket.getInputStream(), 1);
            channel.out = channel.socket.getOutputStream();
            future.setSuccess();
            if (!bound) {
                Channels.fireChannelBound((Channel) channel, channel.getLocalAddress());
            }
            Channels.fireChannelConnected((Channel) channel, channel.getRemoteAddress());
            this.workerExecutor.execute(new IoWorkerRunnable(new ThreadRenamingRunnable(new OioWorker(channel), "Old I/O client worker (" + channel + ')')));
            if (!true || true) {
                return;
            }
        } catch (Throwable th) {
            if (null != null && null == null) {
                OioWorker.close(channel, future);
            }
        }
        OioWorker.close(channel, future);
    }
}
