package com.helpshift.network;

import com.adjust.sdk.Constants;
import com.helpshift.exceptions.InstallException;
import com.helpshift.network.request.Request;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.GZIPInputStream;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class HurlStack implements HttpStack {
    private static final String TAG = "HelpshiftDebug";

    public HttpResponse performRequest(Request request) throws IOException, InstallException {
        HttpURLConnection connection = (HttpURLConnection) request.getParsedURL().openConnection();
        configureConnectionForRequest(connection, request);
        if (connection.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        HttpResponse response = new HttpResponse(new StatusLine(connection.getResponseCode(), connection.getResponseMessage()));
        boolean isContentGzipd = false;
        for (Entry<String, List<String>> header : connection.getHeaderFields().entrySet()) {
            if (header.getKey() != null) {
                if (((String) header.getKey()).equals(Names.CONTENT_ENCODING) && ((String) ((List) header.getValue()).get(0)).equalsIgnoreCase(Values.GZIP)) {
                    isContentGzipd = true;
                }
                response.addHeader(new Header((String) header.getKey(), (String) ((List) header.getValue()).get(0)));
            }
        }
        response.setEntity(entityFromConnection(connection, isContentGzipd));
        return response;
    }

    private static HttpEntity entityFromConnection(HttpURLConnection connection, boolean isContentGzipd) {
        InputStream inputStream;
        HttpEntity entity = new HttpEntity();
        if (isContentGzipd) {
            try {
                inputStream = new GZIPInputStream(new BufferedInputStream(connection.getInputStream()));
            } catch (IOException e) {
                inputStream = connection.getErrorStream();
            }
        } else {
            inputStream = new BufferedInputStream(connection.getInputStream());
        }
        entity.setContent(inputStream);
        entity.setContentLength((long) connection.getContentLength());
        entity.setContentEncoding(connection.getContentEncoding());
        entity.setContentType(connection.getContentType());
        return entity;
    }

    private void configureConnectionForRequest(HttpURLConnection connection, Request request) throws InstallException, IOException {
        Map<String, String> headerMap = request.getHeaders();
        for (String headerName : headerMap.keySet()) {
            connection.addRequestProperty(headerName, (String) headerMap.get(headerName));
        }
        connection.setConnectTimeout(request.getConnectTimeout());
        connection.setReadTimeout(request.getReadTimeout());
        connection.setUseCaches(request.isUsingCache());
        connection.setDoInput(request.isDoInput());
        connection.setRequestProperty(Names.USER_AGENT, request.getUserAgent());
        connection.setRequestMethod(request.getMethodString());
        if (request.getMethod() == 1) {
            connection.setDoOutput(request.isDoOutput());
            connection.setRequestProperty("Content-type", request.getContentType());
            OutputStream outputStream = connection.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(outputStream, Constants.ENCODING));
            writer.write(request.getPOSTParametersQuery());
            writer.flush();
            writer.close();
            outputStream.close();
        }
    }
}
