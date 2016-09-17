package org.jboss.netty.channel;

import com.helpshift.support.model.ErrorReport;
import org.jboss.netty.util.internal.StackTraceSimplifier;

public class DefaultExceptionEvent implements ExceptionEvent {
    private final Throwable cause;
    private final Channel channel;

    public DefaultExceptionEvent(Channel channel, Throwable cause) {
        if (channel == null) {
            throw new NullPointerException("channel");
        } else if (cause == null) {
            throw new NullPointerException(ErrorReport.KEY_CAUSE);
        } else {
            this.channel = channel;
            this.cause = cause;
            StackTraceSimplifier.simplify(cause);
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
    }

    public Throwable getCause() {
        return this.cause;
    }

    public String toString() {
        return getChannel().toString() + " EXCEPTION: " + this.cause;
    }
}
