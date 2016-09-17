package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelFactory;
import org.jboss.netty.util.internal.ExecutorUtil;

public class NioDatagramChannelFactory implements DatagramChannelFactory {
    private final NioDatagramPipelineSink sink;
    private final Executor workerExecutor;

    public NioDatagramChannelFactory(Executor workerExecutor) {
        this(workerExecutor, SelectorUtil.DEFAULT_IO_THREADS);
    }

    public NioDatagramChannelFactory(Executor workerExecutor, int workerCount) {
        if (workerCount <= 0) {
            throw new IllegalArgumentException(String.format("workerCount (%s) must be a positive integer.", new Object[]{Integer.valueOf(workerCount)}));
        } else if (workerExecutor == null) {
            throw new NullPointerException("workerExecutor argument must not be null");
        } else {
            this.workerExecutor = workerExecutor;
            this.sink = new NioDatagramPipelineSink(workerExecutor, workerCount);
        }
    }

    public DatagramChannel newChannel(ChannelPipeline pipeline) {
        return new NioDatagramChannel(this, pipeline, this.sink, this.sink.nextWorker());
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(this.workerExecutor);
    }
}
