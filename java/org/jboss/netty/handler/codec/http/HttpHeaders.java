package org.jboss.netty.handler.codec.http;

import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.util.constants.KeyValueStoreColumns;
import com.playstudios.popslots.R;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class HttpHeaders {
    private static final int BUCKET_SIZE = 17;
    private final Entry[] entries = new Entry[BUCKET_SIZE];
    private final Entry head = new Entry(-1, null, null);

    private static final class Entry implements java.util.Map.Entry<String, String> {
        Entry after;
        Entry before;
        final int hash;
        final String key;
        Entry next;
        String value;

        Entry(int hash, String key, String value) {
            this.hash = hash;
            this.key = key;
            this.value = value;
        }

        void remove() {
            this.before.after = this.after;
            this.after.before = this.before;
        }

        void addBefore(Entry e) {
            this.after = e;
            this.before = e.before;
            this.before.after = this;
            this.after.before = this;
        }

        public String getKey() {
            return this.key;
        }

        public String getValue() {
            return this.value;
        }

        public String setValue(String value) {
            if (value == null) {
                throw new NullPointerException(KeyValueStoreColumns.value);
            }
            HttpCodecUtil.validateHeaderValue(value);
            String oldValue = this.value;
            this.value = value;
            return oldValue;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    public static final class Names {
        public static final String ACCEPT = "Accept";
        public static final String ACCEPT_CHARSET = "Accept-Charset";
        public static final String ACCEPT_ENCODING = "Accept-Encoding";
        public static final String ACCEPT_LANGUAGE = "Accept-Language";
        public static final String ACCEPT_PATCH = "Accept-Patch";
        public static final String ACCEPT_RANGES = "Accept-Ranges";
        public static final String AGE = "Age";
        public static final String ALLOW = "Allow";
        public static final String AUTHORIZATION = "Authorization";
        public static final String CACHE_CONTROL = "Cache-Control";
        public static final String CONNECTION = "Connection";
        public static final String CONTENT_BASE = "Content-Base";
        public static final String CONTENT_ENCODING = "Content-Encoding";
        public static final String CONTENT_LANGUAGE = "Content-Language";
        public static final String CONTENT_LENGTH = "Content-Length";
        public static final String CONTENT_LOCATION = "Content-Location";
        public static final String CONTENT_MD5 = "Content-MD5";
        public static final String CONTENT_RANGE = "Content-Range";
        public static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding";
        public static final String CONTENT_TYPE = "Content-Type";
        public static final String COOKIE = "Cookie";
        public static final String DATE = "Date";
        public static final String ETAG = "ETag";
        public static final String EXPECT = "Expect";
        public static final String EXPIRES = "Expires";
        public static final String FROM = "From";
        public static final String HOST = "Host";
        public static final String IF_MATCH = "If-Match";
        public static final String IF_MODIFIED_SINCE = "If-Modified-Since";
        public static final String IF_NONE_MATCH = "If-None-Match";
        public static final String IF_RANGE = "If-Range";
        public static final String IF_UNMODIFIED_SINCE = "If-Unmodified-Since";
        public static final String LAST_MODIFIED = "Last-Modified";
        public static final String LOCATION = "Location";
        public static final String MAX_FORWARDS = "Max-Forwards";
        public static final String ORIGIN = "Origin";
        public static final String PRAGMA = "Pragma";
        public static final String PROXY_AUTHENTICATE = "Proxy-Authenticate";
        public static final String PROXY_AUTHORIZATION = "Proxy-Authorization";
        public static final String RANGE = "Range";
        public static final String REFERER = "Referer";
        public static final String RETRY_AFTER = "Retry-After";
        public static final String SEC_WEBSOCKET_KEY1 = "Sec-WebSocket-Key1";
        public static final String SEC_WEBSOCKET_KEY2 = "Sec-WebSocket-Key2";
        public static final String SEC_WEBSOCKET_LOCATION = "Sec-WebSocket-Location";
        public static final String SEC_WEBSOCKET_ORIGIN = "Sec-WebSocket-Origin";
        public static final String SEC_WEBSOCKET_PROTOCOL = "Sec-WebSocket-Protocol";
        public static final String SERVER = "Server";
        public static final String SET_COOKIE = "Set-Cookie";
        public static final String SET_COOKIE2 = "Set-Cookie2";
        public static final String TE = "TE";
        public static final String TRAILER = "Trailer";
        public static final String TRANSFER_ENCODING = "Transfer-Encoding";
        public static final String UPGRADE = "Upgrade";
        public static final String USER_AGENT = "User-Agent";
        public static final String VARY = "Vary";
        public static final String VIA = "Via";
        public static final String WARNING = "Warning";
        public static final String WEBSOCKET_LOCATION = "WebSocket-Location";
        public static final String WEBSOCKET_ORIGIN = "WebSocket-Origin";
        public static final String WEBSOCKET_PROTOCOL = "WebSocket-Protocol";
        public static final String WWW_AUTHENTICATE = "WWW-Authenticate";

        private Names() {
        }
    }

    public static final class Values {
        public static final String BASE64 = "base64";
        public static final String BINARY = "binary";
        public static final String BYTES = "bytes";
        public static final String CHARSET = "charset";
        public static final String CHUNKED = "chunked";
        public static final String CLOSE = "close";
        public static final String COMPRESS = "compress";
        public static final String CONTINUE = "100-continue";
        public static final String DEFLATE = "deflate";
        public static final String GZIP = "gzip";
        public static final String IDENTITY = "identity";
        public static final String KEEP_ALIVE = "keep-alive";
        public static final String MAX_AGE = "max-age";
        public static final String MAX_STALE = "max-stale";
        public static final String MIN_FRESH = "min-fresh";
        public static final String MUST_REVALIDATE = "must-revalidate";
        public static final String NONE = "none";
        public static final String NO_CACHE = "no-cache";
        public static final String NO_STORE = "no-store";
        public static final String NO_TRANSFORM = "no-transform";
        public static final String ONLY_IF_CACHED = "only-if-cached";
        public static final String PRIVATE = "private";
        public static final String PROXY_REVALIDATE = "proxy-revalidate";
        public static final String PUBLIC = "public";
        public static final String QUOTED_PRINTABLE = "quoted-printable";
        public static final String S_MAXAGE = "s-maxage";
        public static final String TRAILERS = "trailers";
        public static final String UPGRADE = "Upgrade";
        public static final String WEBSOCKET = "WebSocket";

        private Values() {
        }
    }

    public static boolean isKeepAlive(HttpMessage message) {
        String connection = message.getHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONNECTION);
        if (org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values.CLOSE.equalsIgnoreCase(connection)) {
            return false;
        }
        if (!message.getProtocolVersion().isKeepAliveDefault()) {
            return org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values.KEEP_ALIVE.equalsIgnoreCase(connection);
        }
        if (org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values.CLOSE.equalsIgnoreCase(connection)) {
            return false;
        }
        return true;
    }

    public static void setKeepAlive(HttpMessage message, boolean keepAlive) {
        if (message.getProtocolVersion().isKeepAliveDefault()) {
            if (keepAlive) {
                message.removeHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONNECTION);
            } else {
                message.setHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONNECTION, org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values.CLOSE);
            }
        } else if (keepAlive) {
            message.setHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONNECTION, org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values.KEEP_ALIVE);
        } else {
            message.removeHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONNECTION);
        }
    }

    public static String getHeader(HttpMessage message, String name) {
        return message.getHeader(name);
    }

    public static String getHeader(HttpMessage message, String name, String defaultValue) {
        String value = message.getHeader(name);
        return value == null ? defaultValue : value;
    }

    public static void setHeader(HttpMessage message, String name, Object value) {
        message.setHeader(name, value);
    }

    public static void setHeader(HttpMessage message, String name, Iterable<?> values) {
        message.setHeader(name, (Iterable) values);
    }

    public static void addHeader(HttpMessage message, String name, Object value) {
        message.addHeader(name, value);
    }

    public static int getIntHeader(HttpMessage message, String name) {
        String value = getHeader(message, name);
        if (value != null) {
            return Integer.parseInt(value);
        }
        throw new NumberFormatException("null");
    }

    public static int getIntHeader(HttpMessage message, String name, int defaultValue) {
        String value = getHeader(message, name);
        if (value != null) {
            try {
                defaultValue = Integer.parseInt(value);
            } catch (NumberFormatException e) {
            }
        }
        return defaultValue;
    }

    public static void setIntHeader(HttpMessage message, String name, int value) {
        message.setHeader(name, Integer.valueOf(value));
    }

    public static void setIntHeader(HttpMessage message, String name, Iterable<Integer> values) {
        message.setHeader(name, (Iterable) values);
    }

    public static void addIntHeader(HttpMessage message, String name, int value) {
        message.addHeader(name, Integer.valueOf(value));
    }

    public static long getContentLength(HttpMessage message) {
        return getContentLength(message, 0);
    }

    public static long getContentLength(HttpMessage message, long defaultValue) {
        String contentLength = message.getHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONTENT_LENGTH);
        if (contentLength != null) {
            return Long.parseLong(contentLength);
        }
        if (message instanceof HttpRequest) {
            HttpRequest req = (HttpRequest) message;
            if (HttpMethod.GET.equals(req.getMethod()) && req.containsHeader(Names.SEC_WEBSOCKET_KEY1) && req.containsHeader(Names.SEC_WEBSOCKET_KEY2)) {
                return 8;
            }
            return defaultValue;
        } else if (!(message instanceof HttpResponse)) {
            return defaultValue;
        } else {
            HttpResponse res = (HttpResponse) message;
            if (res.getStatus().getCode() == R.styleable.Theme_buttonStyleSmall && res.containsHeader(Names.SEC_WEBSOCKET_ORIGIN) && res.containsHeader(Names.SEC_WEBSOCKET_LOCATION)) {
                return 16;
            }
            return defaultValue;
        }
    }

    public static void setContentLength(HttpMessage message, long length) {
        message.setHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.CONTENT_LENGTH, Long.valueOf(length));
    }

    public static String getHost(HttpMessage message) {
        return message.getHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.HOST);
    }

    public static String getHost(HttpMessage message, String defaultValue) {
        return getHeader(message, org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.HOST, defaultValue);
    }

    public static void setHost(HttpMessage message, String value) {
        message.setHeader(org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names.HOST, (Object) value);
    }

    private static int hash(String name) {
        int h = 0;
        for (int i = name.length() - 1; i >= 0; i--) {
            char c = name.charAt(i);
            if (c >= 'A' && c <= 'Z') {
                c = (char) (c + 32);
            }
            h = (h * 31) + c;
        }
        if (h > 0) {
            return h;
        }
        if (h == Integer.MIN_VALUE) {
            return Integer.MAX_VALUE;
        }
        return -h;
    }

    private static boolean eq(String name1, String name2) {
        int nameLen = name1.length();
        if (nameLen != name2.length()) {
            return false;
        }
        for (int i = nameLen - 1; i >= 0; i--) {
            char c1 = name1.charAt(i);
            char c2 = name2.charAt(i);
            if (c1 != c2) {
                if (c1 >= 'A' && c1 <= 'Z') {
                    c1 = (char) (c1 + 32);
                }
                if (c2 >= 'A' && c2 <= 'Z') {
                    c2 = (char) (c2 + 32);
                }
                if (c1 != c2) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int index(int hash) {
        return hash % BUCKET_SIZE;
    }

    HttpHeaders() {
        Entry entry = this.head;
        Entry entry2 = this.head;
        Entry entry3 = this.head;
        entry2.after = entry3;
        entry.before = entry3;
    }

    void validateHeaderName(String name) {
        HttpCodecUtil.validateHeaderName(name);
    }

    void addHeader(String name, Object value) {
        validateHeaderName(name);
        String strVal = toString(value);
        HttpCodecUtil.validateHeaderValue(strVal);
        int h = hash(name);
        addHeader0(h, index(h), name, strVal);
    }

    private void addHeader0(int h, int i, String name, String value) {
        Entry e = this.entries[i];
        Entry[] entryArr = this.entries;
        Entry newEntry = new Entry(h, name, value);
        entryArr[i] = newEntry;
        newEntry.next = e;
        newEntry.addBefore(this.head);
    }

    void removeHeader(String name) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        }
        int h = hash(name);
        removeHeader0(h, index(h), name);
    }

    private void removeHeader0(int h, int i, String name) {
        Entry e = this.entries[i];
        if (e != null) {
            Entry next;
            while (e.hash == h && eq(name, e.key)) {
                e.remove();
                next = e.next;
                if (next != null) {
                    this.entries[i] = next;
                    e = next;
                } else {
                    this.entries[i] = null;
                    return;
                }
            }
            while (true) {
                next = e.next;
                if (next != null) {
                    if (next.hash == h && eq(name, next.key)) {
                        e.next = next.next;
                        next.remove();
                    } else {
                        e = next;
                    }
                } else {
                    return;
                }
            }
        }
    }

    void setHeader(String name, Object value) {
        validateHeaderName(name);
        String strVal = toString(value);
        HttpCodecUtil.validateHeaderValue(strVal);
        int h = hash(name);
        int i = index(h);
        removeHeader0(h, i, name);
        addHeader0(h, i, name, strVal);
    }

    void setHeader(String name, Iterable<?> values) {
        if (values == null) {
            throw new NullPointerException("values");
        }
        validateHeaderName(name);
        int h = hash(name);
        int i = index(h);
        removeHeader0(h, i, name);
        for (Object v : values) {
            if (v != null) {
                String strVal = toString(v);
                HttpCodecUtil.validateHeaderValue(strVal);
                addHeader0(h, i, name, strVal);
            } else {
                return;
            }
        }
    }

    void clearHeaders() {
        for (int i = 0; i < this.entries.length; i++) {
            this.entries[i] = null;
        }
        Entry entry = this.head;
        Entry entry2 = this.head;
        Entry entry3 = this.head;
        entry2.after = entry3;
        entry.before = entry3;
    }

    String getHeader(String name) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        }
        int h = hash(name);
        Entry e = this.entries[index(h)];
        while (e != null) {
            if (e.hash == h && eq(name, e.key)) {
                return e.value;
            }
            e = e.next;
        }
        return null;
    }

    List<String> getHeaders(String name) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        }
        LinkedList<String> values = new LinkedList();
        int h = hash(name);
        Entry e = this.entries[index(h)];
        while (e != null) {
            if (e.hash == h && eq(name, e.key)) {
                values.addFirst(e.value);
            }
            e = e.next;
        }
        return values;
    }

    List<java.util.Map.Entry<String, String>> getHeaders() {
        List<java.util.Map.Entry<String, String>> all = new LinkedList();
        for (Entry e = this.head.after; e != this.head; e = e.after) {
            all.add(e);
        }
        return all;
    }

    boolean containsHeader(String name) {
        return getHeader(name) != null;
    }

    Set<String> getHeaderNames() {
        Set<String> names = new TreeSet(CaseIgnoringComparator.INSTANCE);
        for (Entry e = this.head.after; e != this.head; e = e.after) {
            names.add(e.key);
        }
        return names;
    }

    private static String toString(Object value) {
        if (value == null) {
            return null;
        }
        return value.toString();
    }
}
