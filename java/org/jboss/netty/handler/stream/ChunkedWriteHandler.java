package org.jboss.netty.handler.stream;

import java.util.Queue;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import sfs2x.client.util.BuddyOnlineState;

public class ChunkedWriteHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!ChunkedWriteHandler.class.desiredAssertionStatus());
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ChunkedWriteHandler.class);
    private ChannelHandlerContext ctx;
    private MessageEvent currentEvent;
    private final Queue<MessageEvent> queue = new LinkedTransferQueue();

    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.INTEREST_OPS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public void resumeTransfer() {
        ChannelHandlerContext ctx = this.ctx;
        if (ctx != null) {
            try {
                flush(ctx);
            } catch (Exception e) {
                logger.warn("Unexpected exception while sending chunks.", e);
            }
        }
    }

    public void handleDownstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        if (e instanceof MessageEvent) {
            boolean offered = this.queue.offer((MessageEvent) e);
            if (!$assertionsDisabled && !offered) {
                throw new AssertionError();
            } else if (ctx.getChannel().isWritable()) {
                this.ctx = ctx;
                flush(ctx);
                return;
            } else {
                return;
            }
        }
        ctx.sendDownstream(e);
    }

    public void handleUpstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent cse = (ChannelStateEvent) e;
            switch (AnonymousClass2.$SwitchMap$org$jboss$netty$channel$ChannelState[cse.getState().ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    flush(ctx);
                    break;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (!Boolean.TRUE.equals(cse.getValue())) {
                        discard(ctx);
                        break;
                    }
                    break;
            }
        }
        ctx.sendUpstream(e);
    }

    private synchronized void discard(ChannelHandlerContext ctx) {
        while (true) {
            if (this.currentEvent == null) {
                this.currentEvent = (MessageEvent) this.queue.poll();
            }
            if (this.currentEvent != null) {
                MessageEvent currentEvent = this.currentEvent;
                this.currentEvent = null;
                Object m = currentEvent.getMessage();
                if (m instanceof ChunkedInput) {
                    closeInput((ChunkedInput) m);
                    Channels.write(ctx, currentEvent.getFuture(), ChannelBuffers.EMPTY_BUFFER, currentEvent.getRemoteAddress());
                } else {
                    ctx.sendDownstream(currentEvent);
                }
            }
        }
    }

    private synchronized void flush(ChannelHandlerContext ctx) throws Exception {
        Channel channel = ctx.getChannel();
        if (!channel.isConnected()) {
            discard(ctx);
        }
        while (channel.isWritable()) {
            if (this.currentEvent == null) {
                this.currentEvent = (MessageEvent) this.queue.poll();
            }
            if (this.currentEvent != null) {
                if (this.currentEvent.getFuture().isDone()) {
                    this.currentEvent = null;
                } else {
                    Object m = this.currentEvent.getMessage();
                    final MessageEvent currentEvent;
                    if (m instanceof ChunkedInput) {
                        ChunkedInput chunks = (ChunkedInput) m;
                        try {
                            boolean later;
                            ChannelFuture writeFuture;
                            Object chunk = chunks.nextChunk();
                            if (chunk == null) {
                                chunk = ChannelBuffers.EMPTY_BUFFER;
                                later = true;
                            } else {
                                later = false;
                            }
                            boolean endOfInput = chunks.isEndOfInput();
                            currentEvent = this.currentEvent;
                            if (endOfInput) {
                                this.currentEvent = null;
                                closeInput(chunks);
                                writeFuture = currentEvent.getFuture();
                            } else {
                                writeFuture = Channels.future(channel);
                                writeFuture.addListener(new ChannelFutureListener() {
                                    public void operationComplete(ChannelFuture future) throws Exception {
                                        if (!future.isSuccess()) {
                                            currentEvent.getFuture().setFailure(future.getCause());
                                            ChunkedWriteHandler.closeInput((ChunkedInput) currentEvent.getMessage());
                                        }
                                    }
                                });
                            }
                            Channels.write(ctx, writeFuture, chunk, currentEvent.getRemoteAddress());
                            if (later) {
                                break;
                            }
                        } catch (Throwable t) {
                            currentEvent = this.currentEvent;
                            this.currentEvent = null;
                            currentEvent.getFuture().setFailure(t);
                            Channels.fireExceptionCaught(ctx, t);
                            closeInput(chunks);
                        }
                    } else {
                        currentEvent = this.currentEvent;
                        this.currentEvent = null;
                        ctx.sendDownstream(currentEvent);
                    }
                }
                if (!channel.isConnected()) {
                    discard(ctx);
                    break;
                }
            }
            break;
        }
    }

    static void closeInput(ChunkedInput chunks) {
        try {
            chunks.close();
        } catch (Throwable t) {
            logger.warn("Failed to close a chunked input.", t);
        }
    }
}
