package org.jboss.netty.handler.ssl;

import java.nio.ByteBuffer;

public class SslBufferPool {
    private static final int DEFAULT_POOL_SIZE = 18113536;
    private static final int MAX_PACKET_SIZE = 17689;
    private int index;
    private final int maxBufferCount;
    private final ByteBuffer[] pool;

    public SslBufferPool() {
        this(DEFAULT_POOL_SIZE);
    }

    public SslBufferPool(int maxPoolSize) {
        if (maxPoolSize <= 0) {
            throw new IllegalArgumentException("maxPoolSize: " + maxPoolSize);
        }
        int maxBufferCount = maxPoolSize / MAX_PACKET_SIZE;
        if (maxPoolSize % MAX_PACKET_SIZE != 0) {
            maxBufferCount++;
        }
        this.pool = new ByteBuffer[maxBufferCount];
        this.maxBufferCount = maxBufferCount;
    }

    public int getMaxPoolSize() {
        return this.maxBufferCount * MAX_PACKET_SIZE;
    }

    public synchronized int getUnacquiredPoolSize() {
        return this.index * MAX_PACKET_SIZE;
    }

    synchronized ByteBuffer acquire() {
        ByteBuffer allocate;
        if (this.index == 0) {
            allocate = ByteBuffer.allocate(MAX_PACKET_SIZE);
        } else {
            ByteBuffer[] byteBufferArr = this.pool;
            int i = this.index - 1;
            this.index = i;
            allocate = (ByteBuffer) byteBufferArr[i].clear();
        }
        return allocate;
    }

    synchronized void release(ByteBuffer buffer) {
        if (this.index < this.maxBufferCount) {
            ByteBuffer[] byteBufferArr = this.pool;
            int i = this.index;
            this.index = i + 1;
            byteBufferArr[i] = buffer;
        }
    }
}
