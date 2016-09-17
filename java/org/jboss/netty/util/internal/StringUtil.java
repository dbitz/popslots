package org.jboss.netty.util.internal;

import java.util.Formatter;

public class StringUtil {
    public static final String NEWLINE;

    private StringUtil() {
    }

    static {
        String newLine;
        try {
            newLine = new Formatter().format("%n", new Object[0]).toString();
        } catch (Exception e) {
            newLine = "\n";
        }
        NEWLINE = newLine;
    }

    public static String stripControlCharacters(Object value) {
        if (value == null) {
            return null;
        }
        return stripControlCharacters(value.toString());
    }

    public static String stripControlCharacters(String value) {
        if (value == null) {
            return null;
        }
        int i;
        boolean hasControlChars = false;
        for (i = value.length() - 1; i >= 0; i--) {
            if (Character.isISOControl(value.charAt(i))) {
                hasControlChars = true;
                break;
            }
        }
        if (!hasControlChars) {
            return value;
        }
        StringBuilder buf = new StringBuilder(value.length());
        i = 0;
        while (i < value.length() && Character.isISOControl(value.charAt(i))) {
            i++;
        }
        boolean suppressingControlChars = false;
        while (i < value.length()) {
            if (Character.isISOControl(value.charAt(i))) {
                suppressingControlChars = true;
            } else {
                if (suppressingControlChars) {
                    suppressingControlChars = false;
                    buf.append(' ');
                }
                buf.append(value.charAt(i));
            }
            i++;
        }
        return buf.toString();
    }
}
