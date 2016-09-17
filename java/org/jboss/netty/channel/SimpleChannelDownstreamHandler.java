package org.jboss.netty.channel;

import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SimpleChannelDownstreamHandler implements ChannelDownstreamHandler {

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public void handleDownstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        if (e instanceof MessageEvent) {
            writeRequested(ctx, (MessageEvent) e);
        } else if (e instanceof ChannelStateEvent) {
            ChannelStateEvent evt = (ChannelStateEvent) e;
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[evt.getState().ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (!Boolean.TRUE.equals(evt.getValue())) {
                        closeRequested(ctx, evt);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (evt.getValue() != null) {
                        bindRequested(ctx, evt);
                        return;
                    } else {
                        unbindRequested(ctx, evt);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (evt.getValue() != null) {
                        connectRequested(ctx, evt);
                        return;
                    } else {
                        disconnectRequested(ctx, evt);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    setInterestOpsRequested(ctx, evt);
                    return;
                default:
                    ctx.sendDownstream(e);
                    return;
            }
        } else {
            ctx.sendDownstream(e);
        }
    }

    public void writeRequested(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        ctx.sendDownstream(e);
    }

    public void bindRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendDownstream(e);
    }

    public void connectRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendDownstream(e);
    }

    public void setInterestOpsRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendDownstream(e);
    }

    public void disconnectRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendDownstream(e);
    }

    public void unbindRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendDownstream(e);
    }

    public void closeRequested(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendDownstream(e);
    }
}
