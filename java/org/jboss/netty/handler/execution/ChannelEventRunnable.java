package org.jboss.netty.handler.execution;

import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.util.EstimatableObjectWrapper;

public class ChannelEventRunnable implements Runnable, EstimatableObjectWrapper {
    private final ChannelHandlerContext ctx;
    private final ChannelEvent e;
    int estimatedSize;

    public ChannelEventRunnable(ChannelHandlerContext ctx, ChannelEvent e) {
        this.ctx = ctx;
        this.e = e;
    }

    public ChannelHandlerContext getContext() {
        return this.ctx;
    }

    public ChannelEvent getEvent() {
        return this.e;
    }

    public void run() {
        this.ctx.sendUpstream(this.e);
    }

    public Object unwrap() {
        return this.e;
    }
}
