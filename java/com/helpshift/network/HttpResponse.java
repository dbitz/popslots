package com.helpshift.network;

import java.util.ArrayList;
import java.util.List;

public class HttpResponse {
    private HttpEntity entity;
    private List<Header> headers;
    private StatusLine statusLine;

    public HttpResponse(StatusLine statusLine) {
        if (statusLine == null) {
            throw new IllegalArgumentException("Status line may not be null.");
        }
        this.statusLine = statusLine;
        this.headers = new ArrayList(16);
    }

    public void setEntity(HttpEntity entity) {
        this.entity = entity;
    }

    public HttpEntity getEntity() {
        return this.entity;
    }

    public StatusLine getStatusLine() {
        return this.statusLine;
    }

    public void addHeader(Header header) {
        if (header != null) {
            this.headers.add(header);
        }
    }

    public Header[] getAllHeaders() {
        return (Header[]) this.headers.toArray(new Header[this.headers.size()]);
    }
}
