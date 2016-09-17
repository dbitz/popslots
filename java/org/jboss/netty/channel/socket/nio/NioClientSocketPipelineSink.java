package org.jboss.netty.channel.socket.nio;

import java.net.ConnectException;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.IoWorkerRunnable;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class NioClientSocketPipelineSink extends AbstractChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioClientSocketPipelineSink.class.desiredAssertionStatus());
    static final InternalLogger logger = InternalLoggerFactory.getInstance(NioClientSocketPipelineSink.class);
    private static final AtomicInteger nextId = new AtomicInteger();
    private final Boss boss = new Boss();
    final Executor bossExecutor;
    final int id = nextId.incrementAndGet();
    private final AtomicInteger workerIndex = new AtomicInteger();
    private final NioWorker[] workers;

    static /* synthetic */ class AnonymousClass2 {
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

    private final class Boss implements Runnable {
        static final /* synthetic */ boolean $assertionsDisabled = (!NioClientSocketPipelineSink.class.desiredAssertionStatus());
        private final Queue<Runnable> registerTaskQueue = new LinkedTransferQueue();
        volatile Selector selector;
        private final Object startStopLock = new Object();
        private boolean started;
        private final AtomicBoolean wakenUp = new AtomicBoolean();

        Boss() {
        }

        void register(NioClientSocketChannel channel) {
            Selector selector;
            Runnable registerTask = new RegisterTask(this, channel);
            synchronized (this.startStopLock) {
                if (this.started) {
                    selector = this.selector;
                } else {
                    try {
                        selector = Selector.open();
                        this.selector = selector;
                        NioClientSocketPipelineSink.this.bossExecutor.execute(new IoWorkerRunnable(new ThreadRenamingRunnable(this, "New I/O client boss #" + NioClientSocketPipelineSink.this.id)));
                        if (!true) {
                            try {
                                selector.close();
                            } catch (Throwable t) {
                                NioClientSocketPipelineSink.logger.warn("Failed to close a selector.", t);
                            }
                            selector = null;
                            this.selector = null;
                        }
                    } catch (Throwable t2) {
                        ChannelException channelException = new ChannelException("Failed to create a selector.", t2);
                    }
                }
                if ($assertionsDisabled || (selector != null && selector.isOpen())) {
                    this.started = true;
                    boolean offered = this.registerTaskQueue.offer(registerTask);
                    if ($assertionsDisabled || offered) {
                    } else {
                        throw new AssertionError();
                    }
                }
                throw new AssertionError();
            }
            if (this.wakenUp.compareAndSet(false, true)) {
                selector.wakeup();
                return;
            }
            return;
            this.selector = null;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            r15 = this;
            r14 = 0;
            r7 = 0;
            r6 = r15.selector;
            r4 = java.lang.System.nanoTime();
        L_0x0008:
            r9 = r15.wakenUp;
            r9.set(r14);
            r10 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
            r3 = r6.select(r10);	 Catch:{ Throwable -> 0x008f }
            r9 = r15.wakenUp;	 Catch:{ Throwable -> 0x008f }
            r9 = r9.get();	 Catch:{ Throwable -> 0x008f }
            if (r9 == 0) goto L_0x001e;
        L_0x001b:
            r6.wakeup();	 Catch:{ Throwable -> 0x008f }
        L_0x001e:
            r15.processRegisterTaskQueue();	 Catch:{ Throwable -> 0x008f }
            if (r3 <= 0) goto L_0x002a;
        L_0x0023:
            r9 = r6.selectedKeys();	 Catch:{ Throwable -> 0x008f }
            r15.processSelectedKeys(r9);	 Catch:{ Throwable -> 0x008f }
        L_0x002a:
            r0 = java.lang.System.nanoTime();	 Catch:{ Throwable -> 0x008f }
            r10 = r0 - r4;
            r12 = 500000000; // 0x1dcd6500 float:5.436748E-21 double:2.47032823E-315;
            r9 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
            if (r9 < 0) goto L_0x003f;
        L_0x0037:
            r4 = r0;
            r9 = r6.keys();	 Catch:{ Throwable -> 0x008f }
            r15.processConnectTimeout(r9, r0);	 Catch:{ Throwable -> 0x008f }
        L_0x003f:
            r9 = r6.keys();	 Catch:{ Throwable -> 0x008f }
            r9 = r9.isEmpty();	 Catch:{ Throwable -> 0x008f }
            if (r9 == 0) goto L_0x00ae;
        L_0x0049:
            if (r7 != 0) goto L_0x005f;
        L_0x004b:
            r9 = org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.this;	 Catch:{ Throwable -> 0x008f }
            r9 = r9.bossExecutor;	 Catch:{ Throwable -> 0x008f }
            r9 = r9 instanceof java.util.concurrent.ExecutorService;	 Catch:{ Throwable -> 0x008f }
            if (r9 == 0) goto L_0x00ab;
        L_0x0053:
            r9 = org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.this;	 Catch:{ Throwable -> 0x008f }
            r9 = r9.bossExecutor;	 Catch:{ Throwable -> 0x008f }
            r9 = (java.util.concurrent.ExecutorService) r9;	 Catch:{ Throwable -> 0x008f }
            r9 = r9.isShutdown();	 Catch:{ Throwable -> 0x008f }
            if (r9 == 0) goto L_0x00ab;
        L_0x005f:
            r10 = r15.startStopLock;	 Catch:{ Throwable -> 0x008f }
            monitor-enter(r10);	 Catch:{ Throwable -> 0x008f }
            r9 = r15.registerTaskQueue;	 Catch:{ all -> 0x008c }
            r9 = r9.isEmpty();	 Catch:{ all -> 0x008c }
            if (r9 == 0) goto L_0x00a7;
        L_0x006a:
            r9 = r6.keys();	 Catch:{ all -> 0x008c }
            r9 = r9.isEmpty();	 Catch:{ all -> 0x008c }
            if (r9 == 0) goto L_0x00a7;
        L_0x0074:
            r9 = 0;
            r15.started = r9;	 Catch:{ all -> 0x008c }
            r6.close();	 Catch:{ IOException -> 0x007f }
            r9 = 0;
            r15.selector = r9;	 Catch:{ all -> 0x008c }
        L_0x007d:
            monitor-exit(r10);	 Catch:{ all -> 0x008c }
            return;
        L_0x007f:
            r2 = move-exception;
            r9 = org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.logger;	 Catch:{ all -> 0x00a2 }
            r11 = "Failed to close a selector.";
            r9.warn(r11, r2);	 Catch:{ all -> 0x00a2 }
            r9 = 0;
            r15.selector = r9;	 Catch:{ all -> 0x008c }
            goto L_0x007d;
        L_0x008c:
            r9 = move-exception;
            monitor-exit(r10);	 Catch:{ all -> 0x008c }
            throw r9;	 Catch:{ Throwable -> 0x008f }
        L_0x008f:
            r8 = move-exception;
            r9 = org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.logger;
            r10 = "Unexpected exception in the selector loop.";
            r9.warn(r10, r8);
            r10 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
            java.lang.Thread.sleep(r10);	 Catch:{ InterruptedException -> 0x009f }
            goto L_0x0008;
        L_0x009f:
            r9 = move-exception;
            goto L_0x0008;
        L_0x00a2:
            r9 = move-exception;
            r11 = 0;
            r15.selector = r11;	 Catch:{ all -> 0x008c }
            throw r9;	 Catch:{ all -> 0x008c }
        L_0x00a7:
            r7 = 0;
            monitor-exit(r10);	 Catch:{ all -> 0x008c }
            goto L_0x0008;
        L_0x00ab:
            r7 = 1;
            goto L_0x0008;
        L_0x00ae:
            r7 = 0;
            goto L_0x0008;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.Boss.run():void");
        }

        private void processRegisterTaskQueue() {
            while (true) {
                Runnable task = (Runnable) this.registerTaskQueue.poll();
                if (task != null) {
                    task.run();
                } else {
                    return;
                }
            }
        }

        private void processSelectedKeys(Set<SelectionKey> selectedKeys) {
            Iterator<SelectionKey> i = selectedKeys.iterator();
            while (i.hasNext()) {
                SelectionKey k = (SelectionKey) i.next();
                i.remove();
                if (!k.isValid()) {
                    close(k);
                } else if (k.isConnectable()) {
                    connect(k);
                }
            }
        }

        private void processConnectTimeout(Set<SelectionKey> keys, long currentTimeNanos) {
            ConnectException cause = null;
            for (SelectionKey k : keys) {
                if (k.isValid()) {
                    Channel ch = (NioClientSocketChannel) k.attachment();
                    if (ch.connectDeadlineNanos > 0 && currentTimeNanos >= ch.connectDeadlineNanos) {
                        if (cause == null) {
                            cause = new ConnectException("connection timed out");
                        }
                        ch.connectFuture.setFailure(cause);
                        Channels.fireExceptionCaught(ch, (Throwable) cause);
                        ch.worker.close(ch, Channels.succeededFuture(ch));
                    }
                }
            }
        }

        private void connect(SelectionKey k) {
            Channel ch = (NioClientSocketChannel) k.attachment();
            try {
                if (ch.socket.finishConnect()) {
                    k.cancel();
                    ch.worker.register(ch, ch.connectFuture);
                }
            } catch (Throwable t) {
                ch.connectFuture.setFailure(t);
                Channels.fireExceptionCaught(ch, t);
                ch.worker.close(ch, Channels.succeededFuture(ch));
            }
        }

        private void close(SelectionKey k) {
            NioClientSocketChannel ch = (NioClientSocketChannel) k.attachment();
            ch.worker.close(ch, Channels.succeededFuture(ch));
        }
    }

    private static final class RegisterTask implements Runnable {
        private final Boss boss;
        private final NioClientSocketChannel channel;

        RegisterTask(Boss boss, NioClientSocketChannel channel) {
            this.boss = boss;
            this.channel = channel;
        }

        public void run() {
            try {
                this.channel.socket.register(this.boss.selector, 8, this.channel);
            } catch (ClosedChannelException e) {
                this.channel.worker.close(this.channel, Channels.succeededFuture(this.channel));
            }
            int connectTimeout = this.channel.getConfig().getConnectTimeoutMillis();
            if (connectTimeout > 0) {
                this.channel.connectDeadlineNanos = System.nanoTime() + (((long) connectTimeout) * 1000000);
            }
        }
    }

    NioClientSocketPipelineSink(Executor bossExecutor, Executor workerExecutor, int workerCount) {
        this.bossExecutor = bossExecutor;
        this.workers = new NioWorker[workerCount];
        for (int i = 0; i < this.workers.length; i++) {
            this.workers[i] = new NioWorker(this.id, i + 1, workerExecutor);
        }
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            NioClientSocketChannel channel = (NioClientSocketChannel) event.getChannel();
            ChannelFuture future = event.getFuture();
            ChannelState state = event.getState();
            Object value = event.getValue();
            switch (AnonymousClass2.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        channel.worker.close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        bind(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        channel.worker.close(channel, future);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value != null) {
                        connect(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        channel.worker.close(channel, future);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    channel.worker.setInterestOps(channel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            MessageEvent event2 = (MessageEvent) e;
            NioSocketChannel channel2 = (NioSocketChannel) event2.getChannel();
            boolean offered = channel2.writeBuffer.offer(event2);
            if ($assertionsDisabled || offered) {
                channel2.worker.writeFromUserCode(channel2);
                return;
            }
            throw new AssertionError();
        }
    }

    private void bind(NioClientSocketChannel channel, ChannelFuture future, SocketAddress localAddress) {
        try {
            channel.socket.socket().bind(localAddress);
            channel.boundManually = true;
            channel.setBound();
            future.setSuccess();
            Channels.fireChannelBound((Channel) channel, channel.getLocalAddress());
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    private void connect(NioClientSocketChannel channel, final ChannelFuture cf, SocketAddress remoteAddress) {
        try {
            if (channel.socket.connect(remoteAddress)) {
                channel.worker.register(channel, cf);
                return;
            }
            channel.getCloseFuture().addListener(new ChannelFutureListener() {
                public void operationComplete(ChannelFuture f) throws Exception {
                    if (!cf.isDone()) {
                        cf.setFailure(new ClosedChannelException());
                    }
                }
            });
            cf.addListener(ChannelFutureListener.CLOSE_ON_FAILURE);
            channel.connectFuture = cf;
            this.boss.register(channel);
        } catch (Throwable t) {
            cf.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
            channel.worker.close(channel, Channels.succeededFuture(channel));
        }
    }

    NioWorker nextWorker() {
        return this.workers[Math.abs(this.workerIndex.getAndIncrement() % this.workers.length)];
    }
}
