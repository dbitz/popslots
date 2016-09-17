package org.jboss.netty.handler.timeout;

import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

public class ReadTimeoutHandler extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler, ExternalResourceReleasable {
    static final ReadTimeoutException EXCEPTION = new ReadTimeoutException();
    volatile long lastReadTime;
    private volatile ReadTimeoutTask task;
    volatile Timeout timeout;
    final long timeoutMillis;
    final Timer timer;

    private final class ReadTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        ReadTimeoutTask(ChannelHandlerContext ctx) {
            this.ctx = ctx;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                long nextDelay = ReadTimeoutHandler.this.timeoutMillis - (System.currentTimeMillis() - ReadTimeoutHandler.this.lastReadTime);
                if (nextDelay <= 0) {
                    ReadTimeoutHandler.this.timeout = ReadTimeoutHandler.this.timer.newTimeout(this, ReadTimeoutHandler.this.timeoutMillis, TimeUnit.MILLISECONDS);
                    try {
                        ReadTimeoutHandler.this.readTimedOut(this.ctx);
                        return;
                    } catch (Throwable t) {
                        Channels.fireExceptionCaught(this.ctx, t);
                        return;
                    }
                }
                ReadTimeoutHandler.this.timeout = ReadTimeoutHandler.this.timer.newTimeout(this, nextDelay, TimeUnit.MILLISECONDS);
            }
        }
    }

    public ReadTimeoutHandler(Timer timer, int timeoutSeconds) {
        this(timer, (long) timeoutSeconds, TimeUnit.SECONDS);
    }

    public ReadTimeoutHandler(Timer timer, long timeout, TimeUnit unit) {
        if (timer == null) {
            throw new NullPointerException("timer");
        } else if (unit == null) {
            throw new NullPointerException("unit");
        } else {
            this.timer = timer;
            if (timeout <= 0) {
                this.timeoutMillis = 0;
            } else {
                this.timeoutMillis = Math.max(unit.toMillis(timeout), 1);
            }
        }
    }

    public void releaseExternalResources() {
        this.timer.stop();
    }

    public void beforeAdd(ChannelHandlerContext ctx) throws Exception {
        if (ctx.getPipeline().isAttached()) {
            initialize(ctx);
        }
    }

    public void afterAdd(ChannelHandlerContext ctx) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext ctx) throws Exception {
        destroy();
    }

    public void afterRemove(ChannelHandlerContext ctx) throws Exception {
    }

    public void channelOpen(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        initialize(ctx);
        ctx.sendUpstream(e);
    }

    public void channelClosed(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        destroy();
        ctx.sendUpstream(e);
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        updateLastReadTime();
        ctx.sendUpstream(e);
    }

    private void initialize(ChannelHandlerContext ctx) {
        updateLastReadTime();
        this.task = new ReadTimeoutTask(ctx);
        if (this.timeoutMillis > 0) {
            this.timeout = this.timer.newTimeout(this.task, this.timeoutMillis, TimeUnit.MILLISECONDS);
        }
    }

    private void updateLastReadTime() {
        this.lastReadTime = System.currentTimeMillis();
    }

    private void destroy() {
        if (this.timeout != null) {
            this.timeout.cancel();
        }
        this.timeout = null;
        this.task = null;
    }

    protected void readTimedOut(ChannelHandlerContext ctx) throws Exception {
        Channels.fireExceptionCaught(ctx, EXCEPTION);
    }
}
