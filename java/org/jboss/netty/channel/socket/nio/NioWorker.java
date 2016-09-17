package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.IoWorkerRunnable;
import org.jboss.netty.util.internal.LinkedTransferQueue;

class NioWorker implements Runnable {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioWorker.class.desiredAssertionStatus() ? true : $assertionsDisabled);
    static final int CLEANUP_INTERVAL = 256;
    private static final int CONSTRAINT_LEVEL = NioProviderMetadata.CONSTRAINT_LEVEL;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(NioWorker.class);
    private final int bossId;
    private volatile int cancelledKeys;
    private final Executor executor;
    private final int id;
    private final SocketReceiveBufferPool recvBufferPool = new SocketReceiveBufferPool();
    private final Queue<Runnable> registerTaskQueue = new LinkedTransferQueue();
    volatile Selector selector;
    private final ReadWriteLock selectorGuard = new ReentrantReadWriteLock();
    private final SocketSendBufferPool sendBufferPool = new SocketSendBufferPool();
    private final Object startStopLock = new Object();
    private boolean started;
    private volatile Thread thread;
    private final AtomicBoolean wakenUp = new AtomicBoolean();
    private final Queue<Runnable> writeTaskQueue = new LinkedTransferQueue();

    private final class RegisterTask implements Runnable {
        private final NioSocketChannel channel;
        private final ChannelFuture future;
        private final boolean server;

        RegisterTask(NioSocketChannel channel, ChannelFuture future, boolean server) {
            this.channel = channel;
            this.future = future;
            this.server = server;
        }

        public void run() {
            SocketAddress localAddress = this.channel.getLocalAddress();
            SocketAddress remoteAddress = this.channel.getRemoteAddress();
            if (localAddress == null || remoteAddress == null) {
                if (this.future != null) {
                    this.future.setFailure(new ClosedChannelException());
                }
                NioWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                return;
            }
            try {
                if (this.server) {
                    this.channel.socket.configureBlocking(NioWorker.$assertionsDisabled);
                }
                synchronized (this.channel.interestOpsLock) {
                    this.channel.socket.register(NioWorker.this.selector, this.channel.getRawInterestOps(), this.channel);
                }
                if (this.future != null) {
                    this.channel.setConnected();
                    this.future.setSuccess();
                }
            } catch (IOException e) {
                if (this.future != null) {
                    this.future.setFailure(e);
                }
                NioWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                if (!(e instanceof ClosedChannelException)) {
                    throw new ChannelException("Failed to register a socket to the selector.", e);
                }
            }
            if (!this.server) {
                if (!((NioClientSocketChannel) this.channel).boundManually) {
                    Channels.fireChannelBound(this.channel, localAddress);
                }
                Channels.fireChannelConnected(this.channel, remoteAddress);
            }
        }
    }

    NioWorker(int bossId, int id, Executor executor) {
        this.bossId = bossId;
        this.id = id;
        this.executor = executor;
    }

    void register(NioSocketChannel channel, ChannelFuture future) {
        Selector selector;
        boolean server = !(channel instanceof NioClientSocketChannel) ? true : $assertionsDisabled;
        Runnable registerTask = new RegisterTask(channel, future, server);
        synchronized (this.startStopLock) {
            if (this.started) {
                selector = this.selector;
            } else {
                try {
                    selector = Selector.open();
                    this.selector = selector;
                    this.executor.execute(new IoWorkerRunnable(new ThreadRenamingRunnable(this, (server ? "New I/O server worker #" : "New I/O client worker #") + this.bossId + '-' + this.id)));
                    if (!true) {
                        try {
                            selector.close();
                        } catch (Throwable t) {
                            logger.warn("Failed to close a selector.", t);
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
        if (this.wakenUp.compareAndSet($assertionsDisabled, true)) {
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
        r8 = this;
        r7 = 0;
        r4 = java.lang.Thread.currentThread();
        r8.thread = r4;
        r2 = 0;
        r1 = r8.selector;
    L_0x000a:
        r4 = r8.wakenUp;
        r4.set(r7);
        r4 = CONSTRAINT_LEVEL;
        if (r4 == 0) goto L_0x0025;
    L_0x0013:
        r4 = r8.selectorGuard;
        r4 = r4.writeLock();
        r4.lock();
        r4 = r8.selectorGuard;
        r4 = r4.writeLock();
        r4.unlock();
    L_0x0025:
        org.jboss.netty.channel.socket.nio.SelectorUtil.select(r1);	 Catch:{ Throwable -> 0x008f }
        r4 = r8.wakenUp;	 Catch:{ Throwable -> 0x008f }
        r4 = r4.get();	 Catch:{ Throwable -> 0x008f }
        if (r4 == 0) goto L_0x0033;
    L_0x0030:
        r1.wakeup();	 Catch:{ Throwable -> 0x008f }
    L_0x0033:
        r4 = 0;
        r8.cancelledKeys = r4;	 Catch:{ Throwable -> 0x008f }
        r8.processRegisterTaskQueue();	 Catch:{ Throwable -> 0x008f }
        r8.processWriteTaskQueue();	 Catch:{ Throwable -> 0x008f }
        r4 = r1.selectedKeys();	 Catch:{ Throwable -> 0x008f }
        r8.processSelectedKeys(r4);	 Catch:{ Throwable -> 0x008f }
        r4 = r1.keys();	 Catch:{ Throwable -> 0x008f }
        r4 = r4.isEmpty();	 Catch:{ Throwable -> 0x008f }
        if (r4 == 0) goto L_0x00ae;
    L_0x004d:
        if (r2 != 0) goto L_0x005f;
    L_0x004f:
        r4 = r8.executor;	 Catch:{ Throwable -> 0x008f }
        r4 = r4 instanceof java.util.concurrent.ExecutorService;	 Catch:{ Throwable -> 0x008f }
        if (r4 == 0) goto L_0x00ab;
    L_0x0055:
        r4 = r8.executor;	 Catch:{ Throwable -> 0x008f }
        r4 = (java.util.concurrent.ExecutorService) r4;	 Catch:{ Throwable -> 0x008f }
        r4 = r4.isShutdown();	 Catch:{ Throwable -> 0x008f }
        if (r4 == 0) goto L_0x00ab;
    L_0x005f:
        r5 = r8.startStopLock;	 Catch:{ Throwable -> 0x008f }
        monitor-enter(r5);	 Catch:{ Throwable -> 0x008f }
        r4 = r8.registerTaskQueue;	 Catch:{ all -> 0x008c }
        r4 = r4.isEmpty();	 Catch:{ all -> 0x008c }
        if (r4 == 0) goto L_0x00a7;
    L_0x006a:
        r4 = r1.keys();	 Catch:{ all -> 0x008c }
        r4 = r4.isEmpty();	 Catch:{ all -> 0x008c }
        if (r4 == 0) goto L_0x00a7;
    L_0x0074:
        r4 = 0;
        r8.started = r4;	 Catch:{ all -> 0x008c }
        r1.close();	 Catch:{ IOException -> 0x007f }
        r4 = 0;
        r8.selector = r4;	 Catch:{ all -> 0x008c }
    L_0x007d:
        monitor-exit(r5);	 Catch:{ all -> 0x008c }
        return;
    L_0x007f:
        r0 = move-exception;
        r4 = logger;	 Catch:{ all -> 0x00a2 }
        r6 = "Failed to close a selector.";
        r4.warn(r6, r0);	 Catch:{ all -> 0x00a2 }
        r4 = 0;
        r8.selector = r4;	 Catch:{ all -> 0x008c }
        goto L_0x007d;
    L_0x008c:
        r4 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x008c }
        throw r4;	 Catch:{ Throwable -> 0x008f }
    L_0x008f:
        r3 = move-exception;
        r4 = logger;
        r5 = "Unexpected exception in the selector loop.";
        r4.warn(r5, r3);
        r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        java.lang.Thread.sleep(r4);	 Catch:{ InterruptedException -> 0x009f }
        goto L_0x000a;
    L_0x009f:
        r4 = move-exception;
        goto L_0x000a;
    L_0x00a2:
        r4 = move-exception;
        r6 = 0;
        r8.selector = r6;	 Catch:{ all -> 0x008c }
        throw r4;	 Catch:{ all -> 0x008c }
    L_0x00a7:
        r2 = 0;
        monitor-exit(r5);	 Catch:{ all -> 0x008c }
        goto L_0x000a;
    L_0x00ab:
        r2 = 1;
        goto L_0x000a;
    L_0x00ae:
        r2 = 0;
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioWorker.run():void");
    }

    private void processRegisterTaskQueue() throws IOException {
        while (true) {
            Runnable task = (Runnable) this.registerTaskQueue.poll();
            if (task != null) {
                task.run();
                cleanUpCancelledKeys();
            } else {
                return;
            }
        }
    }

    private void processWriteTaskQueue() throws IOException {
        while (true) {
            Runnable task = (Runnable) this.writeTaskQueue.poll();
            if (task != null) {
                task.run();
                cleanUpCancelledKeys();
            } else {
                return;
            }
        }
    }

    private void processSelectedKeys(Set<SelectionKey> selectedKeys) throws IOException {
        Iterator<SelectionKey> i = selectedKeys.iterator();
        while (i.hasNext()) {
            SelectionKey k = (SelectionKey) i.next();
            i.remove();
            try {
                int readyOps = k.readyOps();
                if (((readyOps & 1) == 0 && readyOps != 0) || read(k)) {
                    if ((readyOps & 4) != 0) {
                        writeFromSelectorLoop(k);
                    }
                    if (cleanUpCancelledKeys()) {
                        return;
                    }
                }
            } catch (CancelledKeyException e) {
                close(k);
            }
        }
    }

    private boolean cleanUpCancelledKeys() throws IOException {
        if (this.cancelledKeys < CLEANUP_INTERVAL) {
            return $assertionsDisabled;
        }
        this.cancelledKeys = 0;
        this.selector.selectNow();
        return true;
    }

    private boolean read(SelectionKey k) {
        SocketChannel ch = (SocketChannel) k.channel();
        Channel channel = (NioSocketChannel) k.attachment();
        ReceiveBufferSizePredictor predictor = channel.getConfig().getReceiveBufferSizePredictor();
        int ret = 0;
        int readBytes = 0;
        boolean failure = true;
        ByteBuffer bb = this.recvBufferPool.acquire(predictor.nextReceiveBufferSize());
        do {
            try {
                ret = ch.read(bb);
                if (ret <= 0) {
                    break;
                }
                readBytes += ret;
            } catch (ClosedChannelException e) {
            } catch (Throwable t) {
                Channels.fireExceptionCaught(channel, t);
            }
        } while (bb.hasRemaining());
        failure = $assertionsDisabled;
        if (readBytes > 0) {
            bb.flip();
            Object buffer = channel.getConfig().getBufferFactory().getBuffer(readBytes);
            buffer.setBytes(0, bb);
            buffer.writerIndex(readBytes);
            this.recvBufferPool.release(bb);
            predictor.previousReceiveBufferSize(readBytes);
            Channels.fireMessageReceived(channel, buffer);
        } else {
            this.recvBufferPool.release(bb);
        }
        if (ret >= 0 && !failure) {
            return true;
        }
        close(channel, Channels.succeededFuture(channel));
        return $assertionsDisabled;
    }

    private void close(SelectionKey k) {
        NioSocketChannel ch = (NioSocketChannel) k.attachment();
        close(ch, Channels.succeededFuture(ch));
    }

    void writeFromUserCode(NioSocketChannel channel) {
        if (!channel.isConnected()) {
            cleanUpWriteBuffer(channel);
        } else if (!scheduleWriteIfNecessary(channel) && !channel.writeSuspended && !channel.inWriteNowLoop) {
            write0(channel);
        }
    }

    void writeFromTaskLoop(NioSocketChannel ch) {
        if (!ch.writeSuspended) {
            write0(ch);
        }
    }

    void writeFromSelectorLoop(SelectionKey k) {
        NioSocketChannel ch = (NioSocketChannel) k.attachment();
        ch.writeSuspended = $assertionsDisabled;
        write0(ch);
    }

    private boolean scheduleWriteIfNecessary(NioSocketChannel channel) {
        Thread currentThread = Thread.currentThread();
        if (currentThread == this.thread) {
            return $assertionsDisabled;
        }
        if (channel.writeTaskInTaskQueue.compareAndSet($assertionsDisabled, true)) {
            boolean offered = this.writeTaskQueue.offer(channel.writeTask);
            if (!($assertionsDisabled || offered)) {
                throw new AssertionError();
            }
        }
        if ((channel instanceof NioAcceptedSocketChannel) && ((NioAcceptedSocketChannel) channel).bossThread == currentThread) {
            return true;
        }
        Selector workerSelector = this.selector;
        if (workerSelector == null || !this.wakenUp.compareAndSet($assertionsDisabled, true)) {
            return true;
        }
        workerSelector.wakeup();
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void write0(org.jboss.netty.channel.socket.nio.NioSocketChannel r26) {
        /*
        r25 = this;
        r16 = 1;
        r4 = 0;
        r17 = 0;
        r22 = 0;
        r0 = r25;
        r0 = r0.sendBufferPool;
        r18 = r0;
        r0 = r26;
        r13 = r0.socket;
        r0 = r26;
        r0 = r0.writeBuffer;
        r20 = r0;
        r8 = r26.getConfig();
        r21 = r8.getWriteSpinCount();
        r0 = r26;
        r0 = r0.writeLock;
        r24 = r0;
        monitor-enter(r24);
        r8 = 1;
        r0 = r26;
        r0.inWriteNowLoop = r8;	 Catch:{ all -> 0x00ef }
    L_0x002b:
        r0 = r26;
        r14 = r0.currentWriteEvent;	 Catch:{ all -> 0x00ef }
        if (r14 != 0) goto L_0x0098;
    L_0x0031:
        r14 = r20.poll();	 Catch:{ all -> 0x00ef }
        r14 = (org.jboss.netty.channel.MessageEvent) r14;	 Catch:{ all -> 0x00ef }
        r0 = r26;
        r0.currentWriteEvent = r14;	 Catch:{ all -> 0x00ef }
        if (r14 != 0) goto L_0x0059;
    L_0x003d:
        r17 = 1;
        r8 = 0;
        r0 = r26;
        r0.writeSuspended = r8;	 Catch:{ all -> 0x00ef }
    L_0x0044:
        r8 = 0;
        r0 = r26;
        r0.inWriteNowLoop = r8;	 Catch:{ all -> 0x00ef }
        monitor-exit(r24);	 Catch:{ all -> 0x00ef }
        r0 = r26;
        r1 = r22;
        org.jboss.netty.channel.Channels.fireWriteComplete(r0, r1);
        if (r16 == 0) goto L_0x0058;
    L_0x0053:
        if (r4 == 0) goto L_0x00f2;
    L_0x0055:
        r25.setOpWrite(r26);
    L_0x0058:
        return;
    L_0x0059:
        r8 = r14.getMessage();	 Catch:{ all -> 0x00ef }
        r0 = r18;
        r12 = r0.acquire(r8);	 Catch:{ all -> 0x00ef }
        r0 = r26;
        r0.currentWriteBuffer = r12;	 Catch:{ all -> 0x00ef }
    L_0x0067:
        r5 = r14.getFuture();	 Catch:{ all -> 0x00ef }
        r6 = 0;
        r15 = r21;
    L_0x006f:
        if (r15 <= 0) goto L_0x007d;
    L_0x0071:
        r6 = r12.transferTo(r13);	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r8 = 0;
        r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x009d;
    L_0x007b:
        r22 = r22 + r6;
    L_0x007d:
        r8 = r12.finished();	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        if (r8 == 0) goto L_0x00a6;
    L_0x0083:
        r12.release();	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r8 = 0;
        r0 = r26;
        r0.currentWriteEvent = r8;	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r8 = 0;
        r0 = r26;
        r0.currentWriteBuffer = r8;	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r14 = 0;
        r12 = 0;
        r5.setSuccess();	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        goto L_0x002b;
    L_0x0096:
        r8 = move-exception;
        goto L_0x002b;
    L_0x0098:
        r0 = r26;
        r12 = r0.currentWriteBuffer;	 Catch:{ all -> 0x00ef }
        goto L_0x0067;
    L_0x009d:
        r8 = r12.finished();	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        if (r8 != 0) goto L_0x007d;
    L_0x00a3:
        r15 = r15 + -1;
        goto L_0x006f;
    L_0x00a6:
        r4 = 1;
        r8 = 1;
        r0 = r26;
        r0.writeSuspended = r8;	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r8 = 0;
        r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r8 <= 0) goto L_0x0044;
    L_0x00b2:
        r8 = r12.writtenBytes();	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r10 = r12.totalBytes();	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        r5.setProgress(r6, r8, r10);	 Catch:{ AsynchronousCloseException -> 0x0096, Throwable -> 0x00be }
        goto L_0x0044;
    L_0x00be:
        r19 = move-exception;
        r12.release();	 Catch:{ all -> 0x00ef }
        r8 = 0;
        r0 = r26;
        r0.currentWriteEvent = r8;	 Catch:{ all -> 0x00ef }
        r8 = 0;
        r0 = r26;
        r0.currentWriteBuffer = r8;	 Catch:{ all -> 0x00ef }
        r12 = 0;
        r14 = 0;
        r0 = r19;
        r5.setFailure(r0);	 Catch:{ all -> 0x00ef }
        r0 = r26;
        r1 = r19;
        org.jboss.netty.channel.Channels.fireExceptionCaught(r0, r1);	 Catch:{ all -> 0x00ef }
        r0 = r19;
        r8 = r0 instanceof java.io.IOException;	 Catch:{ all -> 0x00ef }
        if (r8 == 0) goto L_0x002b;
    L_0x00e0:
        r16 = 0;
        r8 = org.jboss.netty.channel.Channels.succeededFuture(r26);	 Catch:{ all -> 0x00ef }
        r0 = r25;
        r1 = r26;
        r0.close(r1, r8);	 Catch:{ all -> 0x00ef }
        goto L_0x002b;
    L_0x00ef:
        r8 = move-exception;
        monitor-exit(r24);	 Catch:{ all -> 0x00ef }
        throw r8;
    L_0x00f2:
        if (r17 == 0) goto L_0x0058;
    L_0x00f4:
        r25.clearOpWrite(r26);
        goto L_0x0058;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioWorker.write0(org.jboss.netty.channel.socket.nio.NioSocketChannel):void");
    }

    private void setOpWrite(NioSocketChannel channel) {
        SelectionKey key = channel.socket.keyFor(this.selector);
        if (key != null) {
            if (key.isValid()) {
                int interestOps;
                boolean changed = $assertionsDisabled;
                synchronized (channel.interestOpsLock) {
                    interestOps = channel.getRawInterestOps();
                    if ((interestOps & 4) == 0) {
                        interestOps |= 4;
                        key.interestOps(interestOps);
                        changed = true;
                    }
                }
                if (changed) {
                    channel.setRawInterestOpsNow(interestOps);
                    return;
                }
                return;
            }
            close(key);
        }
    }

    private void clearOpWrite(NioSocketChannel channel) {
        SelectionKey key = channel.socket.keyFor(this.selector);
        if (key != null) {
            if (key.isValid()) {
                int interestOps;
                boolean changed = $assertionsDisabled;
                synchronized (channel.interestOpsLock) {
                    interestOps = channel.getRawInterestOps();
                    if ((interestOps & 4) != 0) {
                        interestOps &= -5;
                        key.interestOps(interestOps);
                        changed = true;
                    }
                }
                if (changed) {
                    channel.setRawInterestOpsNow(interestOps);
                    return;
                }
                return;
            }
            close(key);
        }
    }

    void close(NioSocketChannel channel, ChannelFuture future) {
        boolean connected = channel.isConnected();
        boolean bound = channel.isBound();
        try {
            channel.socket.close();
            this.cancelledKeys++;
            if (channel.setClosed()) {
                future.setSuccess();
                if (connected) {
                    Channels.fireChannelDisconnected((Channel) channel);
                }
                if (bound) {
                    Channels.fireChannelUnbound((Channel) channel);
                }
                cleanUpWriteBuffer(channel);
                Channels.fireChannelClosed((Channel) channel);
                return;
            }
            future.setSuccess();
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void cleanUpWriteBuffer(org.jboss.netty.channel.socket.nio.NioSocketChannel r9) {
        /*
        r8 = this;
        r0 = 0;
        r3 = 0;
        r7 = r9.writeLock;
        monitor-enter(r7);
        r2 = r9.currentWriteEvent;	 Catch:{ all -> 0x0064 }
        if (r2 == 0) goto L_0x006e;
    L_0x0009:
        r6 = r9.isOpen();	 Catch:{ all -> 0x0064 }
        if (r6 == 0) goto L_0x004e;
    L_0x000f:
        r1 = new java.nio.channels.NotYetConnectedException;	 Catch:{ all -> 0x0064 }
        r1.<init>();	 Catch:{ all -> 0x0064 }
        r0 = r1;
    L_0x0015:
        r4 = r2.getFuture();	 Catch:{ all -> 0x0064 }
        r6 = r9.currentWriteBuffer;	 Catch:{ all -> 0x0064 }
        r6.release();	 Catch:{ all -> 0x0064 }
        r6 = 0;
        r9.currentWriteBuffer = r6;	 Catch:{ all -> 0x0064 }
        r6 = 0;
        r9.currentWriteEvent = r6;	 Catch:{ all -> 0x0064 }
        r2 = 0;
        r4.setFailure(r0);	 Catch:{ all -> 0x0064 }
        r3 = 1;
        r1 = r0;
    L_0x002a:
        r5 = r9.writeBuffer;	 Catch:{ all -> 0x0067 }
        r6 = r5.isEmpty();	 Catch:{ all -> 0x0067 }
        if (r6 != 0) goto L_0x006c;
    L_0x0032:
        if (r1 != 0) goto L_0x006a;
    L_0x0034:
        r6 = r9.isOpen();	 Catch:{ all -> 0x0067 }
        if (r6 == 0) goto L_0x0055;
    L_0x003a:
        r0 = new java.nio.channels.NotYetConnectedException;	 Catch:{ all -> 0x0067 }
        r0.<init>();	 Catch:{ all -> 0x0067 }
    L_0x003f:
        r2 = r5.poll();	 Catch:{ all -> 0x0064 }
        r2 = (org.jboss.netty.channel.MessageEvent) r2;	 Catch:{ all -> 0x0064 }
        if (r2 != 0) goto L_0x005b;
    L_0x0047:
        monitor-exit(r7);	 Catch:{ all -> 0x0064 }
        if (r3 == 0) goto L_0x004d;
    L_0x004a:
        org.jboss.netty.channel.Channels.fireExceptionCaught(r9, r0);
    L_0x004d:
        return;
    L_0x004e:
        r1 = new java.nio.channels.ClosedChannelException;	 Catch:{ all -> 0x0064 }
        r1.<init>();	 Catch:{ all -> 0x0064 }
        r0 = r1;
        goto L_0x0015;
    L_0x0055:
        r0 = new java.nio.channels.ClosedChannelException;	 Catch:{ all -> 0x0067 }
        r0.<init>();	 Catch:{ all -> 0x0067 }
        goto L_0x003f;
    L_0x005b:
        r6 = r2.getFuture();	 Catch:{ all -> 0x0064 }
        r6.setFailure(r0);	 Catch:{ all -> 0x0064 }
        r3 = 1;
        goto L_0x003f;
    L_0x0064:
        r6 = move-exception;
    L_0x0065:
        monitor-exit(r7);	 Catch:{ all -> 0x0064 }
        throw r6;
    L_0x0067:
        r6 = move-exception;
        r0 = r1;
        goto L_0x0065;
    L_0x006a:
        r0 = r1;
        goto L_0x003f;
    L_0x006c:
        r0 = r1;
        goto L_0x0047;
    L_0x006e:
        r1 = r0;
        goto L_0x002a;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioWorker.cleanUpWriteBuffer(org.jboss.netty.channel.socket.nio.NioSocketChannel):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void setInterestOps(org.jboss.netty.channel.socket.nio.NioSocketChannel r11, org.jboss.netty.channel.ChannelFuture r12, int r13) {
        /*
        r10 = this;
        r1 = 0;
        r7 = r11.interestOpsLock;	 Catch:{ CancelledKeyException -> 0x002c, Throwable -> 0x0065 }
        monitor-enter(r7);	 Catch:{ CancelledKeyException -> 0x002c, Throwable -> 0x0065 }
        r4 = r10.selector;	 Catch:{ all -> 0x0029 }
        r6 = r11.socket;	 Catch:{ all -> 0x0029 }
        r3 = r6.keyFor(r4);	 Catch:{ all -> 0x0029 }
        if (r3 == 0) goto L_0x0010;
    L_0x000e:
        if (r4 != 0) goto L_0x0015;
    L_0x0010:
        r11.setRawInterestOpsNow(r13);	 Catch:{ all -> 0x0029 }
        monitor-exit(r7);	 Catch:{ all -> 0x0029 }
    L_0x0014:
        return;
    L_0x0015:
        r13 = r13 & -5;
        r6 = r11.getRawInterestOps();	 Catch:{ all -> 0x0029 }
        r6 = r6 & 4;
        r13 = r13 | r6;
        r6 = CONSTRAINT_LEVEL;	 Catch:{ all -> 0x0029 }
        switch(r6) {
            case 0: goto L_0x0039;
            case 1: goto L_0x006d;
            case 2: goto L_0x006d;
            default: goto L_0x0023;
        };	 Catch:{ all -> 0x0029 }
    L_0x0023:
        r6 = new java.lang.Error;	 Catch:{ all -> 0x0029 }
        r6.<init>();	 Catch:{ all -> 0x0029 }
        throw r6;	 Catch:{ all -> 0x0029 }
    L_0x0029:
        r6 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0029 }
        throw r6;	 Catch:{ CancelledKeyException -> 0x002c, Throwable -> 0x0065 }
    L_0x002c:
        r2 = move-exception;
        r0 = new java.nio.channels.ClosedChannelException;
        r0.<init>();
        r12.setFailure(r0);
        org.jboss.netty.channel.Channels.fireExceptionCaught(r11, r0);
        goto L_0x0014;
    L_0x0039:
        r6 = r11.getRawInterestOps();	 Catch:{ all -> 0x0029 }
        if (r6 == r13) goto L_0x0058;
    L_0x003f:
        r3.interestOps(r13);	 Catch:{ all -> 0x0029 }
        r6 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0029 }
        r8 = r10.thread;	 Catch:{ all -> 0x0029 }
        if (r6 == r8) goto L_0x0057;
    L_0x004a:
        r6 = r10.wakenUp;	 Catch:{ all -> 0x0029 }
        r8 = 0;
        r9 = 1;
        r6 = r6.compareAndSet(r8, r9);	 Catch:{ all -> 0x0029 }
        if (r6 == 0) goto L_0x0057;
    L_0x0054:
        r4.wakeup();	 Catch:{ all -> 0x0029 }
    L_0x0057:
        r1 = 1;
    L_0x0058:
        monitor-exit(r7);	 Catch:{ all -> 0x0029 }
        r12.setSuccess();	 Catch:{ CancelledKeyException -> 0x002c, Throwable -> 0x0065 }
        if (r1 == 0) goto L_0x0014;
    L_0x005e:
        r11.setRawInterestOpsNow(r13);	 Catch:{ CancelledKeyException -> 0x002c, Throwable -> 0x0065 }
        org.jboss.netty.channel.Channels.fireChannelInterestChanged(r11);	 Catch:{ CancelledKeyException -> 0x002c, Throwable -> 0x0065 }
        goto L_0x0014;
    L_0x0065:
        r5 = move-exception;
        r12.setFailure(r5);
        org.jboss.netty.channel.Channels.fireExceptionCaught(r11, r5);
        goto L_0x0014;
    L_0x006d:
        r6 = r11.getRawInterestOps();	 Catch:{ all -> 0x0029 }
        if (r6 == r13) goto L_0x0058;
    L_0x0073:
        r6 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0029 }
        r8 = r10.thread;	 Catch:{ all -> 0x0029 }
        if (r6 != r8) goto L_0x0080;
    L_0x007b:
        r3.interestOps(r13);	 Catch:{ all -> 0x0029 }
        r1 = 1;
        goto L_0x0058;
    L_0x0080:
        r6 = r10.selectorGuard;	 Catch:{ all -> 0x0029 }
        r6 = r6.readLock();	 Catch:{ all -> 0x0029 }
        r6.lock();	 Catch:{ all -> 0x0029 }
        r6 = r10.wakenUp;	 Catch:{ all -> 0x00a4 }
        r8 = 0;
        r9 = 1;
        r6 = r6.compareAndSet(r8, r9);	 Catch:{ all -> 0x00a4 }
        if (r6 == 0) goto L_0x0096;
    L_0x0093:
        r4.wakeup();	 Catch:{ all -> 0x00a4 }
    L_0x0096:
        r3.interestOps(r13);	 Catch:{ all -> 0x00a4 }
        r1 = 1;
        r6 = r10.selectorGuard;	 Catch:{ all -> 0x0029 }
        r6 = r6.readLock();	 Catch:{ all -> 0x0029 }
        r6.unlock();	 Catch:{ all -> 0x0029 }
        goto L_0x0058;
    L_0x00a4:
        r6 = move-exception;
        r8 = r10.selectorGuard;	 Catch:{ all -> 0x0029 }
        r8 = r8.readLock();	 Catch:{ all -> 0x0029 }
        r8.unlock();	 Catch:{ all -> 0x0029 }
        throw r6;	 Catch:{ all -> 0x0029 }
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioWorker.setInterestOps(org.jboss.netty.channel.socket.nio.NioSocketChannel, org.jboss.netty.channel.ChannelFuture, int):void");
    }
}
