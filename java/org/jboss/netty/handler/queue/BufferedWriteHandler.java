package org.jboss.netty.handler.queue;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.util.internal.LinkedTransferQueue;

public class BufferedWriteHandler extends SimpleChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!BufferedWriteHandler.class.desiredAssertionStatus());
    private final boolean consolidateOnFlush;
    private volatile ChannelHandlerContext ctx;
    private final Queue<MessageEvent> queue;

    public BufferedWriteHandler() {
        this(false);
    }

    public BufferedWriteHandler(Queue<MessageEvent> queue) {
        this(queue, false);
    }

    public BufferedWriteHandler(boolean consolidateOnFlush) {
        this(new LinkedTransferQueue(), consolidateOnFlush);
    }

    public BufferedWriteHandler(Queue<MessageEvent> queue, boolean consolidateOnFlush) {
        if (queue == null) {
            throw new NullPointerException("queue");
        }
        this.queue = queue;
        this.consolidateOnFlush = consolidateOnFlush;
    }

    public boolean isConsolidateOnFlush() {
        return this.consolidateOnFlush;
    }

    protected Queue<MessageEvent> getQueue() {
        return this.queue;
    }

    public void flush() {
        flush(this.consolidateOnFlush);
    }

    public void flush(boolean consolidateOnFlush) {
        ChannelHandlerContext ctx = this.ctx;
        if (ctx != null) {
            Queue<MessageEvent> queue = getQueue();
            MessageEvent e;
            if (!consolidateOnFlush) {
                synchronized (this) {
                    while (true) {
                        e = (MessageEvent) queue.poll();
                        if (e == null) {
                        } else {
                            ctx.sendDownstream(e);
                        }
                    }
                }
            } else if (!queue.isEmpty()) {
                List<MessageEvent> pendingWrites = new ArrayList();
                synchronized (this) {
                    while (true) {
                        e = (MessageEvent) queue.poll();
                        if (e == null) {
                            consolidatedWrite(pendingWrites);
                        } else if (e.getMessage() instanceof ChannelBuffer) {
                            pendingWrites.add(e);
                        } else {
                            pendingWrites = consolidatedWrite(pendingWrites);
                            if (pendingWrites == null) {
                                pendingWrites = new ArrayList();
                            }
                            ctx.sendDownstream(e);
                        }
                    }
                }
            }
        }
    }

    private List<MessageEvent> consolidatedWrite(final List<MessageEvent> pendingWrites) {
        int size = pendingWrites.size();
        if (size == 1) {
            this.ctx.sendDownstream((ChannelEvent) pendingWrites.remove(0));
            return pendingWrites;
        } else if (size == 0) {
            return pendingWrites;
        } else {
            ChannelBuffer[] data = new ChannelBuffer[size];
            for (int i = 0; i < data.length; i++) {
                data[i] = (ChannelBuffer) ((MessageEvent) pendingWrites.get(i)).getMessage();
            }
            Object composite = ChannelBuffers.wrappedBuffer(data);
            ChannelFuture future = Channels.future(this.ctx.getChannel());
            future.addListener(new ChannelFutureListener() {
                public void operationComplete(ChannelFuture future) throws Exception {
                    if (future.isSuccess()) {
                        for (MessageEvent e : pendingWrites) {
                            e.getFuture().setSuccess();
                        }
                        return;
                    }
                    Throwable cause = future.getCause();
                    for (MessageEvent e2 : pendingWrites) {
                        e2.getFuture().setFailure(cause);
                    }
                }
            });
            Channels.write(this.ctx, future, composite);
            return null;
        }
    }

    public void writeRequested(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        if (this.ctx == null) {
            this.ctx = ctx;
        } else if (!($assertionsDisabled || this.ctx == ctx)) {
            throw new AssertionError();
        }
        getQueue().add(e);
    }

    public void disconnectRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        try {
            flush(this.consolidateOnFlush);
        } finally {
            ctx.sendDownstream(e);
        }
    }

    public void closeRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        try {
            flush(this.consolidateOnFlush);
        } finally {
            ctx.sendDownstream(e);
        }
    }
}
