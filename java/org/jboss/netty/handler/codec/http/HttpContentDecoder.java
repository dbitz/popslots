package org.jboss.netty.handler.codec.http;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.embedder.DecoderEmbedder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public abstract class HttpContentDecoder extends SimpleChannelUpstreamHandler {
    private DecoderEmbedder<ChannelBuffer> decoder;

    protected abstract DecoderEmbedder<ChannelBuffer> newContentDecoder(String str) throws Exception;

    protected HttpContentDecoder() {
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        HttpMessage msg = e.getMessage();
        ChannelBuffer content;
        if (msg instanceof HttpMessage) {
            boolean hasContent;
            HttpMessage m = msg;
            this.decoder = null;
            String contentEncoding = m.getHeader(Names.CONTENT_ENCODING);
            if (contentEncoding != null) {
                contentEncoding = contentEncoding.trim();
            } else {
                contentEncoding = Values.IDENTITY;
            }
            if (m.isChunked() || m.getContent().readable()) {
                hasContent = true;
            } else {
                hasContent = false;
            }
            if (hasContent) {
                DecoderEmbedder newContentDecoder = newContentDecoder(contentEncoding);
                this.decoder = newContentDecoder;
                if (newContentDecoder != null) {
                    m.setHeader(Names.CONTENT_ENCODING, getTargetContentEncoding(contentEncoding));
                    if (!m.isChunked()) {
                        content = ChannelBuffers.wrappedBuffer(decode(m.getContent()), finishDecode());
                        m.setContent(content);
                        if (m.containsHeader(Names.CONTENT_LENGTH)) {
                            m.setHeader(Names.CONTENT_LENGTH, Integer.toString(content.readableBytes()));
                        }
                    }
                }
            }
            ctx.sendUpstream(e);
        } else if (msg instanceof HttpChunk) {
            HttpChunk c = (HttpChunk) msg;
            content = c.getContent();
            if (this.decoder == null) {
                ctx.sendUpstream(e);
            } else if (c.isLast()) {
                ChannelBuffer lastProduct = finishDecode();
                if (lastProduct.readable()) {
                    Channels.fireMessageReceived(ctx, new DefaultHttpChunk(lastProduct), e.getRemoteAddress());
                }
                ctx.sendUpstream(e);
            } else {
                content = decode(content);
                if (content.readable()) {
                    c.setContent(content);
                    ctx.sendUpstream(e);
                }
            }
        } else {
            ctx.sendUpstream(e);
        }
    }

    protected String getTargetContentEncoding(String contentEncoding) throws Exception {
        return Values.IDENTITY;
    }

    private ChannelBuffer decode(ChannelBuffer buf) {
        this.decoder.offer(buf);
        return ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.decoder.pollAll(new ChannelBuffer[this.decoder.size()]));
    }

    private ChannelBuffer finishDecode() {
        ChannelBuffer result;
        if (this.decoder.finish()) {
            result = ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.decoder.pollAll(new ChannelBuffer[this.decoder.size()]));
        } else {
            result = ChannelBuffers.EMPTY_BUFFER;
        }
        this.decoder = null;
        return result;
    }
}
