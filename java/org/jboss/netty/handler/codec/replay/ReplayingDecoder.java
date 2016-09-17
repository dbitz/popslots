package org.jboss.netty.handler.codec.replay;

import java.net.SocketAddress;
import java.util.concurrent.atomic.AtomicReference;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;

public abstract class ReplayingDecoder<T extends Enum<T>> extends SimpleChannelUpstreamHandler {
    private int checkpoint;
    private final AtomicReference<ChannelBuffer> cumulation;
    private ReplayingDecoderBuffer replayable;
    private T state;
    private final boolean unfold;

    protected abstract Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, T t) throws Exception;

    protected ReplayingDecoder() {
        this(null);
    }

    protected ReplayingDecoder(boolean unfold) {
        this(null, unfold);
    }

    protected ReplayingDecoder(T initialState) {
        this(initialState, false);
    }

    protected ReplayingDecoder(T initialState, boolean unfold) {
        this.cumulation = new AtomicReference();
        this.state = initialState;
        this.unfold = unfold;
    }

    protected void checkpoint() {
        ChannelBuffer cumulation = (ChannelBuffer) this.cumulation.get();
        if (cumulation != null) {
            this.checkpoint = cumulation.readerIndex();
        } else {
            this.checkpoint = -1;
        }
    }

    protected void checkpoint(T state) {
        checkpoint();
        setState(state);
    }

    protected T getState() {
        return this.state;
    }

    protected T setState(T newState) {
        T oldState = this.state;
        this.state = newState;
        return oldState;
    }

    protected int actualReadableBytes() {
        return internalBuffer().readableBytes();
    }

    protected ChannelBuffer internalBuffer() {
        ChannelBuffer buf = (ChannelBuffer) this.cumulation.get();
        if (buf == null) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        return buf;
    }

    protected Object decodeLast(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer, T state) throws Exception {
        return decode(ctx, channel, buffer, state);
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        ChannelBuffer m = e.getMessage();
        if (m instanceof ChannelBuffer) {
            ChannelBuffer input = m;
            if (input.readable()) {
                ChannelBuffer cumulation = cumulation(ctx);
                cumulation.discardReadBytes();
                cumulation.writeBytes(input);
                callDecode(ctx, e.getChannel(), cumulation, e.getRemoteAddress());
                return;
            }
            return;
        }
        ctx.sendUpstream(e);
    }

    public void channelDisconnected(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        cleanup(ctx, e);
    }

    public void channelClosed(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        cleanup(ctx, e);
    }

    public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    private void callDecode(ChannelHandlerContext context, Channel channel, ChannelBuffer cumulation, SocketAddress remoteAddress) throws Exception {
        while (cumulation.readable()) {
            int oldReaderIndex = cumulation.readerIndex();
            this.checkpoint = oldReaderIndex;
            Object obj = null;
            T oldState = this.state;
            try {
                obj = decode(context, channel, this.replayable, this.state);
                if (obj == null) {
                    if (oldReaderIndex == cumulation.readerIndex() && oldState == this.state) {
                        throw new IllegalStateException("null cannot be returned if no data is consumed and state didn't change.");
                    }
                }
            } catch (ReplayError e) {
                int checkpoint = this.checkpoint;
                if (checkpoint >= 0) {
                    cumulation.readerIndex(checkpoint);
                }
            }
            if (obj != null) {
                if (oldReaderIndex == cumulation.readerIndex() && oldState == this.state) {
                    throw new IllegalStateException("decode() method must consume at least one byte if it returned a decoded message (caused by: " + getClass() + ")");
                }
                unfoldAndfireMessageReceived(context, obj, remoteAddress);
            } else {
                return;
            }
        }
    }

    private void unfoldAndfireMessageReceived(ChannelHandlerContext context, Object result, SocketAddress remoteAddress) {
        if (!this.unfold) {
            Channels.fireMessageReceived(context, result, remoteAddress);
        } else if (result instanceof Object[]) {
            for (Object r : (Object[]) result) {
                Channels.fireMessageReceived(context, r, remoteAddress);
            }
        } else if (result instanceof Iterable) {
            for (Object r2 : (Iterable) result) {
                Channels.fireMessageReceived(context, r2, remoteAddress);
            }
        } else {
            Channels.fireMessageReceived(context, result, remoteAddress);
        }
    }

    private void cleanup(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        try {
            ChannelBuffer cumulation = (ChannelBuffer) this.cumulation.getAndSet(null);
            if (cumulation != null) {
                this.replayable.terminate();
                if (cumulation.readable()) {
                    callDecode(ctx, e.getChannel(), cumulation, null);
                }
                Object partiallyDecoded = decodeLast(ctx, e.getChannel(), this.replayable, this.state);
                if (partiallyDecoded != null) {
                    unfoldAndfireMessageReceived(ctx, partiallyDecoded, null);
                }
                ctx.sendUpstream(e);
            }
        } catch (ReplayError e2) {
        } finally {
            ctx.sendUpstream(e);
        }
    }

    private ChannelBuffer cumulation(ChannelHandlerContext ctx) {
        ChannelBuffer buf = (ChannelBuffer) this.cumulation.get();
        if (buf != null) {
            return buf;
        }
        buf = new UnsafeDynamicChannelBuffer(ctx.getChannel().getConfig().getBufferFactory());
        if (!this.cumulation.compareAndSet(null, buf)) {
            return (ChannelBuffer) this.cumulation.get();
        }
        this.replayable = new ReplayingDecoderBuffer(buf);
        return buf;
    }
}
