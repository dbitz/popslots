package com.helpshift.network.response;

import com.helpshift.network.errors.NetworkError;
import com.helpshift.network.util.HttpHeaderParser;
import com.helpshift.network.util.constants.NetworkConstants.ErrorCodes;
import org.json.JSONObject;

public class JsonObjectResponseParser implements ResponseParser<JSONObject> {
    public Response<JSONObject> parseResponse(NetworkResponse response) {
        try {
            return Response.success(new JSONObject(new String(response.getData(), HttpHeaderParser.parseCharset(response.getHeaders(), "utf-8"))), response.getRequestIdentifier());
        } catch (Throwable e) {
            return Response.error(new NetworkError(ErrorCodes.PARSE_ERROR, e), response.getRequestIdentifier());
        } catch (Throwable je) {
            return Response.error(new NetworkError(ErrorCodes.PARSE_ERROR, je), response.getRequestIdentifier());
        }
    }
}
