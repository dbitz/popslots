package com.helpshift.network;

import com.helpshift.exceptions.InstallException;
import com.helpshift.network.request.Request;
import java.io.IOException;

public interface HttpStack {
    HttpResponse performRequest(Request request) throws IOException, InstallException;
}
