package com.smartfoxserver.bitswarm.util;

import com.helpshift.support.res.values.HSConsts;
import java.nio.ByteBuffer;

public class ByteUtils {
    private static final char DOT = '.';
    private static final int HEX_BYTES_PER_LINE = 16;
    private static final String NEW_LINE = System.getProperty("line.separator");
    private static final char TAB = '\t';

    public static byte[] resizeByteArray(byte[] source, int pos, int size) {
        byte[] tmpArray = new byte[size];
        System.arraycopy(source, pos, tmpArray, 0, size);
        return tmpArray;
    }

    public static String fullHexDump(ByteBuffer buffer, int bytesPerLine) {
        return fullHexDump(buffer.array(), bytesPerLine);
    }

    public static String fullHexDump(ByteBuffer buffer) {
        return fullHexDump(buffer.array(), (int) HEX_BYTES_PER_LINE);
    }

    public static String fullHexDump(byte[] buffer) {
        return fullHexDump(buffer, (int) HEX_BYTES_PER_LINE);
    }

    public static String fullHexDump(byte[] buffer, int bytesPerLine) {
        StringBuilder sb = new StringBuilder("Binary size: ").append(buffer.length).append("\n");
        StringBuilder hexLine = new StringBuilder();
        StringBuilder chrLine = new StringBuilder();
        int index = 0;
        int count = 0;
        do {
            byte currByte = buffer[index];
            String hexByte = Integer.toHexString(currByte & 255);
            if (hexByte.length() == 1) {
                hexLine.append(HSConsts.STATUS_NEW);
            }
            hexLine.append(hexByte.toUpperCase()).append(" ");
            char currChar = (currByte < (byte) 33 || currByte > (byte) 126) ? DOT : (char) currByte;
            chrLine.append(currChar);
            count++;
            if (count == bytesPerLine) {
                count = 0;
                sb.append(hexLine).append(TAB).append(chrLine).append(NEW_LINE);
                hexLine.delete(0, hexLine.length());
                chrLine.delete(0, chrLine.length());
            }
            index++;
        } while (index < buffer.length);
        if (count != 0) {
            for (int j = bytesPerLine - count; j > 0; j--) {
                hexLine.append("   ");
                chrLine.append(" ");
            }
            sb.append(hexLine).append(TAB).append(chrLine).append(NEW_LINE);
        }
        return sb.toString();
    }
}
