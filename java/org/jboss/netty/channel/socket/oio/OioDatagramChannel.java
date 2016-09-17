package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketAddress;
import java.net.SocketException;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelConfig;
import org.jboss.netty.channel.socket.DefaultDatagramChannelConfig;

final class OioDatagramChannel extends AbstractChannel implements DatagramChannel {
    private final DatagramChannelConfig config;
    final Object interestOpsLock = new Object();
    private volatile InetSocketAddress localAddress;
    volatile InetSocketAddress remoteAddress;
    final MulticastSocket socket;
    volatile Thread workerThread;

    OioDatagramChannel(ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink) {
        super(null, factory, pipeline, sink);
        try {
            this.socket = new MulticastSocket(null);
            try {
                this.socket.setSoTimeout(10);
                this.socket.setBroadcast(false);
                this.config = new DefaultDatagramChannelConfig(this.socket);
                Channels.fireChannelOpen((Channel) this);
            } catch (SocketException e) {
                throw new ChannelException("Failed to configure the datagram socket timeout.", e);
            }
        } catch (IOException e2) {
            throw new ChannelException("Failed to open a datagram socket.", e2);
        }
    }

    public DatagramChannelConfig getConfig() {
        return this.config;
    }

    public InetSocketAddress getLocalAddress() {
        InetSocketAddress localAddress = this.localAddress;
        if (localAddress == null) {
            try {
                localAddress = (InetSocketAddress) this.socket.getLocalSocketAddress();
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
                remoteAddress = (InetSocketAddress) this.socket.getRemoteSocketAddress();
                this.remoteAddress = remoteAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return remoteAddress;
    }

    public boolean isBound() {
        return isOpen() && this.socket.isBound();
    }

    public boolean isConnected() {
        return isOpen() && this.socket.isConnected();
    }

    protected boolean setClosed() {
        return super.setClosed();
    }

    protected void setInterestOpsNow(int interestOps) {
        super.setInterestOpsNow(interestOps);
    }

    public ChannelFuture write(Object message, SocketAddress remoteAddress) {
        if (remoteAddress == null || remoteAddress.equals(getRemoteAddress())) {
            return super.write(message, null);
        }
        return super.write(message, remoteAddress);
    }

    public void joinGroup(InetAddress multicastAddress) {
        ensureBound();
        try {
            this.socket.joinGroup(multicastAddress);
        } catch (Throwable e) {
            throw new ChannelException(e);
        }
    }

    public void joinGroup(InetSocketAddress multicastAddress, NetworkInterface networkInterface) {
        ensureBound();
        try {
            this.socket.joinGroup(multicastAddress, networkInterface);
        } catch (Throwable e) {
            throw new ChannelException(e);
        }
    }

    private void ensureBound() {
        if (!isBound()) {
            throw new IllegalStateException(DatagramChannel.class.getName() + " must be bound to join a group.");
        }
    }

    public void leaveGroup(InetAddress multicastAddress) {
        try {
            this.socket.leaveGroup(multicastAddress);
        } catch (Throwable e) {
            throw new ChannelException(e);
        }
    }

    public void leaveGroup(InetSocketAddress multicastAddress, NetworkInterface networkInterface) {
        try {
            this.socket.leaveGroup(multicastAddress, networkInterface);
        } catch (Throwable e) {
            throw new ChannelException(e);
        }
    }
}
