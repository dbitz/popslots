package org.jboss.netty.util.internal;

import com.helpshift.support.res.values.HSConsts;
import com.playstudios.popslots.R;
import java.util.ArrayList;
import java.util.List;

public class ConversionUtil {
    private static final String[] INTEGERS = new String[]{HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"};

    public static int toInt(Object value) {
        if (value instanceof Number) {
            return ((Number) value).intValue();
        }
        return Integer.parseInt(String.valueOf(value));
    }

    public static boolean toBoolean(Object value) {
        if (value instanceof Boolean) {
            return ((Boolean) value).booleanValue();
        }
        if (!(value instanceof Number)) {
            String s = String.valueOf(value);
            if (s.length() == 0) {
                return false;
            }
            try {
                if (Integer.parseInt(s) == 0) {
                    return false;
                }
                return true;
            } catch (NumberFormatException e) {
                switch (Character.toUpperCase(s.charAt(0))) {
                    case R.styleable.Theme_colorAccent /*84*/:
                    case R.styleable.Theme_colorSwitchThumbNormal /*89*/:
                        return true;
                    default:
                        return false;
                }
            }
        } else if (((Number) value).intValue() == 0) {
            return false;
        } else {
            return true;
        }
    }

    public static String[] toStringArray(Object value) {
        if (value instanceof String[]) {
            return (String[]) value;
        }
        if (!(value instanceof Iterable)) {
            return String.valueOf(value).split("[, \\t\\n\\r\\f\\e\\a]");
        }
        List<String> answer = new ArrayList();
        for (Object v : (Iterable) value) {
            if (v == null) {
                answer.add(null);
            } else {
                answer.add(String.valueOf(v));
            }
        }
        return (String[]) answer.toArray(new String[answer.size()]);
    }

    public static String toString(int value) {
        if (value < 0 || value >= INTEGERS.length) {
            return Integer.toString(value);
        }
        return INTEGERS[value];
    }

    private ConversionUtil() {
    }
}
