package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.internal.ExecutorUtil;

@Sharable
public class ExecutionHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler, ExternalResourceReleasable {
    private final Executor executor;

    public ExecutionHandler(Executor executor) {
        if (executor == null) {
            throw new NullPointerException("executor");
        }
        this.executor = executor;
    }

    public Executor getExecutor() {
        return this.executor;
    }

    public void releaseExternalResources() {
        ExecutorUtil.terminate(getExecutor());
    }

    public void handleUpstream(ChannelHandlerContext context, ChannelEvent e) throws Exception {
        this.executor.execute(new ChannelEventRunnable(context, e));
    }

    public void handleDownstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent cse = (ChannelStateEvent) e;
            if (cse.getState() == ChannelState.INTEREST_OPS && (((Integer) cse.getValue()).intValue() & 1) != 0) {
                if (ctx.getAttachment() != null) {
                    e.getFuture().setSuccess();
                    return;
                }
            }
        }
        ctx.sendDownstream(e);
    }
}
