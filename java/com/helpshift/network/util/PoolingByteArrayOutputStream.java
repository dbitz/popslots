package com.helpshift.network.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class PoolingByteArrayOutputStream extends ByteArrayOutputStream {
    private static final int DEFAULT_SIZE = 256;
    private final ByteArrayPool pool;

    public PoolingByteArrayOutputStream(ByteArrayPool pool) {
        this(pool, DEFAULT_SIZE);
    }

    public PoolingByteArrayOutputStream(ByteArrayPool pool, int size) {
        this.pool = pool;
        this.buf = this.pool.getBuf(Math.max(size, DEFAULT_SIZE));
    }

    public void close() throws IOException {
        this.pool.returnBuf(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.pool.returnBuf(this.buf);
    }

    private void expand(int i) {
        if (this.count + i > this.buf.length) {
            byte[] newbuf = this.pool.getBuf((this.count + i) * 2);
            System.arraycopy(this.buf, 0, newbuf, 0, this.count);
            this.pool.returnBuf(this.buf);
            this.buf = newbuf;
        }
    }

    public synchronized void write(byte[] buffer, int offset, int len) {
        expand(len);
        super.write(buffer, offset, len);
    }

    public synchronized void write(int oneByte) {
        expand(1);
        super.write(oneByte);
    }
}
