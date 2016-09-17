package org.jboss.netty.handler.timeout;

import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.channel.WriteCompletionEvent;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

public class IdleStateHandler extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler, ExternalResourceReleasable {
    final long allIdleTimeMillis;
    volatile Timeout allIdleTimeout;
    volatile long lastReadTime;
    volatile long lastWriteTime;
    final long readerIdleTimeMillis;
    volatile Timeout readerIdleTimeout;
    final Timer timer;
    final long writerIdleTimeMillis;
    volatile Timeout writerIdleTimeout;

    private final class AllIdleTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        AllIdleTimeoutTask(ChannelHandlerContext ctx) {
            this.ctx = ctx;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                long currentTime = System.currentTimeMillis();
                long lastIoTime = Math.max(IdleStateHandler.this.lastReadTime, IdleStateHandler.this.lastWriteTime);
                long nextDelay = IdleStateHandler.this.allIdleTimeMillis - (currentTime - lastIoTime);
                if (nextDelay <= 0) {
                    IdleStateHandler.this.allIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, IdleStateHandler.this.allIdleTimeMillis, TimeUnit.MILLISECONDS);
                    try {
                        IdleStateHandler.this.channelIdle(this.ctx, IdleState.ALL_IDLE, lastIoTime);
                        return;
                    } catch (Throwable t) {
                        Channels.fireExceptionCaught(this.ctx, t);
                        return;
                    }
                }
                IdleStateHandler.this.allIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, nextDelay, TimeUnit.MILLISECONDS);
            }
        }
    }

    private final class ReaderIdleTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        ReaderIdleTimeoutTask(ChannelHandlerContext ctx) {
            this.ctx = ctx;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                long currentTime = System.currentTimeMillis();
                long lastReadTime = IdleStateHandler.this.lastReadTime;
                long nextDelay = IdleStateHandler.this.readerIdleTimeMillis - (currentTime - lastReadTime);
                if (nextDelay <= 0) {
                    IdleStateHandler.this.readerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, IdleStateHandler.this.readerIdleTimeMillis, TimeUnit.MILLISECONDS);
                    try {
                        IdleStateHandler.this.channelIdle(this.ctx, IdleState.READER_IDLE, lastReadTime);
                        return;
                    } catch (Throwable t) {
                        Channels.fireExceptionCaught(this.ctx, t);
                        return;
                    }
                }
                IdleStateHandler.this.readerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, nextDelay, TimeUnit.MILLISECONDS);
            }
        }
    }

    private final class WriterIdleTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        WriterIdleTimeoutTask(ChannelHandlerContext ctx) {
            this.ctx = ctx;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                long currentTime = System.currentTimeMillis();
                long lastWriteTime = IdleStateHandler.this.lastWriteTime;
                long nextDelay = IdleStateHandler.this.writerIdleTimeMillis - (currentTime - lastWriteTime);
                if (nextDelay <= 0) {
                    IdleStateHandler.this.writerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, IdleStateHandler.this.writerIdleTimeMillis, TimeUnit.MILLISECONDS);
                    try {
                        IdleStateHandler.this.channelIdle(this.ctx, IdleState.WRITER_IDLE, lastWriteTime);
                        return;
                    } catch (Throwable t) {
                        Channels.fireExceptionCaught(this.ctx, t);
                        return;
                    }
                }
                IdleStateHandler.this.writerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, nextDelay, TimeUnit.MILLISECONDS);
            }
        }
    }

    public IdleStateHandler(Timer timer, int readerIdleTimeSeconds, int writerIdleTimeSeconds, int allIdleTimeSeconds) {
        this(timer, (long) readerIdleTimeSeconds, (long) writerIdleTimeSeconds, (long) allIdleTimeSeconds, TimeUnit.SECONDS);
    }

    public IdleStateHandler(Timer timer, long readerIdleTime, long writerIdleTime, long allIdleTime, TimeUnit unit) {
        if (timer == null) {
            throw new NullPointerException("timer");
        } else if (unit == null) {
            throw new NullPointerException("unit");
        } else {
            this.timer = timer;
            if (readerIdleTime <= 0) {
                this.readerIdleTimeMillis = 0;
            } else {
                this.readerIdleTimeMillis = Math.max(unit.toMillis(readerIdleTime), 1);
            }
            if (writerIdleTime <= 0) {
                this.writerIdleTimeMillis = 0;
            } else {
                this.writerIdleTimeMillis = Math.max(unit.toMillis(writerIdleTime), 1);
            }
            if (allIdleTime <= 0) {
                this.allIdleTimeMillis = 0;
            } else {
                this.allIdleTimeMillis = Math.max(unit.toMillis(allIdleTime), 1);
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
        this.lastReadTime = System.currentTimeMillis();
        ctx.sendUpstream(e);
    }

    public void writeComplete(ChannelHandlerContext ctx, WriteCompletionEvent e) throws Exception {
        if (e.getWrittenAmount() > 0) {
            this.lastWriteTime = System.currentTimeMillis();
        }
        ctx.sendUpstream(e);
    }

    private void initialize(ChannelHandlerContext ctx) {
        long currentTimeMillis = System.currentTimeMillis();
        this.lastWriteTime = currentTimeMillis;
        this.lastReadTime = currentTimeMillis;
        if (this.readerIdleTimeMillis > 0) {
            this.readerIdleTimeout = this.timer.newTimeout(new ReaderIdleTimeoutTask(ctx), this.readerIdleTimeMillis, TimeUnit.MILLISECONDS);
        }
        if (this.writerIdleTimeMillis > 0) {
            this.writerIdleTimeout = this.timer.newTimeout(new WriterIdleTimeoutTask(ctx), this.writerIdleTimeMillis, TimeUnit.MILLISECONDS);
        }
        if (this.allIdleTimeMillis > 0) {
            this.allIdleTimeout = this.timer.newTimeout(new AllIdleTimeoutTask(ctx), this.allIdleTimeMillis, TimeUnit.MILLISECONDS);
        }
    }

    private void destroy() {
        if (this.readerIdleTimeout != null) {
            this.readerIdleTimeout.cancel();
            this.readerIdleTimeout = null;
        }
        if (this.writerIdleTimeout != null) {
            this.writerIdleTimeout.cancel();
            this.writerIdleTimeout = null;
        }
        if (this.allIdleTimeout != null) {
            this.allIdleTimeout.cancel();
            this.allIdleTimeout = null;
        }
    }

    protected void channelIdle(ChannelHandlerContext ctx, IdleState state, long lastActivityTimeMillis) throws Exception {
        ctx.sendUpstream(new DefaultIdleStateEvent(ctx.getChannel(), state, lastActivityTimeMillis));
    }
}
