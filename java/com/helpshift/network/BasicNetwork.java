package com.helpshift.network;

import android.util.Log;
import com.helpshift.model.InfoModelFactory;
import com.helpshift.network.errors.NetworkError;
import com.helpshift.network.request.Request;
import com.helpshift.network.response.NetworkResponse;
import com.helpshift.network.util.ByteArrayPool;
import com.helpshift.network.util.PoolingByteArrayOutputStream;
import com.helpshift.network.util.constants.NetworkConstants;
import com.helpshift.network.util.constants.NetworkConstants.ErrorCodes;
import com.helpshift.util.TimeUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.game.InviteUsersRequest;

public class BasicNetwork implements Network {
    private static final String TAG = "HelpshiftDebug";
    protected final HttpStack httpStack;
    protected final ByteArrayPool pool = new ByteArrayPool(NetworkConstants.DEFAULT_POOL_SIZE);

    public BasicNetwork(HttpStack httpStack) {
        this.httpStack = httpStack;
    }

    protected static Map<String, String> convertHeaders(Header[] headers) {
        Map<String, String> result = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : headers) {
            result.put(header.getName(), header.getValue());
        }
        return result;
    }

    public NetworkResponse performRequest(Request request) throws NetworkError {
        int statusCode;
        do {
            httpResponse = null;
            try {
                httpResponse = this.httpStack.performRequest(request);
                statusCode = httpResponse.getStatusLine().getStatusCode();
                Map<String, String> responseHeaders = convertHeaders(httpResponse.getAllHeaders());
                if (responseHeaders != null && responseHeaders.containsKey(Names.ETAG)) {
                    InfoModelFactory.getInstance().sdkInfoModel.addEtag((String) responseHeaders.get(Names.ETAG), request.getUrl());
                }
                if (statusCode == HttpStatus.SC_NOT_MODIFIED) {
                    return new NetworkResponse(HttpStatus.SC_NOT_MODIFIED, null, responseHeaders, true, Integer.valueOf(request.getSequence()));
                }
                byte[] responseContents;
                if (httpResponse.getEntity() != null) {
                    responseContents = entityToBytes(httpResponse.getEntity());
                } else if (request.getMethod() == 0) {
                    responseContents = new byte[0];
                } else {
                    throw new NetworkError(ErrorCodes.CONTENT_NOT_FOUND);
                }
                if (statusCode >= BaseRequest.InitBuddyList && statusCode <= InviteUsersRequest.MAX_EXPIRY_TIME) {
                    return new NetworkResponse(statusCode, responseContents, responseHeaders, false, Integer.valueOf(request.getSequence()));
                }
                if (statusCode == HttpStatus.SC_UNPROCESSABLE_ENTITY) {
                    for (Entry pair : responseHeaders.entrySet()) {
                        if (pair.getKey().equals("HS-UEpoch")) {
                            InfoModelFactory.getInstance().sdkInfoModel.setServerTimeDelta(TimeUtil.calculateTimeAdjustment((String) pair.getValue()));
                            break;
                        }
                    }
                    throw new NetworkError(ErrorCodes.TIMESTAMP_MISMATCH);
                } else if (statusCode == HttpStatus.SC_REQUEST_TOO_LONG) {
                    throw new NetworkError(ErrorCodes.ENTITY_TOO_LARGE);
                } else if (statusCode == HttpStatus.SC_FORBIDDEN || statusCode == HttpStatus.SC_UNAUTHORIZED) {
                    throw new NetworkError(ErrorCodes.UNAUTHORIZED_ACCESS);
                } else if (statusCode >= HttpStatus.SC_BAD_REQUEST && statusCode < HttpStatus.SC_INTERNAL_SERVER_ERROR) {
                    throw new NetworkError(ErrorCodes.OBJECT_NOT_FOUND);
                }
            } catch (SocketTimeoutException e) {
                throw new NetworkError(ErrorCodes.REQUEST_TIMEOUT);
            } catch (Throwable e2) {
                throw new NetworkError("Bad URL " + request.getUrl(), e2);
            } catch (Throwable e22) {
                throw new NetworkError(e22);
            } catch (Throwable e222) {
                HttpResponse httpResponse;
                if (httpResponse == null) {
                    throw new NetworkError(ErrorCodes.NO_CONNECTION, e222.getMessage());
                }
                throw new NetworkError(e222);
            }
        } while (statusCode < HttpStatus.SC_INTERNAL_SERVER_ERROR);
        throw new NetworkError(ErrorCodes.SERVER_ERROR);
    }

    protected byte[] entityToBytes(HttpEntity entity) throws IOException, NetworkError {
        PoolingByteArrayOutputStream bytes = new PoolingByteArrayOutputStream(this.pool, (int) entity.getContentLength());
        byte[] buffer = null;
        try {
            InputStream in = entity.getContent();
            if (in == null) {
                throw new NetworkError(ErrorCodes.SERVER_ERROR);
            }
            buffer = this.pool.getBuf(1024);
            while (true) {
                int count = in.read(buffer);
                if (count == -1) {
                    break;
                }
                bytes.write(buffer, 0, count);
            }
            byte[] toByteArray = bytes.toByteArray();
            return toByteArray;
        } finally {
            try {
                entity.consumeContent();
            } catch (IOException e) {
                Log.d(TAG, "Error occurred when calling consumingContent", e);
            }
            this.pool.returnBuf(buffer);
            bytes.close();
        }
    }
}
