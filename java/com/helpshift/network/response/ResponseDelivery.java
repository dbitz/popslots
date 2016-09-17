package com.helpshift.network.response;

import com.helpshift.network.errors.NetworkError;
import com.helpshift.network.request.Request;

public interface ResponseDelivery {
    void postError(Request request, NetworkError networkError);

    void postResponse(Request request, Response<?> response);

    void postResponse(Request request, Response<?> response, Runnable runnable);
}
