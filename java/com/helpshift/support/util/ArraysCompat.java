package com.helpshift.support.util;

public final class ArraysCompat {
    public static String[] copyOfRange(String[] from, int start, int end) {
        int length = end - start;
        String[] result = new String[length];
        System.arraycopy(from, start, result, 0, length);
        return result;
    }
}
