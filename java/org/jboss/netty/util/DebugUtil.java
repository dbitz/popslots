package org.jboss.netty.util;

import com.helpshift.support.res.values.HSConsts;
import org.jboss.netty.util.internal.SystemPropertyUtil;

public class DebugUtil {
    public static boolean isDebugEnabled() {
        String value;
        try {
            value = SystemPropertyUtil.get("org.jboss.netty.debug");
        } catch (Exception e) {
            value = null;
        }
        if (value == null) {
            return false;
        }
        value = value.trim().toUpperCase();
        if (value.startsWith("N") || value.startsWith("F") || value.equals(HSConsts.STATUS_NEW)) {
            return false;
        }
        return true;
    }

    private DebugUtil() {
    }
}
