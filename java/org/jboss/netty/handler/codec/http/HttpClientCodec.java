package org.jboss.netty.handler.codec.http;

import com.facebook.internal.Utility;
import com.playstudios.popslots.R;
import java.util.Queue;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import sfs2x.client.requests.BaseRequest;

public class HttpClientCodec implements ChannelDownstreamHandler, ChannelUpstreamHandler {
    private final HttpResponseDecoder decoder;
    volatile boolean done;
    private final HttpRequestEncoder encoder;
    final Queue<HttpMethod> queue;

    private final class Decoder extends HttpResponseDecoder {
        Decoder(int maxInitialLineLength, int maxHeaderSize, int maxChunkSize) {
            super(maxInitialLineLength, maxHeaderSize, maxChunkSize);
        }

        protected Object decode(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer, State state) throws Exception {
            if (HttpClientCodec.this.done) {
                return buffer.readBytes(actualReadableBytes());
            }
            return super.decode(ctx, channel, buffer, state);
        }

        protected boolean isContentAlwaysEmpty(HttpMessage msg) {
            HttpMethod method = (HttpMethod) HttpClientCodec.this.queue.poll();
            switch (method.getName().charAt(0)) {
                case R.styleable.Theme_textColorSearchUrl /*67*/:
                    if (((HttpResponse) msg).getStatus().getCode() == BaseRequest.InitBuddyList && HttpMethod.CONNECT.equals(method)) {
                        HttpClientCodec.this.done = true;
                        HttpClientCodec.this.queue.clear();
                        return true;
                    }
                case R.styleable.Theme_listPreferredItemPaddingLeft /*72*/:
                    if (HttpMethod.HEAD.equals(method)) {
                        if (msg.isChunked()) {
                            return false;
                        }
                        return true;
                    }
                    break;
            }
            return super.isContentAlwaysEmpty(msg);
        }
    }

    private final class Encoder extends HttpRequestEncoder {
        Encoder() {
        }

        protected Object encode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
            if ((msg instanceof HttpRequest) && !HttpClientCodec.this.done) {
                HttpClientCodec.this.queue.offer(((HttpRequest) msg).getMethod());
            }
            return super.encode(ctx, channel, msg);
        }
    }

    public HttpClientCodec() {
        this(4096, Utility.DEFAULT_STREAM_BUFFER_SIZE, Utility.DEFAULT_STREAM_BUFFER_SIZE);
    }

    public HttpClientCodec(int maxInitialLineLength, int maxHeaderSize, int maxChunkSize) {
        this.queue = new LinkedTransferQueue();
        this.encoder = new Encoder();
        this.decoder = new Decoder(maxInitialLineLength, maxHeaderSize, maxChunkSize);
    }

    public void handleUpstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        this.decoder.handleUpstream(ctx, e);
    }

    public void handleDownstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        this.encoder.handleDownstream(ctx, e);
    }
}
