package com.helpshift.network.response;

import java.util.Map;

public class NetworkResponse {
    private byte[] data;
    private Map<String, String> headers;
    private boolean notModified;
    private Integer requestIdentifier;
    private int statusCode;

    public NetworkResponse(int statusCode, byte[] data, Map<String, String> headers, boolean notModified, Integer requestIdentifier) {
        this.statusCode = statusCode;
        this.data = data;
        this.headers = headers;
        this.notModified = notModified;
        this.requestIdentifier = requestIdentifier;
    }

    public byte[] getData() {
        return this.data;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public boolean isNotModified() {
        return this.notModified;
    }

    public Integer getRequestIdentifier() {
        return this.requestIdentifier;
    }
}
