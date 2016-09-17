package sfs2x.client.util;

import com.smartfoxserver.bitswarm.util.ByteUtils;

public class CryptoKey {
    private static final int SIZE = 16;
    private byte[] initVector = new byte[SIZE];
    private byte[] secretKey = new byte[SIZE];

    public CryptoKey(byte[] combinedBytes) {
        System.arraycopy(combinedBytes, 0, this.secretKey, 0, SIZE);
        System.arraycopy(combinedBytes, SIZE, this.initVector, 0, SIZE);
    }

    public byte[] getSecretKey() {
        return this.secretKey;
    }

    public byte[] getInitVector() {
        return this.initVector;
    }

    public String toString() {
        return "CryptoKey: " + ByteUtils.fullHexDump(this.secretKey) + "\nIV: " + ByteUtils.fullHexDump(this.initVector);
    }
}
