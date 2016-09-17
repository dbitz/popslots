package com.helpshift.network;

public class StatusLine {
    String reasonPhrase;
    int statusCode;

    public StatusLine(int statusCode, String reasonPhrase) {
        this.statusCode = statusCode;
        this.reasonPhrase = reasonPhrase;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getReasonPhrase() {
        return this.reasonPhrase;
    }
}
