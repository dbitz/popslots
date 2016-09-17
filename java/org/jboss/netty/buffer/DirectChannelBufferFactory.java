package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class DirectChannelBufferFactory extends AbstractChannelBufferFactory {
    private static final DirectChannelBufferFactory INSTANCE_BE = new DirectChannelBufferFactory(ByteOrder.BIG_ENDIAN);
    private static final DirectChannelBufferFactory INSTANCE_LE = new DirectChannelBufferFactory(ByteOrder.LITTLE_ENDIAN);
    private final Object bigEndianLock;
    private final Object littleEndianLock;
    private ChannelBuffer preallocatedBigEndianBuffer;
    private int preallocatedBigEndianBufferPosition;
    private final int preallocatedBufferCapacity;
    private ChannelBuffer preallocatedLittleEndianBuffer;
    private int preallocatedLittleEndianBufferPosition;

    public static ChannelBufferFactory getInstance() {
        return INSTANCE_BE;
    }

    public static ChannelBufferFactory getInstance(ByteOrder defaultEndianness) {
        if (defaultEndianness == ByteOrder.BIG_ENDIAN) {
            return INSTANCE_BE;
        }
        if (defaultEndianness == ByteOrder.LITTLE_ENDIAN) {
            return INSTANCE_LE;
        }
        if (defaultEndianness == null) {
            throw new NullPointerException("defaultEndianness");
        }
        throw new IllegalStateException("Should not reach here");
    }

    public DirectChannelBufferFactory() {
        this(ByteOrder.BIG_ENDIAN);
    }

    public DirectChannelBufferFactory(int preallocatedBufferCapacity) {
        this(ByteOrder.BIG_ENDIAN, preallocatedBufferCapacity);
    }

    public DirectChannelBufferFactory(ByteOrder defaultOrder) {
        this(defaultOrder, 1048576);
    }

    public DirectChannelBufferFactory(ByteOrder defaultOrder, int preallocatedBufferCapacity) {
        super(defaultOrder);
        this.bigEndianLock = new Object();
        this.littleEndianLock = new Object();
        this.preallocatedBigEndianBuffer = null;
        this.preallocatedLittleEndianBuffer = null;
        if (preallocatedBufferCapacity <= 0) {
            throw new IllegalArgumentException("preallocatedBufferCapacity must be greater than 0: " + preallocatedBufferCapacity);
        }
        this.preallocatedBufferCapacity = preallocatedBufferCapacity;
    }

    public ChannelBuffer getBuffer(ByteOrder order, int capacity) {
        if (order == null) {
            throw new NullPointerException("order");
        } else if (capacity < 0) {
            throw new IllegalArgumentException("capacity: " + capacity);
        } else if (capacity == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        } else {
            if (capacity >= this.preallocatedBufferCapacity) {
                return ChannelBuffers.directBuffer(order, capacity);
            }
            ChannelBuffer slice;
            if (order == ByteOrder.BIG_ENDIAN) {
                slice = allocateBigEndianBuffer(capacity);
            } else {
                slice = allocateLittleEndianBuffer(capacity);
            }
            slice.clear();
            return slice;
        }
    }

    public ChannelBuffer getBuffer(ByteOrder order, byte[] array, int offset, int length) {
        if (array == null) {
            throw new NullPointerException("array");
        } else if (offset < 0) {
            throw new IndexOutOfBoundsException("offset: " + offset);
        } else if (length == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        } else {
            if (offset + length > array.length) {
                throw new IndexOutOfBoundsException("length: " + length);
            }
            ChannelBuffer buf = getBuffer(order, length);
            buf.writeBytes(array, offset, length);
            return buf;
        }
    }

    public ChannelBuffer getBuffer(ByteBuffer nioBuffer) {
        if (!nioBuffer.isReadOnly() && nioBuffer.isDirect()) {
            return ChannelBuffers.wrappedBuffer(nioBuffer);
        }
        ChannelBuffer buf = getBuffer(nioBuffer.order(), nioBuffer.remaining());
        int pos = nioBuffer.position();
        buf.writeBytes(nioBuffer);
        nioBuffer.position(pos);
        return buf;
    }

    private ChannelBuffer allocateBigEndianBuffer(int capacity) {
        ChannelBuffer slice;
        synchronized (this.bigEndianLock) {
            if (this.preallocatedBigEndianBuffer == null) {
                this.preallocatedBigEndianBuffer = ChannelBuffers.directBuffer(ByteOrder.BIG_ENDIAN, this.preallocatedBufferCapacity);
                slice = this.preallocatedBigEndianBuffer.slice(0, capacity);
                this.preallocatedBigEndianBufferPosition = capacity;
            } else if (this.preallocatedBigEndianBuffer.capacity() - this.preallocatedBigEndianBufferPosition >= capacity) {
                slice = this.preallocatedBigEndianBuffer.slice(this.preallocatedBigEndianBufferPosition, capacity);
                this.preallocatedBigEndianBufferPosition += capacity;
            } else {
                this.preallocatedBigEndianBuffer = ChannelBuffers.directBuffer(ByteOrder.BIG_ENDIAN, this.preallocatedBufferCapacity);
                slice = this.preallocatedBigEndianBuffer.slice(0, capacity);
                this.preallocatedBigEndianBufferPosition = capacity;
            }
        }
        return slice;
    }

    private ChannelBuffer allocateLittleEndianBuffer(int capacity) {
        ChannelBuffer slice;
        synchronized (this.littleEndianLock) {
            if (this.preallocatedLittleEndianBuffer == null) {
                this.preallocatedLittleEndianBuffer = ChannelBuffers.directBuffer(ByteOrder.LITTLE_ENDIAN, this.preallocatedBufferCapacity);
                slice = this.preallocatedLittleEndianBuffer.slice(0, capacity);
                this.preallocatedLittleEndianBufferPosition = capacity;
            } else if (this.preallocatedLittleEndianBuffer.capacity() - this.preallocatedLittleEndianBufferPosition >= capacity) {
                slice = this.preallocatedLittleEndianBuffer.slice(this.preallocatedLittleEndianBufferPosition, capacity);
                this.preallocatedLittleEndianBufferPosition += capacity;
            } else {
                this.preallocatedLittleEndianBuffer = ChannelBuffers.directBuffer(ByteOrder.LITTLE_ENDIAN, this.preallocatedBufferCapacity);
                slice = this.preallocatedLittleEndianBuffer.slice(0, capacity);
                this.preallocatedLittleEndianBufferPosition = capacity;
            }
        }
        return slice;
    }
}
