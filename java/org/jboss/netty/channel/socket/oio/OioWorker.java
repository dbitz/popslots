package org.jboss.netty.channel.socket.oio;

import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.SocketException;
import java.nio.channels.ClosedChannelException;
import java.util.regex.Pattern;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;

class OioWorker implements Runnable {
    private static final Pattern SOCKET_CLOSED_MESSAGE = Pattern.compile("^.*(?:Socket.*closed).*$", 2);
    private final OioSocketChannel channel;

    OioWorker(OioSocketChannel channel) {
        this.channel = channel;
    }

    public void run() {
        this.channel.workerThread = Thread.currentThread();
        PushbackInputStream in = this.channel.getInputStream();
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
            int bytesToRead = in.available();
            if (bytesToRead > 0) {
                byte[] buf = new byte[bytesToRead];
                Channels.fireMessageReceived(this.channel, this.channel.getConfig().getBufferFactory().getBuffer(buf, 0, in.read(buf)));
            } else {
                try {
                    int b = in.read();
                    if (b < 0) {
                        break;
                    }
                    in.unread(b);
                } catch (Throwable t) {
                    if (!this.channel.socket.isClosed()) {
                        Channels.fireExceptionCaught(this.channel, t);
                    }
                }
            }
        }
        this.channel.workerThread = null;
        close(this.channel, Channels.succeededFuture(this.channel));
    }

    static void write(OioSocketChannel channel, ChannelFuture future, Object message) {
        OutputStream out = channel.getOutputStream();
        if (out == null) {
            Throwable e = new ClosedChannelException();
            future.setFailure(e);
            Channels.fireExceptionCaught((Channel) channel, e);
            return;
        }
        try {
            ChannelBuffer a = (ChannelBuffer) message;
            int length = a.readableBytes();
            synchronized (out) {
                a.getBytes(a.readerIndex(), out, length);
            }
            Channels.fireWriteComplete((Channel) channel, (long) length);
            future.setSuccess();
        } catch (Throwable th) {
            Throwable t = th;
            if ((t instanceof SocketException) && SOCKET_CLOSED_MESSAGE.matcher(String.valueOf(t.getMessage())).matches()) {
                t = new ClosedChannelException();
            }
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }

    static void setInterestOps(OioSocketChannel channel, ChannelFuture future, int interestOps) {
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

    static void close(OioSocketChannel channel, ChannelFuture future) {
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
