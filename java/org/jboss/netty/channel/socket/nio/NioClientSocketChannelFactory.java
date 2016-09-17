package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.ClientSocketChannelFactory;
import org.jboss.netty.channel.socket.SocketChannel;
import org.jboss.netty.util.internal.ExecutorUtil;

public class NioClientSocketChannelFactory implements ClientSocketChannelFactory {
    private final Executor bossExecutor;
    private final NioClientSocketPipelineSink sink;
    private final Executor workerExecutor;

    public NioClientSocketChannelFactory(Executor bossExecutor, Executor workerExecutor) {
        this(bossExecutor, workerExecutor, SelectorUtil.DEFAULT_IO_THREADS);
    }

    public NioClientSocketChannelFactory(Executor bossExecutor, Executor workerExecutor, int workerCount) {
        if (bossExecutor == null) {
            throw new NullPointerException("bossExecutor");
        } else if (workerExecutor == null) {
            throw new NullPointerException("workerExecutor");
        } else if (workerCount <= 0) {
            throw new IllegalArgumentException("workerCount (" + workerCount + ") " + "must be a positive integer.");
        } else {
            this.bossExecutor = bossExecutor;
            this.workerExecutor = workerExecutor;
            this.sink = new NioClientSocketPipelineSink(bossExecutor, workerExecutor, workerCount);
        }
    }

    public SocketChannel newChannel(ChannelPipeline pipeline) {
        return new NioClientSocketChannel(this, pipeline, this.sink, this.sink.nextWorker());
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(this.bossExecutor, this.workerExecutor);
    }
}
