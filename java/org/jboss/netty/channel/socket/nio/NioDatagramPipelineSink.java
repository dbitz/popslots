package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
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
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class NioDatagramPipelineSink extends AbstractChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioDatagramPipelineSink.class.desiredAssertionStatus());
    private static final AtomicInteger nextId = new AtomicInteger();
    private final int id = nextId.incrementAndGet();
    private final AtomicInteger workerIndex = new AtomicInteger();
    private final NioDatagramWorker[] workers;

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

    NioDatagramPipelineSink(Executor workerExecutor, int workerCount) {
        this.workers = new NioDatagramWorker[workerCount];
        for (int i = 0; i < this.workers.length; i++) {
            this.workers[i] = new NioDatagramWorker(this.id, i + 1, workerExecutor);
        }
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        NioDatagramChannel channel = (NioDatagramChannel) e.getChannel();
        ChannelFuture future = e.getFuture();
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent stateEvent = (ChannelStateEvent) e;
            ChannelState state = stateEvent.getState();
            Object value = stateEvent.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        channel.worker.close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        bind(channel, future, (InetSocketAddress) value);
                        return;
                    } else {
                        channel.worker.close(channel, future);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value != null) {
                        connect(channel, future, (InetSocketAddress) value);
                        return;
                    } else {
                        NioDatagramWorker.disconnect(channel, future);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    channel.worker.setInterestOps(channel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            boolean offered = channel.writeBufferQueue.offer((MessageEvent) e);
            if ($assertionsDisabled || offered) {
                channel.worker.writeFromUserCode(channel);
                return;
            }
            throw new AssertionError();
        }
    }

    private void close(NioDatagramChannel channel, ChannelFuture future) {
        try {
            channel.getDatagramChannel().socket().close();
            if (channel.setClosed()) {
                future.setSuccess();
                if (channel.isBound()) {
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

    private void bind(NioDatagramChannel channel, ChannelFuture future, InetSocketAddress address) {
        boolean bound = false;
        try {
            channel.getDatagramChannel().socket().bind(address);
            bound = true;
            future.setSuccess();
            Channels.fireChannelBound((Channel) channel, (SocketAddress) address);
            channel.worker.register(channel, null);
            if (true || 1 == null) {
                return;
            }
        } catch (Throwable th) {
            if (null == null && bound) {
                close(channel, future);
            }
        }
        close(channel, future);
    }

    private void connect(NioDatagramChannel channel, ChannelFuture future, SocketAddress remoteAddress) {
        boolean bound = channel.isBound();
        future.addListener(ChannelFutureListener.CLOSE_ON_FAILURE);
        channel.remoteAddress = null;
        NioDatagramWorker nioDatagramWorker;
        try {
            channel.getDatagramChannel().connect(remoteAddress);
            future.setSuccess();
            if (!bound) {
                Channels.fireChannelBound((Channel) channel, channel.getLocalAddress());
            }
            Channels.fireChannelConnected((Channel) channel, channel.getRemoteAddress());
            if (!bound) {
                channel.worker.register(channel, future);
            }
            if (true && !true) {
                nioDatagramWorker = channel.worker;
                nioDatagramWorker.close(channel, future);
            }
        } catch (Throwable th) {
            if (null != null && null == null) {
                channel.worker.close(channel, future);
            }
        }
    }

    NioDatagramWorker nextWorker() {
        return this.workers[Math.abs(this.workerIndex.getAndIncrement() % this.workers.length)];
    }
}
