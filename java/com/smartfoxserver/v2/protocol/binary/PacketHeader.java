package com.smartfoxserver.v2.protocol.binary;

public class PacketHeader {
    private final boolean bigSized;
    private final boolean binary;
    private final boolean blueBoxed;
    private final boolean compressed;
    private final boolean encrypted;
    private int expectedLen = -1;

    public PacketHeader(boolean binary, boolean encrypted, boolean compressed, boolean blueBoxed, boolean bigSized) {
        this.binary = binary;
        this.compressed = compressed;
        this.encrypted = encrypted;
        this.blueBoxed = blueBoxed;
        this.bigSized = bigSized;
    }

    public int getExpectedLen() {
        return this.expectedLen;
    }

    public void setExpectedLen(int len) {
        this.expectedLen = len;
    }

    public boolean isBinary() {
        return this.binary;
    }

    public boolean isCompressed() {
        return this.compressed;
    }

    public boolean isEncrypted() {
        return this.encrypted;
    }

    public boolean isBlueBoxed() {
        return this.blueBoxed;
    }

    public boolean isBigSized() {
        return this.bigSized;
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append("\n---------------------------------------------\n");
        buf.append("Binary:  \t" + isBinary() + "\n");
        buf.append("Compressed:\t" + isCompressed() + "\n");
        buf.append("Encrypted:\t" + isEncrypted() + "\n");
        buf.append("BlueBoxed:\t" + isBlueBoxed() + "\n");
        buf.append("BigSized:\t" + isBigSized() + "\n");
        buf.append("---------------------------------------------\n");
        return buf.toString();
    }
}
