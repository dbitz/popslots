package org.jboss.netty.handler.codec.http;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class QueryStringDecoder {
    private final Charset charset;
    private Map<String, List<String>> params;
    private String path;
    private final String uri;

    public QueryStringDecoder(String uri) {
        this(uri, HttpCodecUtil.DEFAULT_CHARSET);
    }

    public QueryStringDecoder(String uri, Charset charset) {
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
    public QueryStringDecoder(String uri, String charset) {
        this(uri, Charset.forName(charset));
    }

    public QueryStringDecoder(URI uri) {
        this(uri, HttpCodecUtil.DEFAULT_CHARSET);
    }

    public QueryStringDecoder(URI uri, Charset charset) {
        if (uri == null) {
            throw new NullPointerException("uri");
        } else if (charset == null) {
            throw new NullPointerException(Values.CHARSET);
        } else {
            this.uri = uri.toASCIIString();
            this.charset = charset;
        }
    }

    @Deprecated
    public QueryStringDecoder(URI uri, String charset) {
        this(uri, Charset.forName(charset));
    }

    public String getPath() {
        if (this.path == null) {
            int pathEndPos = this.uri.indexOf(63);
            if (pathEndPos < 0) {
                this.path = this.uri;
            } else {
                String substring = this.uri.substring(0, pathEndPos);
                this.path = substring;
                return substring;
            }
        }
        return this.path;
    }

    public Map<String, List<String>> getParameters() {
        if (this.params == null) {
            int pathLength = getPath().length();
            if (this.uri.length() == pathLength) {
                return Collections.emptyMap();
            }
            this.params = decodeParams(this.uri.substring(pathLength + 1));
        }
        return this.params;
    }

    private Map<String, List<String>> decodeParams(String s) {
        Map<String, List<String>> params = new LinkedHashMap();
        String name = null;
        int pos = 0;
        int i = 0;
        while (i < s.length()) {
            char c = s.charAt(i);
            if (c == '=' && name == null) {
                if (pos != i) {
                    name = decodeComponent(s.substring(pos, i), this.charset);
                }
                pos = i + 1;
            } else if (c == '&') {
                if (name == null && pos != i) {
                    addParam(params, decodeComponent(s.substring(pos, i), this.charset), "");
                } else if (name != null) {
                    addParam(params, name, decodeComponent(s.substring(pos, i), this.charset));
                    name = null;
                }
                pos = i + 1;
            }
            i++;
        }
        if (pos != i) {
            if (name == null) {
                addParam(params, decodeComponent(s.substring(pos, i), this.charset), "");
            } else {
                addParam(params, name, decodeComponent(s.substring(pos, i), this.charset));
            }
        } else if (name != null) {
            addParam(params, name, "");
        }
        return params;
    }

    private static String decodeComponent(String s, Charset charset) {
        if (s == null) {
            return "";
        }
        try {
            return URLDecoder.decode(s, charset.name());
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedCharsetException(charset.name());
        }
    }

    private static void addParam(Map<String, List<String>> params, String name, String value) {
        List<String> values = (List) params.get(name);
        if (values == null) {
            values = new ArrayList(1);
            params.put(name, values);
        }
        values.add(value);
    }
}
