package org.jboss.netty.handler.codec.http;

import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.util.constants.KeyValueStoreColumns;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.List;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class QueryStringEncoder {
    private final Charset charset;
    private final List<Param> params;
    private final String uri;

    private static final class Param {
        final String name;
        final String value;

        Param(String name, String value) {
            this.value = value;
            this.name = name;
        }
    }

    public QueryStringEncoder(String uri) {
        this(uri, HttpCodecUtil.DEFAULT_CHARSET);
    }

    public QueryStringEncoder(String uri, Charset charset) {
        this.params = new ArrayList();
        if (uri == null) {
            throw new NullPointerException("uri");
        } else if (charset == null) {
            throw new NullPointerException(Values.CHARSET);
        } else {
            this.uri = uri;
            this.charset = charset;
        }
    }

    @Deprecated
    public QueryStringEncoder(String uri, String charset) {
        this(uri, Charset.forName(charset));
    }

    public void addParam(String name, String value) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        } else if (value == null) {
            throw new NullPointerException(KeyValueStoreColumns.value);
        } else {
            this.params.add(new Param(name, value));
        }
    }

    public URI toUri() throws URISyntaxException {
        return new URI(toString());
    }

    public String toString() {
        if (this.params.isEmpty()) {
            return this.uri;
        }
        StringBuilder sb = new StringBuilder(this.uri).append("?");
        for (int i = 0; i < this.params.size(); i++) {
            Param param = (Param) this.params.get(i);
            sb.append(encodeComponent(param.name, this.charset));
            sb.append("=");
            sb.append(encodeComponent(param.value, this.charset));
            if (i != this.params.size() - 1) {
                sb.append("&");
            }
        }
        return sb.toString();
    }

    private static String encodeComponent(String s, Charset charset) {
        try {
            return URLEncoder.encode(s, charset.name()).replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedCharsetException(charset.name());
        }
    }
}
