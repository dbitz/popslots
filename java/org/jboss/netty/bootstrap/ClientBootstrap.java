package org.jboss.netty.bootstrap;

import java.net.SocketAddress;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipelineException;

public class ClientBootstrap extends Bootstrap {
    public ClientBootstrap(ChannelFactory channelFactory) {
        super(channelFactory);
    }

    public ChannelFuture connect() {
        SocketAddress remoteAddress = (SocketAddress) getOption("remoteAddress");
        if (remoteAddress != null) {
            return connect(remoteAddress);
        }
        throw new IllegalStateException("remoteAddress option is not set.");
    }

    public ChannelFuture connect(SocketAddress remoteAddress) {
        if (remoteAddress != null) {
            return connect(remoteAddress, (SocketAddress) getOption("localAddress"));
        }
        throw new NullPointerException("remotedAddress");
    }

    public ChannelFuture connect(SocketAddress remoteAddress, SocketAddress localAddress) {
        if (remoteAddress == null) {
            throw new NullPointerException("remoteAddress");
        }
        try {
            Channel ch = getFactory().newChannel(getPipelineFactory().getPipeline());
            ch.getConfig().setOptions(getOptions());
            if (localAddress != null) {
                ch.bind(localAddress);
            }
            return ch.connect(remoteAddress);
        } catch (Exception e) {
            throw new ChannelPipelineException("Failed to initialize a pipeline.", e);
        }
    }
}
