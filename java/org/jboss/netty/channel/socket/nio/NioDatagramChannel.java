package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.SocketAddress;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import org.jboss.netty.util.internal.ThreadLocalBoolean;

class NioDatagramChannel extends AbstractChannel implements DatagramChannel {
    private final NioDatagramChannelConfig config;
    SendBuffer currentWriteBuffer;
    MessageEvent currentWriteEvent;
    private final java.nio.channels.DatagramChannel datagramChannel;
    final AtomicInteger highWaterMarkCounter = new AtomicInteger();
    boolean inWriteNowLoop;
    final Object interestOpsLock = new Object();
    private volatile InetSocketAddress localAddress;
    volatile InetSocketAddress remoteAddress;
    final NioDatagramWorker worker;
    final Queue<MessageEvent> writeBufferQueue = new WriteRequestQueue();
    final AtomicInteger writeBufferSize = new AtomicInteger();
    final Object writeLock = new Object();
    boolean writeSuspended;
    final Runnable writeTask = new WriteTask();
    final AtomicBoolean writeTaskInTaskQueue = new AtomicBoolean();

    private final class WriteRequestQueue extends LinkedTransferQueue<MessageEvent> {
        static final /* synthetic */ boolean $assertionsDisabled = (!NioDatagramChannel.class.desiredAssertionStatus() ? true : $assertionsDisabled);
        private static final long serialVersionUID = 5057413071460766376L;
        private final ThreadLocalBoolean notifying = new ThreadLocalBoolean();

        WriteRequestQueue() {
        }

        public boolean offer(MessageEvent e) {
            boolean success = super.offer(e);
            if ($assertionsDisabled || success) {
                int messageSize = getMessageSize(e);
                int newWriteBufferSize = NioDatagramChannel.this.writeBufferSize.addAndGet(messageSize);
                int highWaterMark = NioDatagramChannel.this.getConfig().getWriteBufferHighWaterMark();
                if (newWriteBufferSize >= highWaterMark && newWriteBufferSize - messageSize < highWaterMark) {
                    NioDatagramChannel.this.highWaterMarkCounter.incrementAndGet();
                    if (!((Boolean) this.notifying.get()).booleanValue()) {
                        this.notifying.set(Boolean.TRUE);
                        Channels.fireChannelInterestChanged(NioDatagramChannel.this);
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
                int newWriteBufferSize = NioDatagramChannel.this.writeBufferSize.addAndGet(-messageSize);
                int lowWaterMark = NioDatagramChannel.this.getConfig().getWriteBufferLowWaterMark();
                if ((newWriteBufferSize == 0 || newWriteBufferSize < lowWaterMark) && newWriteBufferSize + messageSize >= lowWaterMark) {
                    NioDatagramChannel.this.highWaterMarkCounter.decrementAndGet();
                    if (!((Boolean) this.notifying.get()).booleanValue()) {
                        this.notifying.set(Boolean.TRUE);
                        Channels.fireChannelInterestChanged(NioDatagramChannel.this);
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
            NioDatagramChannel.this.writeTaskInTaskQueue.set(false);
            NioDatagramChannel.this.worker.writeFromTaskLoop(NioDatagramChannel.this);
        }
    }

    NioDatagramChannel(ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink, NioDatagramWorker worker) {
        super(null, factory, pipeline, sink);
        this.worker = worker;
        this.datagramChannel = openNonBlockingChannel();
        this.config = new DefaultNioDatagramChannelConfig(this.datagramChannel.socket());
        Channels.fireChannelOpen((Channel) this);
    }

    private java.nio.channels.DatagramChannel openNonBlockingChannel() {
        try {
            java.nio.channels.DatagramChannel channel = java.nio.channels.DatagramChannel.open();
            channel.configureBlocking(false);
            return channel;
        } catch (IOException e) {
            throw new ChannelException("Failed to open a DatagramChannel.", e);
        }
    }

    public InetSocketAddress getLocalAddress() {
        InetSocketAddress localAddress = this.localAddress;
        if (localAddress == null) {
            try {
                localAddress = (InetSocketAddress) this.datagramChannel.socket().getLocalSocketAddress();
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
                remoteAddress = (InetSocketAddress) this.datagramChannel.socket().getRemoteSocketAddress();
                this.remoteAddress = remoteAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return remoteAddress;
    }

    public boolean isBound() {
        return isOpen() && this.datagramChannel.socket().isBound();
    }

    public boolean isConnected() {
        return this.datagramChannel.isConnected();
    }

    protected boolean setClosed() {
        return super.setClosed();
    }

    public NioDatagramChannelConfig getConfig() {
        return this.config;
    }

    java.nio.channels.DatagramChannel getDatagramChannel() {
        return this.datagramChannel;
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
        return super.write(message, remoteAddress);
    }

    public void joinGroup(InetAddress multicastAddress) {
        throw new UnsupportedOperationException();
    }

    public void joinGroup(InetSocketAddress multicastAddress, NetworkInterface networkInterface) {
        throw new UnsupportedOperationException();
    }

    public void leaveGroup(InetAddress multicastAddress) {
        throw new UnsupportedOperationException();
    }

    public void leaveGroup(InetSocketAddress multicastAddress, NetworkInterface networkInterface) {
        throw new UnsupportedOperationException();
    }
}
