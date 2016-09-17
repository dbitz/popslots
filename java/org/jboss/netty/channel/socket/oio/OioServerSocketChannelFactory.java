package org.jboss.netty.channel.socket.oio;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.socket.ServerSocketChannel;
import org.jboss.netty.channel.socket.ServerSocketChannelFactory;
import org.jboss.netty.util.internal.ExecutorUtil;

public class OioServerSocketChannelFactory implements ServerSocketChannelFactory {
    final Executor bossExecutor;
    private final ChannelSink sink;
    private final Executor workerExecutor;

    public OioServerSocketChannelFactory(Executor bossExecutor, Executor workerExecutor) {
        if (bossExecutor == null) {
            throw new NullPointerException("bossExecutor");
        } else if (workerExecutor == null) {
            throw new NullPointerException("workerExecutor");
        } else {
            this.bossExecutor = bossExecutor;
            this.workerExecutor = workerExecutor;
            this.sink = new OioServerSocketPipelineSink(workerExecutor);
        }
    }

    public ServerSocketChannel newChannel(ChannelPipeline pipeline) {
        return new OioServerSocketChannel(this, pipeline, this.sink);
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(this.bossExecutor, this.workerExecutor);
    }
}
