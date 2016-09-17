package com.helpshift.network.request;

import com.helpshift.network.Network;
import java.util.concurrent.ExecutorService;

public class RequestManager {
    public static RequestQueue newRequestQueue(Network network, Integer deliveryType, ExecutorService dispatcherPool) {
        return RequestQueue.getRequestQueue(network, deliveryType, dispatcherPool);
    }
}
