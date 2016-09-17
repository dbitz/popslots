package org.jboss.netty.handler.codec.http;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.compression.ZlibDecoder;
import org.jboss.netty.handler.codec.compression.ZlibWrapper;
import org.jboss.netty.handler.codec.embedder.DecoderEmbedder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class HttpContentDecompressor extends HttpContentDecoder {
    protected DecoderEmbedder<ChannelBuffer> newContentDecoder(String contentEncoding) throws Exception {
        if (Values.GZIP.equalsIgnoreCase(contentEncoding) || "x-gzip".equalsIgnoreCase(contentEncoding)) {
            return new DecoderEmbedder(new ZlibDecoder(ZlibWrapper.GZIP));
        } else if (!Values.DEFLATE.equalsIgnoreCase(contentEncoding) && !"x-deflate".equalsIgnoreCase(contentEncoding)) {
            return null;
        } else {
            return new DecoderEmbedder(new ZlibDecoder(ZlibWrapper.ZLIB));
        }
    }
}
