package com.adjust.sdk;

import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;
import sfs2x.client.util.ClientDisconnectionReason;

public enum ActivityKind {
    UNKNOWN,
    SESSION,
    EVENT,
    CLICK,
    ATTRIBUTION,
    REVENUE,
    REATTRIBUTION;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$adjust$sdk$ActivityKind = null;

        static {
            $SwitchMap$com$adjust$sdk$ActivityKind = new int[ActivityKind.values().length];
            try {
                $SwitchMap$com$adjust$sdk$ActivityKind[ActivityKind.SESSION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$adjust$sdk$ActivityKind[ActivityKind.EVENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$adjust$sdk$ActivityKind[ActivityKind.CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$adjust$sdk$ActivityKind[ActivityKind.ATTRIBUTION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static ActivityKind fromString(String string) {
        if ("session".equals(string)) {
            return SESSION;
        }
        if ("event".equals(string)) {
            return EVENT;
        }
        if ("click".equals(string)) {
            return CLICK;
        }
        if ("attribution".equals(string)) {
            return ATTRIBUTION;
        }
        return UNKNOWN;
    }

    public String toString() {
        switch (AnonymousClass1.$SwitchMap$com$adjust$sdk$ActivityKind[ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return "session";
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return "event";
            case MessageRecipientMode.TO_ZONE /*3*/:
                return "click";
            case Base64.DONT_GUNZIP /*4*/:
                return "attribution";
            default:
                return ClientDisconnectionReason.UNKNOWN;
        }
    }
}
