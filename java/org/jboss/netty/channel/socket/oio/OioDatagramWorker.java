package org.jboss.netty.channel.socket.oio;

import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.MulticastSocket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;

class OioDatagramWorker implements Runnable {
    private final OioDatagramChannel channel;

    OioDatagramWorker(OioDatagramChannel channel) {
        this.channel = channel;
    }

    public void run() {
        this.channel.workerThread = Thread.currentThread();
        MulticastSocket socket = this.channel.socket;
        while (this.channel.isOpen()) {
            synchronized (this.channel.interestOpsLock) {
                while (!this.channel.isReadable()) {
                    try {
                        this.channel.interestOpsLock.wait();
                    } catch (InterruptedException e) {
                        if (!this.channel.isOpen()) {
                            break;
                        }
                    }
                }
            }
            byte[] buf = new byte[this.channel.getConfig().getReceiveBufferSizePredictor().nextReceiveBufferSize()];
            DatagramPacket packet = new DatagramPacket(buf, buf.length);
            try {
                socket.receive(packet);
                Channels.fireMessageReceived(this.channel, this.channel.getConfig().getBufferFactory().getBuffer(buf, 0, packet.getLength()), packet.getSocketAddress());
            } catch (InterruptedIOException e2) {
            } catch (Throwable t) {
                if (!this.channel.socket.isClosed()) {
                    Channels.fireExceptionCaught(this.channel, t);
                }
            }
        }
        this.channel.workerThread = null;
        close(this.channel, Channels.succeededFuture(this.channel));
    }

    static void write(OioDatagramChannel channel, ChannelFuture future, Object message, SocketAddress remoteAddress) {
        try {
            DatagramPacket packet;
            ChannelBuffer buf = (ChannelBuffer) message;
            int length = buf.readableBytes();
            ByteBuffer nioBuf = buf.toByteBuffer();
            if (nioBuf.hasArray()) {
                packet = new DatagramPacket(nioBuf.array(), nioBuf.arrayOffset(), length);
            } else {
                byte[] arrayBuf = new byte[length];
                buf.getBytes(0, arrayBuf);
                packet = new DatagramPacket(arrayBuf, length);
            }
            if (remoteAddress != null) {
                packet.setSocketAddress(remoteAddress);
            }
            channel.socket.send(packet);
            Channels.fireWriteComplete((Channel) channel, (long) length);
            future.setSuccess();
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    static void setInterestOps(OioDatagramChannel channel, ChannelFuture future, int interestOps) {
        interestOps = (interestOps & -5) | (channel.getInterestOps() & 4);
        boolean changed = false;
        try {
            if (channel.getInterestOps() != interestOps) {
                if ((interestOps & 1) != 0) {
                    channel.setInterestOpsNow(1);
                } else {
                    channel.setInterestOpsNow(0);
                }
                changed = true;
            }
            future.setSuccess();
            if (changed) {
                synchronized (channel.interestOpsLock) {
                    channel.setInterestOpsNow(interestOps);
                    Thread currentThread = Thread.currentThread();
                    Thread workerThread = channel.workerThread;
                    if (!(workerThread == null || currentThread == workerThread)) {
                        workerThread.interrupt();
                    }
                }
                Channels.fireChannelInterestChanged((Channel) channel);
            }
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    static void disconnect(OioDatagramChannel channel, ChannelFuture future) {
        boolean connected = channel.isConnected();
        try {
            channel.socket.disconnect();
            future.setSuccess();
            if (connected) {
                Thread workerThread = channel.workerThread;
                if (workerThread != null) {
                    try {
                        workerThread.setName("Old I/O datagram worker (" + channel + ')');
                    } catch (SecurityException e) {
                    }
                }
                Channels.fireChannelDisconnected((Channel) channel);
            }
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    static void close(OioDatagramChannel channel, ChannelFuture future) {
        boolean connected = channel.isConnected();
        boolean bound = channel.isBound();
        try {
            channel.socket.close();
            if (channel.setClosed()) {
                future.setSuccess();
                if (connected) {
                    Thread currentThread = Thread.currentThread();
                    Thread workerThread = channel.workerThread;
                    if (!(workerThread == null || currentThread == workerThread)) {
                        workerThread.interrupt();
                    }
                    Channels.fireChannelDisconnected((Channel) channel);
                }
                if (bound) {
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
