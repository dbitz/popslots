package org.jboss.netty.handler.codec.compression;

import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.BuddyOnlineState;

final class ZlibUtil {

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper = new int[ZlibWrapper.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.ZLIB.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.GZIP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    static void fail(ZStream z, String message, int resultCode) {
        throw exception(z, message, resultCode);
    }

    static CompressionException exception(ZStream z, String message, int resultCode) {
        return new CompressionException(message + " (" + resultCode + ")" + (z.msg != null ? ": " + z.msg : ""));
    }

    static Enum<?> convertWrapperType(ZlibWrapper wrapper) {
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper[wrapper.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return JZlib.W_NONE;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return JZlib.W_ZLIB;
            case MessageRecipientMode.TO_ZONE /*3*/:
                return JZlib.W_GZIP;
            default:
                throw new Error();
        }
    }

    private ZlibUtil() {
    }
}
