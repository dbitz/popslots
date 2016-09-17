package org.jboss.netty.channel.socket.nio;

import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;

final class SocketReceiveBufferPool {
    private static final int POOL_SIZE = 8;
    private final SoftReference<ByteBuffer>[] pool = new SoftReference[POOL_SIZE];

    SocketReceiveBufferPool() {
    }

    final ByteBuffer acquire(int size) {
        ByteBuffer buf;
        SoftReference<ByteBuffer>[] pool = this.pool;
        for (int i = 0; i < POOL_SIZE; i++) {
            SoftReference<ByteBuffer> ref = pool[i];
            if (ref != null) {
                buf = (ByteBuffer) ref.get();
                if (buf == null) {
                    pool[i] = null;
                } else if (buf.capacity() >= size) {
                    pool[i] = null;
                    buf.clear();
                    return buf;
                }
            }
        }
        buf = ByteBuffer.allocateDirect(normalizeCapacity(size));
        buf.clear();
        return buf;
    }

    final void release(ByteBuffer buffer) {
        int i;
        SoftReference<ByteBuffer>[] pool = this.pool;
        for (i = 0; i < POOL_SIZE; i++) {
            SoftReference<ByteBuffer> ref = pool[i];
            if (ref == null || ref.get() == null) {
                pool[i] = new SoftReference(buffer);
                return;
            }
        }
        int capacity = buffer.capacity();
        for (i = 0; i < POOL_SIZE; i++) {
            ByteBuffer pooled = (ByteBuffer) pool[i].get();
            if (pooled == null) {
                pool[i] = null;
            } else if (pooled.capacity() < capacity) {
                pool[i] = new SoftReference(buffer);
                return;
            }
        }
    }

    private static final int normalizeCapacity(int capacity) {
        int q = capacity >>> 10;
        if ((capacity & 1023) != 0) {
            q++;
        }
        return q << 10;
    }
}
