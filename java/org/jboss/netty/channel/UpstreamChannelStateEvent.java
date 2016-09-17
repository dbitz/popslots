package org.jboss.netty.channel;

import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class UpstreamChannelStateEvent implements ChannelStateEvent {
    private final Channel channel;
    private final ChannelState state;
    private final Object value;

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

    public UpstreamChannelStateEvent(Channel channel, ChannelState state, Object value) {
        if (channel == null) {
            throw new NullPointerException("channel");
        } else if (state == null) {
            throw new NullPointerException("state");
        } else {
            this.channel = channel;
            this.state = state;
            this.value = value;
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
    }

    public ChannelState getState() {
        return this.state;
    }

    public Object getValue() {
        return this.value;
    }

    public String toString() {
        String channelString = getChannel().toString();
        StringBuilder buf = new StringBuilder(channelString.length() + 64);
        buf.append(channelString);
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[getState().ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                if (!Boolean.TRUE.equals(getValue())) {
                    buf.append(" CLOSED");
                    break;
                }
                buf.append(" OPEN");
                break;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                if (getValue() == null) {
                    buf.append(" UNBOUND");
                    break;
                }
                buf.append(" BOUND: ");
                buf.append(getValue());
                break;
            case MessageRecipientMode.TO_ZONE /*3*/:
                if (getValue() == null) {
                    buf.append(" DISCONNECTED");
                    break;
                }
                buf.append(" CONNECTED: ");
                buf.append(getValue());
                break;
            case Base64.DONT_GUNZIP /*4*/:
                buf.append(" INTEREST_CHANGED");
                break;
            default:
                buf.append(getState().name());
                buf.append(": ");
                buf.append(getValue());
                break;
        }
        return buf.toString();
    }
}
