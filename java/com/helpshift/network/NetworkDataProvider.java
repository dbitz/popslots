package com.helpshift.network;

import com.helpshift.network.request.Request;

public interface NetworkDataProvider {
    Request getRequest();

    void setBatchSize(Integer num);
}
