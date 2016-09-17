package org.jboss.netty.channel.local;

import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;

public class DefaultLocalServerChannelFactory implements LocalServerChannelFactory {
    private final ChannelSink sink = new LocalServerChannelSink();

    public LocalServerChannel newChannel(ChannelPipeline pipeline) {
        return new DefaultLocalServerChannel(this, pipeline, this.sink);
    }

    public void releaseExternalResources() {
    }
}
