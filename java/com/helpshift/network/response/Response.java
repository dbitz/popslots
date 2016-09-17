package com.helpshift.network.response;

import com.helpshift.network.errors.NetworkError;

public class Response<T> {
    public final NetworkError error;
    public boolean intermediate;
    public final T result;

    public interface ErrorListener {
        void onErrorResponse(NetworkError networkError, Integer num);
    }

    public interface Listener<T> {
        void onResponse(T t, Integer num);
    }

    public static <T> Response<T> success(T result, Integer requestIdentifier) {
        return new Response((Object) result, requestIdentifier);
    }

    public static <T> Response<T> error(NetworkError error, Integer requestIdentifier) {
        return new Response(error, requestIdentifier);
    }

    public boolean isSuccess() {
        return this.error == null;
    }

    private Response(T result, Integer requestIdentifier) {
        this.intermediate = false;
        this.result = result;
        this.error = null;
    }

    private Response(NetworkError error, Integer requestIdentifier) {
        this.intermediate = false;
        this.result = null;
        this.error = error;
    }
}
