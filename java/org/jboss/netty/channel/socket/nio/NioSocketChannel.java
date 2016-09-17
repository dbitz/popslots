package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.socket.SocketChannel;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import org.jboss.netty.util.internal.ThreadLocalBoolean;

class NioSocketChannel extends AbstractChannel implements SocketChannel {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioSocketChannel.class.desiredAssertionStatus() ? true : $assertionsDisabled);
    private static final int ST_BOUND = 1;
    private static final int ST_CLOSED = -1;
    private static final int ST_CONNECTED = 2;
    private static final int ST_OPEN = 0;
    private final NioSocketChannelConfig config;
    SendBuffer currentWriteBuffer;
    MessageEvent currentWriteEvent;
    final AtomicInteger highWaterMarkCounter = new AtomicInteger();
    boolean inWriteNowLoop;
    final Object interestOpsLock = new Object();
    private volatile InetSocketAddress localAddress;
    private volatile InetSocketAddress remoteAddress;
    final java.nio.channels.SocketChannel socket;
    private volatile int state = 0;
    final NioWorker worker;
    final Queue<MessageEvent> writeBuffer = new WriteRequestQueue();
    final AtomicInteger writeBufferSize = new AtomicInteger();
    final Object writeLock = new Object();
    boolean writeSuspended;
    final Runnable writeTask = new WriteTask();
    final AtomicBoolean writeTaskInTaskQueue = new AtomicBoolean();

    private final class WriteRequestQueue extends LinkedTransferQueue<MessageEvent> {
        static final /* synthetic */ boolean $assertionsDisabled = (!NioSocketChannel.class.desiredAssertionStatus() ? true : $assertionsDisabled);
        private static final long serialVersionUID = -246694024103520626L;
        private final ThreadLocalBoolean notifying = new ThreadLocalBoolean();

        WriteRequestQueue() {
        }

        public boolean offer(MessageEvent e) {
            boolean success = super.offer(e);
            if ($assertionsDisabled || success) {
                int messageSize = getMessageSize(e);
                int newWriteBufferSize = NioSocketChannel.this.writeBufferSize.addAndGet(messageSize);
                int highWaterMark = NioSocketChannel.this.getConfig().getWriteBufferHighWaterMark();
                if (newWriteBufferSize >= highWaterMark && newWriteBufferSize - messageSize < highWaterMark) {
                    NioSocketChannel.this.highWaterMarkCounter.incrementAndGet();
                    if (!((Boolean) this.notifying.get()).booleanValue()) {
                        this.notifying.set(Boolean.TRUE);
                        Channels.fireChannelInterestChanged(NioSocketChannel.this);
                        this.notifying.set(Boolean.FALSE);
                    }
                }
                return true;
            }
            throw new AssertionError();
        }

        public MessageEvent poll() {
            MessageEvent e = (MessageEvent) super.poll();
            if (e != null) {
                int messageSize = getMessageSize(e);
                int newWriteBufferSize = NioSocketChannel.this.writeBufferSize.addAndGet(-messageSize);
                int lowWaterMark = NioSocketChannel.this.getConfig().getWriteBufferLowWaterMark();
                if ((newWriteBufferSize == 0 || newWriteBufferSize < lowWaterMark) && newWriteBufferSize + messageSize >= lowWaterMark) {
                    NioSocketChannel.this.highWaterMarkCounter.decrementAndGet();
                    if (!((Boolean) this.notifying.get()).booleanValue()) {
                        this.notifying.set(Boolean.TRUE);
                        Channels.fireChannelInterestChanged(NioSocketChannel.this);
                        this.notifying.set(Boolean.FALSE);
                    }
                }
            }
            return e;
        }

        private int getMessageSize(MessageEvent e) {
            Object m = e.getMessage();
            if (m instanceof ChannelBuffer) {
                return ((ChannelBuffer) m).readableBytes();
            }
            return 0;
        }
    }

    private final class WriteTask implements Runnable {
        WriteTask() {
        }

        public void run() {
            NioSocketChannel.this.writeTaskInTaskQueue.set(NioSocketChannel.$assertionsDisabled);
            NioSocketChannel.this.worker.writeFromTaskLoop(NioSocketChannel.this);
        }
    }

    public NioSocketChannel(Channel parent, ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink, java.nio.channels.SocketChannel socket, NioWorker worker) {
        super(parent, factory, pipeline, sink);
        this.socket = socket;
        this.worker = worker;
        this.config = new DefaultNioSocketChannelConfig(socket.socket());
    }

    public NioSocketChannelConfig getConfig() {
        return this.config;
    }

    public InetSocketAddress getLocalAddress() {
        InetSocketAddress localAddress = this.localAddress;
        if (localAddress == null) {
            try {
                localAddress = (InetSocketAddress) this.socket.socket().getLocalSocketAddress();
                this.localAddress = localAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return localAddress;
    }

    public InetSocketAddress getRemoteAddress() {
        InetSocketAddress remoteAddress = this.remoteAddress;
        if (remoteAddress == null) {
            try {
                remoteAddress = (InetSocketAddress) this.socket.socket().getRemoteSocketAddress();
                this.remoteAddress = remoteAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return remoteAddress;
    }

    public boolean isOpen() {
        return this.state >= 0 ? true : $assertionsDisabled;
    }

    public boolean isBound() {
        return this.state >= ST_BOUND ? true : $assertionsDisabled;
    }

    public boolean isConnected() {
        return this.state == ST_CONNECTED ? true : $assertionsDisabled;
    }

    final void setBound() {
        if ($assertionsDisabled || this.state == 0) {
            this.state = ST_BOUND;
            return;
        }
        throw new AssertionError("Invalid state: " + this.state);
    }

    final void setConnected() {
        if (this.state != ST_CLOSED) {
            this.state = ST_CONNECTED;
        }
    }

    protected boolean setClosed() {
        this.state = ST_CLOSED;
        return super.setClosed();
    }

    public int getInterestOps() {
        if (!isOpen()) {
            return 4;
        }
        int interestOps = getRawInterestOps();
        int writeBufferSize = this.writeBufferSize.get();
        if (writeBufferSize == 0) {
            return interestOps & -5;
        }
        if (this.highWaterMarkCounter.get() > 0) {
            if (writeBufferSize >= getConfig().getWriteBufferLowWaterMark()) {
                return interestOps | 4;
            }
            return interestOps & -5;
        } else if (writeBufferSize >= getConfig().getWriteBufferHighWaterMark()) {
            return interestOps | 4;
        } else {
            return interestOps & -5;
        }
    }

    int getRawInterestOps() {
        return super.getInterestOps();
    }

    void setRawInterestOpsNow(int interestOps) {
        super.setInterestOpsNow(interestOps);
    }

    public ChannelFuture write(Object message, SocketAddress remoteAddress) {
        if (remoteAddress == null || remoteAddress.equals(getRemoteAddress())) {
            return super.write(message, null);
        }
        return getUnsupportedOperationFuture();
    }
}
