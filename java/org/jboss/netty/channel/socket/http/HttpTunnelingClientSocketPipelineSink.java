package org.jboss.netty.channel.socket.http;

import java.net.SocketAddress;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.MessageEvent;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

final class HttpTunnelingClientSocketPipelineSink extends AbstractChannelSink {

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

    HttpTunnelingClientSocketPipelineSink() {
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        HttpTunnelingClientSocketChannel channel = (HttpTunnelingClientSocketChannel) e.getChannel();
        ChannelFuture future = e.getFuture();
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent stateEvent = (ChannelStateEvent) e;
            ChannelState state = stateEvent.getState();
            Object value = stateEvent.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        channel.closeReal(future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        channel.bindReal((SocketAddress) value, future);
                        return;
                    } else {
                        channel.unbindReal(future);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value != null) {
                        channel.connectReal((SocketAddress) value, future);
                        return;
                    } else {
                        channel.closeReal(future);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    channel.setInterestOpsReal(((Integer) value).intValue(), future);
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            channel.writeReal((ChannelBuffer) ((MessageEvent) e).getMessage(), future);
        }
    }
}
