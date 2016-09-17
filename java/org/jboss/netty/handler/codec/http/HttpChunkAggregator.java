package org.jboss.netty.handler.codec.http;

import java.util.List;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders;

public class HttpChunkAggregator extends SimpleChannelUpstreamHandler {
    private HttpMessage currentMessage;
    private final int maxContentLength;

    public HttpChunkAggregator(int maxContentLength) {
        if (maxContentLength <= 0) {
            throw new IllegalArgumentException("maxContentLength must be a positive integer: " + maxContentLength);
        }
        this.maxContentLength = maxContentLength;
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        HttpMessage msg = e.getMessage();
        Object currentMessage = this.currentMessage;
        if (msg instanceof HttpMessage) {
            HttpMessage m = msg;
            if (m.isChunked()) {
                List<String> encodings = m.getHeaders(Names.TRANSFER_ENCODING);
                encodings.remove(Values.CHUNKED);
                if (encodings.isEmpty()) {
                    m.removeHeader(Names.TRANSFER_ENCODING);
                }
                m.setChunked(false);
                m.setContent(ChannelBuffers.dynamicBuffer(e.getChannel().getConfig().getBufferFactory()));
                this.currentMessage = m;
                return;
            }
            this.currentMessage = null;
            ctx.sendUpstream(e);
        } else if (!(msg instanceof HttpChunk)) {
            ctx.sendUpstream(e);
        } else if (currentMessage == null) {
            throw new IllegalStateException("received " + HttpChunk.class.getSimpleName() + " without " + HttpMessage.class.getSimpleName());
        } else {
            HttpChunk chunk = (HttpChunk) msg;
            ChannelBuffer content = currentMessage.getContent();
            if (content.readableBytes() > this.maxContentLength - chunk.getContent().readableBytes()) {
                throw new TooLongFrameException("HTTP content length exceeded " + this.maxContentLength + " bytes.");
            }
            content.writeBytes(chunk.getContent());
            if (chunk.isLast()) {
                this.currentMessage = null;
                if (chunk instanceof HttpChunkTrailer) {
                    for (Entry<String, String> header : ((HttpChunkTrailer) chunk).getHeaders()) {
                        currentMessage.setHeader((String) header.getKey(), header.getValue());
                    }
                }
                currentMessage.setHeader(RtspHeaders.Names.CONTENT_LENGTH, String.valueOf(content.readableBytes()));
                Channels.fireMessageReceived(ctx, currentMessage, e.getRemoteAddress());
            }
        }
    }
}
