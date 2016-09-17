package com.helpshift.network;

import java.io.IOException;
import java.io.InputStream;

public class HttpEntity {
    private InputStream content;
    private String contentEncoding;
    private long contentLength;
    private String contentType;

    public void setContent(InputStream content) {
        this.content = content;
    }

    public InputStream getContent() {
        return this.content;
    }

    public void setContentLength(long contentLength) {
        this.contentLength = contentLength;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public void setContentEncoding(String contentEncoding) {
        this.contentEncoding = contentEncoding;
    }

    public String getContentEncoding() {
        return this.contentEncoding;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getContentType() {
        return this.contentType;
    }

    public void consumeContent() throws IOException {
        if (this.content != null) {
            this.content.close();
        }
    }
}
