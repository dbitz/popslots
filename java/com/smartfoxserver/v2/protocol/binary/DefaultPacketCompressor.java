package com.smartfoxserver.v2.protocol.binary;

import java.io.ByteArrayOutputStream;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

public final class DefaultPacketCompressor implements IPacketCompressor {
    public final int MAX_SIZE_FOR_COMPRESSION = 1000000;
    private final int compressionBufferSize = 256;

    public byte[] compress(byte[] data) throws Exception {
        if (data.length > 1000000) {
            return data;
        }
        Deflater compressor = new Deflater();
        compressor.setInput(data);
        compressor.finish();
        ByteArrayOutputStream bos = new ByteArrayOutputStream(data.length);
        byte[] buf = new byte[256];
        while (!compressor.finished()) {
            bos.write(buf, 0, compressor.deflate(buf));
        }
        bos.close();
        return bos.toByteArray();
    }

    public byte[] uncompress(byte[] zipData) throws Exception {
        Inflater unzipper = new Inflater();
        unzipper.setInput(zipData);
        ByteArrayOutputStream bos = new ByteArrayOutputStream(zipData.length);
        byte[] buf = new byte[256];
        while (!unzipper.finished()) {
            bos.write(buf, 0, unzipper.inflate(buf));
        }
        bos.close();
        return bos.toByteArray();
    }
}
