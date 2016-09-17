package org.jboss.netty.logging;

import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public abstract class AbstractInternalLogger implements InternalLogger {

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$logging$InternalLogLevel = new int[InternalLogLevel.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$logging$InternalLogLevel[InternalLogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$logging$InternalLogLevel[InternalLogLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$logging$InternalLogLevel[InternalLogLevel.WARN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$jboss$netty$logging$InternalLogLevel[InternalLogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    protected AbstractInternalLogger() {
    }

    public boolean isEnabled(InternalLogLevel level) {
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$logging$InternalLogLevel[level.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return isDebugEnabled();
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return isInfoEnabled();
            case MessageRecipientMode.TO_ZONE /*3*/:
                return isWarnEnabled();
            case Base64.DONT_GUNZIP /*4*/:
                return isErrorEnabled();
            default:
                throw new Error();
        }
    }

    public void log(InternalLogLevel level, String msg, Throwable cause) {
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$logging$InternalLogLevel[level.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                debug(msg, cause);
                return;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                info(msg, cause);
                return;
            case MessageRecipientMode.TO_ZONE /*3*/:
                warn(msg, cause);
                return;
            case Base64.DONT_GUNZIP /*4*/:
                error(msg, cause);
                return;
            default:
                throw new Error();
        }
    }

    public void log(InternalLogLevel level, String msg) {
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$logging$InternalLogLevel[level.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                debug(msg);
                return;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                info(msg);
                return;
            case MessageRecipientMode.TO_ZONE /*3*/:
                warn(msg);
                return;
            case Base64.DONT_GUNZIP /*4*/:
                error(msg);
                return;
            default:
                throw new Error();
        }
    }
}
