package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.LinkedTransferQueue;

class NioDatagramWorker implements Runnable {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioDatagramWorker.class.desiredAssertionStatus());
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(NioDatagramWorker.class);
    private final int bossId;
    private volatile int cancelledKeys;
    private final Executor executor;
    private final int id;
    private final Queue<Runnable> registerTaskQueue = new LinkedTransferQueue();
    volatile Selector selector;
    private final ReadWriteLock selectorGuard = new ReentrantReadWriteLock();
    private final SocketSendBufferPool sendBufferPool = new SocketSendBufferPool();
    private final Object startStopLock = new Object();
    private boolean started;
    private volatile Thread thread;
    private final AtomicBoolean wakenUp = new AtomicBoolean();
    private final Queue<Runnable> writeTaskQueue = new LinkedTransferQueue();

    private final class ChannelRegistionTask implements Runnable {
        private final NioDatagramChannel channel;
        private final ChannelFuture future;

        ChannelRegistionTask(NioDatagramChannel channel, ChannelFuture future) {
            this.channel = channel;
            this.future = future;
        }

        public void run() {
            if (this.channel.getLocalAddress() == null) {
                if (this.future != null) {
                    this.future.setFailure(new ClosedChannelException());
                }
                NioDatagramWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                return;
            }
            try {
                synchronized (this.channel.interestOpsLock) {
                    this.channel.getDatagramChannel().register(NioDatagramWorker.this.selector, this.channel.getRawInterestOps(), this.channel);
                }
                if (this.future != null) {
                    this.future.setSuccess();
                }
            } catch (ClosedChannelException e) {
                if (this.future != null) {
                    this.future.setFailure(e);
                }
                NioDatagramWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                throw new ChannelException("Failed to register a socket to the selector.", e);
            }
        }
    }

    NioDatagramWorker(int bossId, int id, Executor executor) {
        this.bossId = bossId;
        this.id = id;
        this.executor = executor;
    }

    void register(NioDatagramChannel channel, ChannelFuture future) {
        Selector selector;
        Runnable channelRegTask = new ChannelRegistionTask(channel, future);
        synchronized (this.startStopLock) {
            if (this.started) {
                selector = this.selector;
            } else {
                try {
                    selector = Selector.open();
                    this.selector = selector;
                    this.executor.execute(new ThreadRenamingRunnable(this, "New I/O datagram worker #" + this.bossId + "'-'" + this.id));
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
                boolean offered = this.registerTaskQueue.offer(channelRegTask);
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
        r8 = this;
        r7 = 0;
        r4 = java.lang.Thread.currentThread();
        r8.thread = r4;
        r1 = r8.selector;
        r2 = 0;
    L_0x000a:
        r4 = r8.wakenUp;
        r4.set(r7);
        r4 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.CONSTRAINT_LEVEL;
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
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioDatagramWorker.run():void");
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
        if (this.cancelledKeys < 256) {
            return false;
        }
        this.cancelledKeys = 0;
        this.selector.selectNow();
        return true;
    }

    private boolean read(SelectionKey key) {
        Channel channel = (NioDatagramChannel) key.attachment();
        ReceiveBufferSizePredictor predictor = channel.getConfig().getReceiveBufferSizePredictor();
        ChannelBufferFactory bufferFactory = channel.getConfig().getBufferFactory();
        DatagramChannel nioChannel = (DatagramChannel) key.channel();
        ByteBuffer byteBuffer = ByteBuffer.allocate(predictor.nextReceiveBufferSize()).order(bufferFactory.getDefaultOrder());
        boolean failure = true;
        SocketAddress remoteAddress = null;
        try {
            remoteAddress = nioChannel.receive(byteBuffer);
            failure = false;
        } catch (ClosedChannelException e) {
        } catch (Throwable t) {
            Channels.fireExceptionCaught(channel, t);
        }
        if (remoteAddress != null) {
            byteBuffer.flip();
            int readBytes = byteBuffer.remaining();
            if (readBytes > 0) {
                predictor.previousReceiveBufferSize(readBytes);
                Channels.fireMessageReceived(channel, bufferFactory.getBuffer(byteBuffer), remoteAddress);
            }
        }
        if (!failure) {
            return true;
        }
        close(channel, Channels.succeededFuture(channel));
        return false;
    }

    private void close(SelectionKey k) {
        NioDatagramChannel ch = (NioDatagramChannel) k.attachment();
        close(ch, Channels.succeededFuture(ch));
    }

    void writeFromUserCode(NioDatagramChannel channel) {
        if (!channel.isOpen()) {
            cleanUpWriteBuffer(channel);
        } else if (!scheduleWriteIfNecessary(channel) && !channel.writeSuspended && !channel.inWriteNowLoop) {
            write0(channel);
        }
    }

    void writeFromTaskLoop(NioDatagramChannel ch) {
        if (!ch.writeSuspended) {
            write0(ch);
        }
    }

    void writeFromSelectorLoop(SelectionKey k) {
        NioDatagramChannel ch = (NioDatagramChannel) k.attachment();
        ch.writeSuspended = false;
        write0(ch);
    }

    private boolean scheduleWriteIfNecessary(NioDatagramChannel channel) {
        Thread workerThread = this.thread;
        if (workerThread != null && Thread.currentThread() == workerThread) {
            return false;
        }
        if (channel.writeTaskInTaskQueue.compareAndSet(false, true)) {
            boolean offered = this.writeTaskQueue.offer(channel.writeTask);
            if (!($assertionsDisabled || offered)) {
                throw new AssertionError();
            }
        }
        Selector selector = this.selector;
        if (selector != null && this.wakenUp.compareAndSet(false, true)) {
            selector.wakeup();
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void write0(org.jboss.netty.channel.socket.nio.NioDatagramChannel r25) {
        /*
        r24 = this;
        r4 = 0;
        r13 = 0;
        r18 = 0;
        r0 = r24;
        r14 = r0.sendBufferPool;
        r6 = r25.getDatagramChannel();
        r0 = r25;
        r0 = r0.writeBufferQueue;
        r16 = r0;
        r20 = r25.getConfig();
        r17 = r20.getWriteSpinCount();
        r0 = r25;
        r0 = r0.writeLock;
        r21 = r0;
        monitor-enter(r21);
        r20 = 1;
        r0 = r20;
        r1 = r25;
        r1.inWriteNowLoop = r0;	 Catch:{ all -> 0x0103 }
    L_0x0029:
        r0 = r25;
        r7 = r0.currentWriteEvent;	 Catch:{ all -> 0x0103 }
        if (r7 != 0) goto L_0x00ac;
    L_0x002f:
        r7 = r16.poll();	 Catch:{ all -> 0x0103 }
        r7 = (org.jboss.netty.channel.MessageEvent) r7;	 Catch:{ all -> 0x0103 }
        r0 = r25;
        r0.currentWriteEvent = r7;	 Catch:{ all -> 0x0103 }
        if (r7 != 0) goto L_0x005a;
    L_0x003b:
        r13 = 1;
        r20 = 0;
        r0 = r20;
        r1 = r25;
        r1.writeSuspended = r0;	 Catch:{ all -> 0x0103 }
    L_0x0044:
        r20 = 0;
        r0 = r20;
        r1 = r25;
        r1.inWriteNowLoop = r0;	 Catch:{ all -> 0x0103 }
        monitor-exit(r21);	 Catch:{ all -> 0x0103 }
        r0 = r25;
        r1 = r18;
        org.jboss.netty.channel.Channels.fireWriteComplete(r0, r1);
        if (r4 == 0) goto L_0x0106;
    L_0x0056:
        r24.setOpWrite(r25);
    L_0x0059:
        return;
    L_0x005a:
        r20 = r7.getMessage();	 Catch:{ all -> 0x0103 }
        r0 = r20;
        r5 = r14.acquire(r0);	 Catch:{ all -> 0x0103 }
        r0 = r25;
        r0.currentWriteBuffer = r5;	 Catch:{ all -> 0x0103 }
    L_0x0068:
        r10 = 0;
        r12 = r7.getRemoteAddress();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        if (r12 != 0) goto L_0x00ba;
    L_0x0070:
        r9 = r17;
    L_0x0072:
        if (r9 <= 0) goto L_0x0080;
    L_0x0074:
        r10 = r5.transferTo(r6);	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        r22 = 0;
        r20 = (r10 > r22 ? 1 : (r10 == r22 ? 0 : -1));
        if (r20 == 0) goto L_0x00b1;
    L_0x007e:
        r18 = r18 + r10;
    L_0x0080:
        r22 = 0;
        r20 = (r10 > r22 ? 1 : (r10 == r22 ? 0 : -1));
        if (r20 > 0) goto L_0x008c;
    L_0x0086:
        r20 = r5.finished();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        if (r20 == 0) goto L_0x00d4;
    L_0x008c:
        r5.release();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        r8 = r7.getFuture();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        r20 = 0;
        r0 = r20;
        r1 = r25;
        r1.currentWriteEvent = r0;	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        r20 = 0;
        r0 = r20;
        r1 = r25;
        r1.currentWriteBuffer = r0;	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        r7 = 0;
        r5 = 0;
        r8.setSuccess();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        goto L_0x0029;
    L_0x00a9:
        r20 = move-exception;
        goto L_0x0029;
    L_0x00ac:
        r0 = r25;
        r5 = r0.currentWriteBuffer;	 Catch:{ all -> 0x0103 }
        goto L_0x0068;
    L_0x00b1:
        r20 = r5.finished();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        if (r20 != 0) goto L_0x0080;
    L_0x00b7:
        r9 = r9 + -1;
        goto L_0x0072;
    L_0x00ba:
        r9 = r17;
    L_0x00bc:
        if (r9 <= 0) goto L_0x0080;
    L_0x00be:
        r10 = r5.transferTo(r6, r12);	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        r22 = 0;
        r20 = (r10 > r22 ? 1 : (r10 == r22 ? 0 : -1));
        if (r20 == 0) goto L_0x00cb;
    L_0x00c8:
        r18 = r18 + r10;
        goto L_0x0080;
    L_0x00cb:
        r20 = r5.finished();	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        if (r20 != 0) goto L_0x0080;
    L_0x00d1:
        r9 = r9 + -1;
        goto L_0x00bc;
    L_0x00d4:
        r4 = 1;
        r20 = 1;
        r0 = r20;
        r1 = r25;
        r1.writeSuspended = r0;	 Catch:{ AsynchronousCloseException -> 0x00a9, Throwable -> 0x00df }
        goto L_0x0044;
    L_0x00df:
        r15 = move-exception;
        r5.release();	 Catch:{ all -> 0x0103 }
        r8 = r7.getFuture();	 Catch:{ all -> 0x0103 }
        r20 = 0;
        r0 = r20;
        r1 = r25;
        r1.currentWriteEvent = r0;	 Catch:{ all -> 0x0103 }
        r20 = 0;
        r0 = r20;
        r1 = r25;
        r1.currentWriteBuffer = r0;	 Catch:{ all -> 0x0103 }
        r5 = 0;
        r7 = 0;
        r8.setFailure(r15);	 Catch:{ all -> 0x0103 }
        r0 = r25;
        org.jboss.netty.channel.Channels.fireExceptionCaught(r0, r15);	 Catch:{ all -> 0x0103 }
        goto L_0x0029;
    L_0x0103:
        r20 = move-exception;
        monitor-exit(r21);	 Catch:{ all -> 0x0103 }
        throw r20;
    L_0x0106:
        if (r13 == 0) goto L_0x0059;
    L_0x0108:
        r24.clearOpWrite(r25);
        goto L_0x0059;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioDatagramWorker.write0(org.jboss.netty.channel.socket.nio.NioDatagramChannel):void");
    }

    private void setOpWrite(NioDatagramChannel channel) {
        SelectionKey key = channel.getDatagramChannel().keyFor(this.selector);
        if (key != null) {
            if (key.isValid()) {
                int interestOps;
                boolean changed = false;
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

    private void clearOpWrite(NioDatagramChannel channel) {
        SelectionKey key = channel.getDatagramChannel().keyFor(this.selector);
        if (key != null) {
            if (key.isValid()) {
                int interestOps;
                boolean changed = false;
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

    static void disconnect(NioDatagramChannel channel, ChannelFuture future) {
        boolean connected = channel.isConnected();
        try {
            channel.getDatagramChannel().disconnect();
            future.setSuccess();
            if (connected) {
                Channels.fireChannelDisconnected((Channel) channel);
            }
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    void close(NioDatagramChannel channel, ChannelFuture future) {
        boolean connected = channel.isConnected();
        boolean bound = channel.isBound();
        try {
            channel.getDatagramChannel().close();
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
    private void cleanUpWriteBuffer(org.jboss.netty.channel.socket.nio.NioDatagramChannel r9) {
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
        r5 = r9.writeBufferQueue;	 Catch:{ all -> 0x0067 }
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
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioDatagramWorker.cleanUpWriteBuffer(org.jboss.netty.channel.socket.nio.NioDatagramChannel):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void setInterestOps(org.jboss.netty.channel.socket.nio.NioDatagramChannel r11, org.jboss.netty.channel.ChannelFuture r12, int r13) {
        /*
        r10 = this;
        r1 = 0;
        r7 = r11.interestOpsLock;	 Catch:{ CancelledKeyException -> 0x002e, Throwable -> 0x0067 }
        monitor-enter(r7);	 Catch:{ CancelledKeyException -> 0x002e, Throwable -> 0x0067 }
        r4 = r10.selector;	 Catch:{ all -> 0x002b }
        r6 = r11.getDatagramChannel();	 Catch:{ all -> 0x002b }
        r3 = r6.keyFor(r4);	 Catch:{ all -> 0x002b }
        if (r3 == 0) goto L_0x0012;
    L_0x0010:
        if (r4 != 0) goto L_0x0017;
    L_0x0012:
        r11.setRawInterestOpsNow(r13);	 Catch:{ all -> 0x002b }
        monitor-exit(r7);	 Catch:{ all -> 0x002b }
    L_0x0016:
        return;
    L_0x0017:
        r13 = r13 & -5;
        r6 = r11.getRawInterestOps();	 Catch:{ all -> 0x002b }
        r6 = r6 & 4;
        r13 = r13 | r6;
        r6 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.CONSTRAINT_LEVEL;	 Catch:{ all -> 0x002b }
        switch(r6) {
            case 0: goto L_0x003b;
            case 1: goto L_0x006f;
            case 2: goto L_0x006f;
            default: goto L_0x0025;
        };	 Catch:{ all -> 0x002b }
    L_0x0025:
        r6 = new java.lang.Error;	 Catch:{ all -> 0x002b }
        r6.<init>();	 Catch:{ all -> 0x002b }
        throw r6;	 Catch:{ all -> 0x002b }
    L_0x002b:
        r6 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x002b }
        throw r6;	 Catch:{ CancelledKeyException -> 0x002e, Throwable -> 0x0067 }
    L_0x002e:
        r2 = move-exception;
        r0 = new java.nio.channels.ClosedChannelException;
        r0.<init>();
        r12.setFailure(r0);
        org.jboss.netty.channel.Channels.fireExceptionCaught(r11, r0);
        goto L_0x0016;
    L_0x003b:
        r6 = r11.getRawInterestOps();	 Catch:{ all -> 0x002b }
        if (r6 == r13) goto L_0x005a;
    L_0x0041:
        r3.interestOps(r13);	 Catch:{ all -> 0x002b }
        r6 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x002b }
        r8 = r10.thread;	 Catch:{ all -> 0x002b }
        if (r6 == r8) goto L_0x0059;
    L_0x004c:
        r6 = r10.wakenUp;	 Catch:{ all -> 0x002b }
        r8 = 0;
        r9 = 1;
        r6 = r6.compareAndSet(r8, r9);	 Catch:{ all -> 0x002b }
        if (r6 == 0) goto L_0x0059;
    L_0x0056:
        r4.wakeup();	 Catch:{ all -> 0x002b }
    L_0x0059:
        r1 = 1;
    L_0x005a:
        monitor-exit(r7);	 Catch:{ all -> 0x002b }
        r12.setSuccess();	 Catch:{ CancelledKeyException -> 0x002e, Throwable -> 0x0067 }
        if (r1 == 0) goto L_0x0016;
    L_0x0060:
        r11.setRawInterestOpsNow(r13);	 Catch:{ CancelledKeyException -> 0x002e, Throwable -> 0x0067 }
        org.jboss.netty.channel.Channels.fireChannelInterestChanged(r11);	 Catch:{ CancelledKeyException -> 0x002e, Throwable -> 0x0067 }
        goto L_0x0016;
    L_0x0067:
        r5 = move-exception;
        r12.setFailure(r5);
        org.jboss.netty.channel.Channels.fireExceptionCaught(r11, r5);
        goto L_0x0016;
    L_0x006f:
        r6 = r11.getRawInterestOps();	 Catch:{ all -> 0x002b }
        if (r6 == r13) goto L_0x005a;
    L_0x0075:
        r6 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x002b }
        r8 = r10.thread;	 Catch:{ all -> 0x002b }
        if (r6 != r8) goto L_0x0082;
    L_0x007d:
        r3.interestOps(r13);	 Catch:{ all -> 0x002b }
        r1 = 1;
        goto L_0x005a;
    L_0x0082:
        r6 = r10.selectorGuard;	 Catch:{ all -> 0x002b }
        r6 = r6.readLock();	 Catch:{ all -> 0x002b }
        r6.lock();	 Catch:{ all -> 0x002b }
        r6 = r10.wakenUp;	 Catch:{ all -> 0x00a6 }
        r8 = 0;
        r9 = 1;
        r6 = r6.compareAndSet(r8, r9);	 Catch:{ all -> 0x00a6 }
        if (r6 == 0) goto L_0x0098;
    L_0x0095:
        r4.wakeup();	 Catch:{ all -> 0x00a6 }
    L_0x0098:
        r3.interestOps(r13);	 Catch:{ all -> 0x00a6 }
        r1 = 1;
        r6 = r10.selectorGuard;	 Catch:{ all -> 0x002b }
        r6 = r6.readLock();	 Catch:{ all -> 0x002b }
        r6.unlock();	 Catch:{ all -> 0x002b }
        goto L_0x005a;
    L_0x00a6:
        r6 = move-exception;
        r8 = r10.selectorGuard;	 Catch:{ all -> 0x002b }
        r8 = r8.readLock();	 Catch:{ all -> 0x002b }
        r8.unlock();	 Catch:{ all -> 0x002b }
        throw r6;	 Catch:{ all -> 0x002b }
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioDatagramWorker.setInterestOps(org.jboss.netty.channel.socket.nio.NioDatagramChannel, org.jboss.netty.channel.ChannelFuture, int):void");
    }
}
