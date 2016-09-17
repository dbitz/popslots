package com.helpshift.network.response;

public interface ResponseParser<T> {
    Response<T> parseResponse(NetworkResponse networkResponse);
}
