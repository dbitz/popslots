package com.helpshift.network.request;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.helpshift.network.Network;
import com.helpshift.network.errors.NetworkError;
import com.helpshift.network.response.ExecutorDelivery;
import com.helpshift.network.response.NetworkResponse;
import com.helpshift.network.response.ResponseDelivery;
import com.helpshift.network.util.constants.NetworkConstants.ErrorCodes;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class RequestQueue {
    private static final String TAG = "HelpshiftDebug";
    private final ResponseDelivery delivery;
    private ExecutorService dispatcherPool;
    private final Network network;

    public static class DeliveryType {
        public static final Integer ON_MAIN_THREAD = Integer.valueOf(0);
        public static final Integer ON_NEW_THREAD = Integer.valueOf(1);
    }

    protected RequestQueue(Network network, ResponseDelivery delivery, ExecutorService dispatcherPool) {
        this.network = network;
        this.dispatcherPool = dispatcherPool;
        this.delivery = delivery;
    }

    public static RequestQueue getRequestQueue(Network network, Integer deliveryType, ExecutorService dispatcherPool) {
        ResponseDelivery delivery;
        if (DeliveryType.ON_NEW_THREAD.equals(deliveryType)) {
            HandlerThread networkHandlerThread = new HandlerThread("ResponseThread");
            networkHandlerThread.start();
            delivery = new ExecutorDelivery(new Handler(networkHandlerThread.getLooper()));
        } else {
            delivery = new ExecutorDelivery(new Handler(Looper.getMainLooper()));
        }
        return new RequestQueue(network, delivery, dispatcherPool);
    }

    public Future add(final Request request) {
        return this.dispatcherPool.submit(new Callable() {
            public Object call() throws Exception {
                try {
                    NetworkResponse networkResponse = RequestQueue.this.network.performRequest(request);
                    if (!networkResponse.isNotModified()) {
                        Object response = request.parseNetworkResponse(networkResponse);
                        RequestQueue.this.delivery.postResponse(request, response);
                        return response;
                    } else if (request.hasHadResponseDelivered()) {
                        return null;
                    } else {
                        throw new NetworkError(ErrorCodes.CONTENT_UNCHANGED);
                    }
                } catch (NetworkError networkError) {
                    RequestQueue.this.parseAndDeliverNetworkError(request, networkError);
                    return networkError;
                }
            }
        });
    }

    protected void parseAndDeliverNetworkError(Request request, NetworkError error) {
        this.delivery.postError(request, request.parseNetworkError(error));
    }

    public void shutdown(boolean awaitTermination) {
        this.dispatcherPool.shutdown();
        if (awaitTermination) {
            try {
                this.dispatcherPool.awaitTermination(60, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Log.d(TAG, "Pool shutdown interrupted :", e);
            }
        }
    }
}
