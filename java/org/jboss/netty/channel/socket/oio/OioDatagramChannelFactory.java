package org.jboss.netty.channel.socket.oio;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelFactory;
import org.jboss.netty.util.internal.ExecutorUtil;

public class OioDatagramChannelFactory implements DatagramChannelFactory {
    final OioDatagramPipelineSink sink;
    private final Executor workerExecutor;

    public OioDatagramChannelFactory(Executor workerExecutor) {
        if (workerExecutor == null) {
            throw new NullPointerException("workerExecutor");
        }
        this.workerExecutor = workerExecutor;
        this.sink = new OioDatagramPipelineSink(workerExecutor);
    }

    public DatagramChannel newChannel(ChannelPipeline pipeline) {
        return new OioDatagramChannel(this, pipeline, this.sink);
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(this.workerExecutor);
    }
}
