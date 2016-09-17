package org.jboss.netty.handler.codec.http;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.compression.ZlibEncoder;
import org.jboss.netty.handler.codec.compression.ZlibWrapper;
import org.jboss.netty.handler.codec.embedder.EncoderEmbedder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import sfs2x.client.util.BuddyOnlineState;

public class HttpContentCompressor extends HttpContentEncoder {
    private final int compressionLevel;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper = new int[ZlibWrapper.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.GZIP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.ZLIB.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public HttpContentCompressor() {
        this(6);
    }

    public HttpContentCompressor(int compressionLevel) {
        if (compressionLevel < 0 || compressionLevel > 9) {
            throw new IllegalArgumentException("compressionLevel: " + compressionLevel + " (expected: 0-9)");
        }
        this.compressionLevel = compressionLevel;
    }

    protected EncoderEmbedder<ChannelBuffer> newContentEncoder(String acceptEncoding) throws Exception {
        if (determineWrapper(acceptEncoding) == null) {
            return null;
        }
        return new EncoderEmbedder(new ZlibEncoder(determineWrapper(acceptEncoding), this.compressionLevel));
    }

    protected String getTargetContentEncoding(String acceptEncoding) throws Exception {
        ZlibWrapper wrapper = determineWrapper(acceptEncoding);
        if (wrapper == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[wrapper.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return Values.GZIP;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return Values.DEFLATE;
            default:
                throw new Error();
        }
    }

    private ZlibWrapper determineWrapper(String acceptEncoding) {
        if (acceptEncoding.indexOf(Values.GZIP) >= 0) {
            return ZlibWrapper.GZIP;
        }
        if (acceptEncoding.indexOf(Values.DEFLATE) >= 0) {
            return ZlibWrapper.ZLIB;
        }
        return null;
    }
}
