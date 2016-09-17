package org.jboss.netty.channel.socket.oio;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.ClientSocketChannelFactory;
import org.jboss.netty.channel.socket.SocketChannel;
import org.jboss.netty.util.internal.ExecutorUtil;

public class OioClientSocketChannelFactory implements ClientSocketChannelFactory {
    final OioClientSocketPipelineSink sink;
    private final Executor workerExecutor;

    public OioClientSocketChannelFactory(Executor workerExecutor) {
        if (workerExecutor == null) {
            throw new NullPointerException("workerExecutor");
        }
        this.workerExecutor = workerExecutor;
        this.sink = new OioClientSocketPipelineSink(workerExecutor);
    }

    public SocketChannel newChannel(ChannelPipeline pipeline) {
        return new OioClientSocketChannel(this, pipeline, this.sink);
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(this.workerExecutor);
    }
}
