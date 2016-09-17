package org.jboss.netty.channel;

import com.helpshift.support.model.ErrorReport;

public class FailedChannelFuture extends CompleteChannelFuture {
    private final Throwable cause;

    public FailedChannelFuture(Channel channel, Throwable cause) {
        super(channel);
        if (cause == null) {
            throw new NullPointerException(ErrorReport.KEY_CAUSE);
        }
        this.cause = cause;
    }

    public Throwable getCause() {
        return this.cause;
    }

    public boolean isSuccess() {
        return false;
    }
}
