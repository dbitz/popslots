package org.jboss.netty.handler.codec.http;

import com.facebook.internal.ServerProtocol;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.internal.StringUtil;

public class DefaultHttpMessage implements HttpMessage {
    private boolean chunked;
    private ChannelBuffer content = ChannelBuffers.EMPTY_BUFFER;
    private final HttpHeaders headers = new HttpHeaders();
    private HttpVersion version;

    protected DefaultHttpMessage(HttpVersion version) {
        setProtocolVersion(version);
    }

    public void addHeader(String name, Object value) {
        this.headers.addHeader(name, value);
    }

    public void setHeader(String name, Object value) {
        this.headers.setHeader(name, value);
    }

    public void setHeader(String name, Iterable<?> values) {
        this.headers.setHeader(name, (Iterable) values);
    }

    public void removeHeader(String name) {
        this.headers.removeHeader(name);
    }

    @Deprecated
    public long getContentLength() {
        return HttpHeaders.getContentLength(this);
    }

    @Deprecated
    public long getContentLength(long defaultValue) {
        return HttpHeaders.getContentLength(this, defaultValue);
    }

    public boolean isChunked() {
        if (this.chunked) {
            return true;
        }
        return HttpCodecUtil.isTransferEncodingChunked(this);
    }

    public void setChunked(boolean chunked) {
        this.chunked = chunked;
        if (chunked) {
            setContent(ChannelBuffers.EMPTY_BUFFER);
        }
    }

    @Deprecated
    public boolean isKeepAlive() {
        return HttpHeaders.isKeepAlive(this);
    }

    public void clearHeaders() {
        this.headers.clearHeaders();
    }

    public void setContent(ChannelBuffer content) {
        if (content == null) {
            content = ChannelBuffers.EMPTY_BUFFER;
        }
        if (content.readable() && isChunked()) {
            throw new IllegalArgumentException("non-empty content disallowed if this.chunked == true");
        }
        this.content = content;
    }

    public String getHeader(String name) {
        List<String> values = getHeaders(name);
        return values.size() > 0 ? (String) values.get(0) : null;
    }

    public List<String> getHeaders(String name) {
        return this.headers.getHeaders(name);
    }

    public List<Entry<String, String>> getHeaders() {
        return this.headers.getHeaders();
    }

    public boolean containsHeader(String name) {
        return this.headers.containsHeader(name);
    }

    public Set<String> getHeaderNames() {
        return this.headers.getHeaderNames();
    }

    public HttpVersion getProtocolVersion() {
        return this.version;
    }

    public void setProtocolVersion(HttpVersion version) {
        if (version == null) {
            throw new NullPointerException(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        }
        this.version = version;
    }

    public ChannelBuffer getContent() {
        return this.content;
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append(getClass().getSimpleName());
        buf.append("(version: ");
        buf.append(getProtocolVersion().getText());
        buf.append(", keepAlive: ");
        buf.append(isKeepAlive());
        buf.append(", chunked: ");
        buf.append(isChunked());
        buf.append(')');
        buf.append(StringUtil.NEWLINE);
        appendHeaders(buf);
        buf.setLength(buf.length() - StringUtil.NEWLINE.length());
        return buf.toString();
    }

    void appendHeaders(StringBuilder buf) {
        for (Entry<String, String> e : getHeaders()) {
            buf.append((String) e.getKey());
            buf.append(": ");
            buf.append((String) e.getValue());
            buf.append(StringUtil.NEWLINE);
        }
    }
}
