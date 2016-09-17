package com.helpshift.network.errors;

import com.helpshift.network.response.NetworkResponse;

public class NetworkError extends Exception {
    public final NetworkResponse networkResponse;
    private Integer reason;

    public NetworkError(Integer reason) {
        this.reason = reason;
        this.networkResponse = null;
    }

    public NetworkError(Integer reason, NetworkResponse response) {
        this.reason = reason;
        this.networkResponse = response;
    }

    public NetworkError(Integer reason, String exceptionMessage) {
        super(exceptionMessage);
        this.reason = reason;
        this.networkResponse = null;
    }

    public NetworkError(String exceptionMessage, Throwable reason) {
        super(exceptionMessage, reason);
        this.networkResponse = null;
    }

    public NetworkError(Integer reason, Throwable cause) {
        super(cause);
        this.reason = reason;
        this.networkResponse = null;
    }

    public NetworkError(Throwable cause) {
        super(cause);
        this.networkResponse = null;
    }

    public Integer getReason() {
        return this.reason;
    }
}
