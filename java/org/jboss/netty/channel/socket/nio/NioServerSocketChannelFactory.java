package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.socket.ServerSocketChannel;
import org.jboss.netty.channel.socket.ServerSocketChannelFactory;
import org.jboss.netty.util.internal.ExecutorUtil;

public class NioServerSocketChannelFactory implements ServerSocketChannelFactory {
    final Executor bossExecutor;
    private final ChannelSink sink;
    private final Executor workerExecutor;

    public NioServerSocketChannelFactory(Executor bossExecutor, Executor workerExecutor) {
        this(bossExecutor, workerExecutor, SelectorUtil.DEFAULT_IO_THREADS);
    }

    public NioServerSocketChannelFactory(Executor bossExecutor, Executor workerExecutor, int workerCount) {
        if (bossExecutor == null) {
            throw new NullPointerException("bossExecutor");
        } else if (workerExecutor == null) {
            throw new NullPointerException("workerExecutor");
        } else if (workerCount <= 0) {
            throw new IllegalArgumentException("workerCount (" + workerCount + ") " + "must be a positive integer.");
        } else {
            this.bossExecutor = bossExecutor;
            this.workerExecutor = workerExecutor;
            this.sink = new NioServerSocketPipelineSink(workerExecutor, workerCount);
        }
    }

    public ServerSocketChannel newChannel(ChannelPipeline pipeline) {
        return new NioServerSocketChannel(this, pipeline, this.sink);
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(this.bossExecutor, this.workerExecutor);
    }
}
