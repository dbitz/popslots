package com.smartfoxserver.v2.protocol.serialization;

import java.util.Arrays;

public class DefaultObjectDumpFormatter {
    public static final char TOKEN_DIVIDER = ';';
    public static final char TOKEN_INDENT_CLOSE = '}';
    public static final char TOKEN_INDENT_OPEN = '{';

    public static String prettyPrintByteArray(byte[] bytes) {
        if (bytes == null) {
            return "Null";
        }
        return String.format("Byte[%s]", new Object[]{Integer.valueOf(bytes.length)});
    }

    public static String prettyPrintDump(String rawDump) {
        StringBuilder buf = new StringBuilder();
        int indentPos = 0;
        for (int i = 0; i < rawDump.length(); i++) {
            char ch = rawDump.charAt(i);
            if (ch == TOKEN_INDENT_OPEN) {
                indentPos++;
                buf.append("\n").append(getFormatTabs(indentPos));
            } else if (ch == TOKEN_INDENT_CLOSE) {
                indentPos--;
                if (indentPos < 0) {
                    throw new IllegalStateException("Argh! The indentPos is negative. TOKENS ARE NOT BALANCED!");
                }
                buf.append("\n").append(getFormatTabs(indentPos));
            } else if (ch == TOKEN_DIVIDER) {
                buf.append("\n").append(getFormatTabs(indentPos));
            } else {
                buf.append(ch);
            }
        }
        if (indentPos == 0) {
            return buf.toString();
        }
        throw new IllegalStateException("Argh! The indentPos is not == 0. TOKENS ARE NOT BALANCED!");
    }

    private static String getFormatTabs(int howMany) {
        return strFill('\t', howMany);
    }

    private static String strFill(char c, int howMany) {
        char[] chars = new char[howMany];
        Arrays.fill(chars, c);
        return new String(chars);
    }
}
