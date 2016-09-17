package org.jboss.netty.channel;

public abstract class AbstractChannelSink implements ChannelSink {
    protected AbstractChannelSink() {
    }

    public void exceptionCaught(ChannelPipeline pipeline, ChannelEvent event, ChannelPipelineException cause) throws Exception {
        Throwable actualCause = cause.getCause();
        if (actualCause == null) {
            actualCause = cause;
        }
        Channels.fireExceptionCaught(event.getChannel(), actualCause);
    }
}
