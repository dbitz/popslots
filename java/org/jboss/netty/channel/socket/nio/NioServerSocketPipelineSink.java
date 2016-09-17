package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class NioServerSocketPipelineSink extends AbstractChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioServerSocketPipelineSink.class.desiredAssertionStatus());
    static final InternalLogger logger = InternalLoggerFactory.getInstance(NioServerSocketPipelineSink.class);
    private static final AtomicInteger nextId = new AtomicInteger();
    private final int id = nextId.incrementAndGet();
    private final AtomicInteger workerIndex = new AtomicInteger();
    private final NioWorker[] workers;

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

    private final class Boss implements Runnable {
        private final NioServerSocketChannel channel;
        private final Selector selector = Selector.open();

        Boss(NioServerSocketChannel channel) throws IOException {
            this.channel = channel;
            boolean registered = false;
            try {
                channel.socket.register(this.selector, 16);
                registered = true;
                channel.selector = this.selector;
            } finally {
                if (!registered) {
                    closeSelector();
                }
            }
        }

        public void run() {
            Thread currentThread = Thread.currentThread();
            this.channel.shutdownLock.lock();
            while (true) {
                try {
                    if (this.selector.select(1000) > 0) {
                        this.selector.selectedKeys().clear();
                    }
                    SocketChannel acceptedSocket = this.channel.socket.accept();
                    if (acceptedSocket != null) {
                        registerAcceptedChannel(acceptedSocket, currentThread);
                    }
                } catch (SocketTimeoutException e) {
                } catch (CancelledKeyException e2) {
                } catch (ClosedSelectorException e3) {
                } catch (ClosedChannelException e4) {
                    this.channel.shutdownLock.unlock();
                    closeSelector();
                    return;
                } catch (Throwable th) {
                    this.channel.shutdownLock.unlock();
                    closeSelector();
                }
            }
        }

        private void registerAcceptedChannel(SocketChannel acceptedSocket, Thread currentThread) {
            try {
                ChannelPipeline pipeline = this.channel.getConfig().getPipelineFactory().getPipeline();
                NioWorker worker = NioServerSocketPipelineSink.this.nextWorker();
                worker.register(new NioAcceptedSocketChannel(this.channel.getFactory(), pipeline, this.channel, NioServerSocketPipelineSink.this, acceptedSocket, worker, currentThread), null);
            } catch (Exception e) {
                NioServerSocketPipelineSink.logger.warn("Failed to initialize an accepted socket.", e);
                try {
                    acceptedSocket.close();
                } catch (IOException e2) {
                    NioServerSocketPipelineSink.logger.warn("Failed to close a partially accepted socket.", e2);
                }
            }
        }

        private void closeSelector() {
            this.channel.selector = null;
            try {
                this.selector.close();
            } catch (Exception e) {
                NioServerSocketPipelineSink.logger.warn("Failed to close a selector.", e);
            }
        }
    }

    private void bind(org.jboss.netty.channel.socket.nio.NioServerSocketChannel r10, org.jboss.netty.channel.ChannelFuture r11, java.net.SocketAddress r12) {
        /* JADX: method processing error */
/*
Error: java.util.NoSuchElementException
	at java.util.HashMap$HashIterator.nextEntry(HashMap.java:790)
	at java.util.HashMap$KeyIterator.next(HashMap.java:815)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.applyRemove(BlockFinallyExtract.java:535)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.extractFinally(BlockFinallyExtract.java:175)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.processExceptionHandler(BlockFinallyExtract.java:79)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.visit(BlockFinallyExtract.java:51)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:286)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:173)
*/
        /*
        r9 = this;
        r2 = 0;
        r1 = 0;
        r4 = r10.socket;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4 = r4.socket();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r5 = r10.getConfig();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r5 = r5.getBacklog();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4.bind(r12, r5);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r2 = 1;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r11.setSuccess();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4 = r10.getLocalAddress();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        org.jboss.netty.channel.Channels.fireChannelBound(r10, r4);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4 = r10.getFactory();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4 = (org.jboss.netty.channel.socket.nio.NioServerSocketChannelFactory) r4;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r0 = r4.bossExecutor;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4 = new org.jboss.netty.util.internal.IoWorkerRunnable;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r5 = new org.jboss.netty.util.ThreadRenamingRunnable;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r6 = new org.jboss.netty.channel.socket.nio.NioServerSocketPipelineSink$Boss;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r6.<init>(r10);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7.<init>();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r8 = "New I/O server boss #";	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r8 = r9.id;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r8 = " (";	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = r7.append(r10);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r8 = 41;	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r5.<init>(r6, r7);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r4.<init>(r5);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r0.execute(r4);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        r1 = 1;
        if (r1 != 0) goto L_0x0067;
    L_0x0062:
        if (r2 == 0) goto L_0x0067;
    L_0x0064:
        r9.close(r10, r11);
    L_0x0067:
        return;
    L_0x0068:
        r3 = move-exception;
        r11.setFailure(r3);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        org.jboss.netty.channel.Channels.fireExceptionCaught(r10, r3);	 Catch:{ Throwable -> 0x0068, all -> 0x0077 }
        if (r1 != 0) goto L_0x0067;
    L_0x0071:
        if (r2 == 0) goto L_0x0067;
    L_0x0073:
        r9.close(r10, r11);
        goto L_0x0067;
    L_0x0077:
        r4 = move-exception;
        if (r1 != 0) goto L_0x007f;
    L_0x007a:
        if (r2 == 0) goto L_0x007f;
    L_0x007c:
        r9.close(r10, r11);
    L_0x007f:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioServerSocketPipelineSink.bind(org.jboss.netty.channel.socket.nio.NioServerSocketChannel, org.jboss.netty.channel.ChannelFuture, java.net.SocketAddress):void");
    }

    NioServerSocketPipelineSink(Executor workerExecutor, int workerCount) {
        this.workers = new NioWorker[workerCount];
        for (int i = 0; i < this.workers.length; i++) {
            this.workers[i] = new NioWorker(this.id, i + 1, workerExecutor);
        }
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        Channel channel = e.getChannel();
        if (channel instanceof NioServerSocketChannel) {
            handleServerSocket(e);
        } else if (channel instanceof NioSocketChannel) {
            handleAcceptedSocket(e);
        }
    }

    private void handleServerSocket(ChannelEvent e) {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            NioServerSocketChannel channel = (NioServerSocketChannel) event.getChannel();
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
                        bind(channel, future, (SocketAddress) value);
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

    private void handleAcceptedSocket(ChannelEvent e) {
        NioSocketChannel channel;
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            channel = (NioSocketChannel) event.getChannel();
            ChannelFuture future = event.getFuture();
            ChannelState state = event.getState();
            Object value = event.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        channel.worker.close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value == null) {
                        channel.worker.close(channel, future);
                        return;
                    }
                    return;
                case Base64.DONT_GUNZIP /*4*/:
                    channel.worker.setInterestOps(channel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            MessageEvent event2 = (MessageEvent) e;
            channel = (NioSocketChannel) event2.getChannel();
            boolean offered = channel.writeBuffer.offer(event2);
            if ($assertionsDisabled || offered) {
                channel.worker.writeFromUserCode(channel);
                return;
            }
            throw new AssertionError();
        }
    }

    private void close(NioServerSocketChannel channel, ChannelFuture future) {
        boolean bound = channel.isBound();
        try {
            if (channel.socket.isOpen()) {
                channel.socket.close();
                Selector selector = channel.selector;
                if (selector != null) {
                    selector.wakeup();
                }
            }
            channel.shutdownLock.lock();
            if (channel.setClosed()) {
                future.setSuccess();
                if (bound) {
                    Channels.fireChannelUnbound((Channel) channel);
                }
                Channels.fireChannelClosed((Channel) channel);
            } else {
                future.setSuccess();
            }
            channel.shutdownLock.unlock();
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    NioWorker nextWorker() {
        return this.workers[Math.abs(this.workerIndex.getAndIncrement() % this.workers.length)];
    }
}
