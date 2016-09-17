package org.jboss.netty.handler.codec.http;

import java.util.Queue;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.handler.codec.embedder.EncoderEmbedder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.jboss.netty.util.internal.LinkedTransferQueue;

public abstract class HttpContentEncoder extends SimpleChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!HttpContentEncoder.class.desiredAssertionStatus());
    private final Queue<String> acceptEncodingQueue = new LinkedTransferQueue();
    private volatile EncoderEmbedder<ChannelBuffer> encoder;

    protected abstract String getTargetContentEncoding(String str) throws Exception;

    protected abstract EncoderEmbedder<ChannelBuffer> newContentEncoder(String str) throws Exception;

    protected HttpContentEncoder() {
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        HttpMessage msg = e.getMessage();
        if (msg instanceof HttpMessage) {
            String acceptedEncoding = msg.getHeader(Names.ACCEPT_ENCODING);
            if (acceptedEncoding == null) {
                acceptedEncoding = Values.IDENTITY;
            }
            boolean offered = this.acceptEncodingQueue.offer(acceptedEncoding);
            if ($assertionsDisabled || offered) {
                ctx.sendUpstream(e);
                return;
            }
            throw new AssertionError();
        }
        ctx.sendUpstream(e);
    }

    public void writeRequested(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        HttpMessage msg = e.getMessage();
        ChannelBuffer content;
        if (msg instanceof HttpMessage) {
            HttpMessage m = msg;
            this.encoder = null;
            String acceptEncoding = (String) this.acceptEncodingQueue.poll();
            if (acceptEncoding == null) {
                throw new IllegalStateException("cannot send more responses than requests");
            }
            EncoderEmbedder newContentEncoder = newContentEncoder(acceptEncoding);
            this.encoder = newContentEncoder;
            if (newContentEncoder != null) {
                m.setHeader(Names.CONTENT_ENCODING, getTargetContentEncoding(acceptEncoding));
                if (!m.isChunked()) {
                    content = ChannelBuffers.wrappedBuffer(encode(m.getContent()), finishEncode());
                    m.setContent(content);
                    if (m.containsHeader(Names.CONTENT_LENGTH)) {
                        m.setHeader(Names.CONTENT_LENGTH, Integer.toString(content.readableBytes()));
                    }
                }
            }
            ctx.sendDownstream(e);
        } else if (msg instanceof HttpChunk) {
            HttpChunk c = (HttpChunk) msg;
            content = c.getContent();
            if (this.encoder == null) {
                ctx.sendDownstream(e);
            } else if (c.isLast()) {
                ChannelBuffer lastProduct = finishEncode();
                if (lastProduct.readable()) {
                    Channels.write(ctx, Channels.succeededFuture(e.getChannel()), new DefaultHttpChunk(lastProduct), e.getRemoteAddress());
                }
                ctx.sendDownstream(e);
            } else {
                content = encode(content);
                if (content.readable()) {
                    c.setContent(content);
                    ctx.sendDownstream(e);
                }
            }
        } else {
            ctx.sendDownstream(e);
        }
    }

    private ChannelBuffer encode(ChannelBuffer buf) {
        this.encoder.offer(buf);
        return ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.encoder.pollAll(new ChannelBuffer[this.encoder.size()]));
    }

    private ChannelBuffer finishEncode() {
        ChannelBuffer result;
        if (this.encoder.finish()) {
            result = ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.encoder.pollAll(new ChannelBuffer[this.encoder.size()]));
        } else {
            result = ChannelBuffers.EMPTY_BUFFER;
        }
        this.encoder = null;
        return result;
    }
}
