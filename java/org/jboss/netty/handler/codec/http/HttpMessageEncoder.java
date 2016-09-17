package org.jboss.netty.handler.codec.http;

import java.io.UnsupportedEncodingException;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;
import org.jboss.netty.util.CharsetUtil;

public abstract class HttpMessageEncoder extends OneToOneEncoder {
    private static final ChannelBuffer LAST_CHUNK = ChannelBuffers.copiedBuffer((CharSequence) "0\r\n\r\n", CharsetUtil.US_ASCII);
    private volatile boolean chunked;

    protected abstract void encodeInitialLine(ChannelBuffer channelBuffer, HttpMessage httpMessage) throws Exception;

    protected HttpMessageEncoder() {
    }

    protected Object encode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        if (msg instanceof HttpMessage) {
            HttpMessage m = (HttpMessage) msg;
            boolean chunked = HttpCodecUtil.isTransferEncodingChunked(m);
            this.chunked = chunked;
            ChannelBuffer header = ChannelBuffers.dynamicBuffer(channel.getConfig().getBufferFactory());
            encodeInitialLine(header, m);
            encodeHeaders(header, m);
            header.writeByte(13);
            header.writeByte(10);
            if (!m.getContent().readable()) {
                return header;
            }
            if (chunked) {
                throw new IllegalArgumentException("HttpMessage.content must be empty if Transfer-Encoding is chunked.");
            }
            return ChannelBuffers.wrappedBuffer(header, content);
        } else if (!(msg instanceof HttpChunk)) {
            return msg;
        } else {
            HttpChunk chunk = (HttpChunk) msg;
            if (this.chunked) {
                if (chunk.isLast()) {
                    this.chunked = false;
                    if (!(chunk instanceof HttpChunkTrailer)) {
                        return LAST_CHUNK.duplicate();
                    }
                    ChannelBuffer trailer = ChannelBuffers.dynamicBuffer(channel.getConfig().getBufferFactory());
                    trailer.writeByte(48);
                    trailer.writeByte(13);
                    trailer.writeByte(10);
                    encodeTrailingHeaders(trailer, (HttpChunkTrailer) chunk);
                    trailer.writeByte(13);
                    trailer.writeByte(10);
                    return trailer;
                }
                int contentLength = chunk.getContent().readableBytes();
                return ChannelBuffers.wrappedBuffer(ChannelBuffers.copiedBuffer(Integer.toHexString(contentLength), CharsetUtil.US_ASCII), ChannelBuffers.wrappedBuffer(HttpCodecUtil.CRLF), content.slice(content.readerIndex(), contentLength), ChannelBuffers.wrappedBuffer(HttpCodecUtil.CRLF));
            } else if (chunk.isLast()) {
                return null;
            } else {
                return chunk.getContent();
            }
        }
    }

    private void encodeHeaders(ChannelBuffer buf, HttpMessage message) {
        try {
            for (Entry<String, String> h : message.getHeaders()) {
                encodeHeader(buf, (String) h.getKey(), (String) h.getValue());
            }
        } catch (UnsupportedEncodingException e) {
            throw ((Error) new Error().initCause(e));
        }
    }

    private void encodeTrailingHeaders(ChannelBuffer buf, HttpChunkTrailer trailer) {
        try {
            for (Entry<String, String> h : trailer.getHeaders()) {
                encodeHeader(buf, (String) h.getKey(), (String) h.getValue());
            }
        } catch (UnsupportedEncodingException e) {
            throw ((Error) new Error().initCause(e));
        }
    }

    private void encodeHeader(ChannelBuffer buf, String header, String value) throws UnsupportedEncodingException {
        buf.writeBytes(header.getBytes("ASCII"));
        buf.writeByte(58);
        buf.writeByte(32);
        buf.writeBytes(value.getBytes("ASCII"));
        buf.writeByte(13);
        buf.writeByte(10);
    }
}
