package org.jboss.netty.util;

import com.adjust.sdk.Constants;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.IdentityHashMap;
import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class CharsetUtil {
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Charset US_ASCII = Charset.forName("US-ASCII");
    public static final Charset UTF_16 = Charset.forName("UTF-16");
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");
    public static final Charset UTF_16LE = Charset.forName("UTF-16LE");
    public static final Charset UTF_8 = Charset.forName(Constants.ENCODING);
    private static final ThreadLocal<Map<Charset, CharsetDecoder>> decoders = new ThreadLocal<Map<Charset, CharsetDecoder>>() {
        protected Map<Charset, CharsetDecoder> initialValue() {
            return new IdentityHashMap();
        }
    };
    private static final ThreadLocal<Map<Charset, CharsetEncoder>> encoders = new ThreadLocal<Map<Charset, CharsetEncoder>>() {
        protected Map<Charset, CharsetEncoder> initialValue() {
            return new IdentityHashMap();
        }
    };

    public static CharsetEncoder getEncoder(Charset charset) {
        if (charset == null) {
            throw new NullPointerException(Values.CHARSET);
        }
        Map<Charset, CharsetEncoder> map = (Map) encoders.get();
        CharsetEncoder e = (CharsetEncoder) map.get(charset);
        if (e != null) {
            e.reset();
            e.onMalformedInput(CodingErrorAction.REPLACE);
            e.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return e;
        }
        e = charset.newEncoder();
        e.onMalformedInput(CodingErrorAction.REPLACE);
        e.onUnmappableCharacter(CodingErrorAction.REPLACE);
        map.put(charset, e);
        return e;
    }

    public static CharsetDecoder getDecoder(Charset charset) {
        if (charset == null) {
            throw new NullPointerException(Values.CHARSET);
        }
        Map<Charset, CharsetDecoder> map = (Map) decoders.get();
        CharsetDecoder d = (CharsetDecoder) map.get(charset);
        if (d != null) {
            d.reset();
            d.onMalformedInput(CodingErrorAction.REPLACE);
            d.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return d;
        }
        d = charset.newDecoder();
        d.onMalformedInput(CodingErrorAction.REPLACE);
        d.onUnmappableCharacter(CodingErrorAction.REPLACE);
        map.put(charset, d);
        return d;
    }

    private CharsetUtil() {
    }
}
