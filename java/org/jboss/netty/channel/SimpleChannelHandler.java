package org.jboss.netty.channel;

import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SimpleChannelHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SimpleChannelHandler.class.getName());

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

    public void handleUpstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        if (e instanceof MessageEvent) {
            messageReceived(ctx, (MessageEvent) e);
        } else if (e instanceof WriteCompletionEvent) {
            writeComplete(ctx, (WriteCompletionEvent) e);
        } else if (e instanceof ChildChannelStateEvent) {
            ChildChannelStateEvent evt = (ChildChannelStateEvent) e;
            if (evt.getChildChannel().isOpen()) {
                childChannelOpen(ctx, evt);
            } else {
                childChannelClosed(ctx, evt);
            }
        } else if (e instanceof ChannelStateEvent) {
            ChannelStateEvent evt2 = (ChannelStateEvent) e;
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[evt2.getState().ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.TRUE.equals(evt2.getValue())) {
                        channelOpen(ctx, evt2);
                        return;
                    } else {
                        channelClosed(ctx, evt2);
                        return;
                    }
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (evt2.getValue() != null) {
                        channelBound(ctx, evt2);
                        return;
                    } else {
                        channelUnbound(ctx, evt2);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (evt2.getValue() != null) {
                        channelConnected(ctx, evt2);
                        return;
                    } else {
                        channelDisconnected(ctx, evt2);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    channelInterestChanged(ctx, evt2);
                    return;
                default:
                    ctx.sendUpstream(e);
                    return;
            }
        } else if (e instanceof ExceptionEvent) {
            exceptionCaught(ctx, (ExceptionEvent) e);
        } else {
            ctx.sendUpstream(e);
        }
    }

    public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) throws Exception {
        if (this == ctx.getPipeline().getLast()) {
            logger.warn("EXCEPTION, please implement " + getClass().getName() + ".exceptionCaught() for proper handling.", e.getCause());
        }
        ctx.sendUpstream(e);
    }

    public void channelOpen(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void channelBound(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void channelConnected(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void channelInterestChanged(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void channelDisconnected(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void channelUnbound(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void channelClosed(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void writeComplete(ChannelHandlerContext ctx, WriteCompletionEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void childChannelOpen(ChannelHandlerContext ctx, ChildChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
    }

    public void childChannelClosed(ChannelHandlerContext ctx, ChildChannelStateEvent e) throws Exception {
        ctx.sendUpstream(e);
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
