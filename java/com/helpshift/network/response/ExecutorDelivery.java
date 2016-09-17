package com.helpshift.network.response;

import android.os.Handler;
import com.helpshift.network.errors.NetworkError;
import com.helpshift.network.request.Request;
import java.util.concurrent.Executor;

public class ExecutorDelivery implements ResponseDelivery {
    private final Executor responsePoster;

    private class ResponseDeliveryRunnable implements Runnable {
        private final Request request;
        private final Response response;
        private final Runnable runnable;

        public ResponseDeliveryRunnable(Request request, Response response, Runnable runnable) {
            this.request = request;
            this.response = response;
            this.runnable = runnable;
        }

        public void run() {
            try {
                if (this.response.isSuccess()) {
                    this.request.deliverResponse(this.response.result);
                } else {
                    this.request.deliverError(this.response.error);
                }
            } catch (Throwable th) {
            }
            this.request.markDelivered();
            if (this.runnable != null) {
                this.runnable.run();
            }
        }
    }

    public ExecutorDelivery(final Handler handler) {
        this.responsePoster = new Executor() {
            public void execute(Runnable command) {
                handler.post(command);
            }
        };
    }

    public void postResponse(Request request, Response<?> response) {
        postResponse(request, response, null);
    }

    public void postResponse(Request request, Response<?> response, Runnable runnable) {
        this.responsePoster.execute(new ResponseDeliveryRunnable(request, response, runnable));
    }

    public void postError(Request request, NetworkError error) {
        this.responsePoster.execute(new ResponseDeliveryRunnable(request, Response.error(error, Integer.valueOf(request.getSequence())), null));
    }
}
