package org.jboss.netty.handler.codec.frame;

import java.net.SocketAddress;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;

public abstract class FrameDecoder extends SimpleChannelUpstreamHandler {
    private ChannelBuffer cumulation;
    private final boolean unfold;

    protected abstract Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception;

    protected FrameDecoder() {
        this(false);
    }

    protected FrameDecoder(boolean unfold) {
        this.unfold = unfold;
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        ChannelBuffer m = e.getMessage();
        if (m instanceof ChannelBuffer) {
            ChannelBuffer input = m;
            if (input.readable()) {
                ChannelBuffer cumulation = cumulation(ctx);
                if (cumulation.readable()) {
                    cumulation.discardReadBytes();
                    cumulation.writeBytes(input);
                    callDecode(ctx, e.getChannel(), cumulation, e.getRemoteAddress());
                    return;
                }
                callDecode(ctx, e.getChannel(), input, e.getRemoteAddress());
                if (input.readable()) {
                    cumulation.writeBytes(input);
                    return;
                }
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

    protected Object decodeLast(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer) throws Exception {
        return decode(ctx, channel, buffer);
    }

    private void callDecode(ChannelHandlerContext context, Channel channel, ChannelBuffer cumulation, SocketAddress remoteAddress) throws Exception {
        while (cumulation.readable()) {
            int oldReaderIndex = cumulation.readerIndex();
            Object frame = decode(context, channel, cumulation);
            if (frame == null) {
                if (oldReaderIndex == cumulation.readerIndex()) {
                    return;
                }
            } else if (oldReaderIndex == cumulation.readerIndex()) {
                throw new IllegalStateException("decode() method must read at least one byte if it returned a frame (caused by: " + getClass() + ")");
            } else {
                unfoldAndFireMessageReceived(context, remoteAddress, frame);
            }
        }
    }

    private void unfoldAndFireMessageReceived(ChannelHandlerContext context, SocketAddress remoteAddress, Object result) {
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
            ChannelBuffer cumulation = this.cumulation;
            if (cumulation != null) {
                this.cumulation = null;
                if (cumulation.readable()) {
                    callDecode(ctx, ctx.getChannel(), cumulation, null);
                }
                Object partialFrame = decodeLast(ctx, ctx.getChannel(), cumulation);
                if (partialFrame != null) {
                    unfoldAndFireMessageReceived(ctx, null, partialFrame);
                }
                ctx.sendUpstream(e);
            }
        } finally {
            ctx.sendUpstream(e);
        }
    }

    private ChannelBuffer cumulation(ChannelHandlerContext ctx) {
        ChannelBuffer c = this.cumulation;
        if (c != null) {
            return c;
        }
        c = ChannelBuffers.dynamicBuffer(ctx.getChannel().getConfig().getBufferFactory());
        this.cumulation = c;
        return c;
    }
}
