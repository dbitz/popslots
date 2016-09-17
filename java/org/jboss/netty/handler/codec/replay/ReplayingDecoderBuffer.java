package org.jboss.netty.handler.codec.replay;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.ChannelBufferIndexFinder;

class ReplayingDecoderBuffer implements ChannelBuffer {
    private static final Error REPLAY = new ReplayError();
    private final ChannelBuffer buffer;
    private boolean terminated;

    ReplayingDecoderBuffer(ChannelBuffer buffer) {
        this.buffer = buffer;
    }

    void terminate() {
        this.terminated = true;
    }

    public int capacity() {
        if (this.terminated) {
            return this.buffer.capacity();
        }
        return Integer.MAX_VALUE;
    }

    public boolean isDirect() {
        return this.buffer.isDirect();
    }

    public boolean hasArray() {
        return false;
    }

    public byte[] array() {
        throw new UnsupportedOperationException();
    }

    public int arrayOffset() {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnreplayableOperationException();
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int compareTo(ChannelBuffer buffer) {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer copy() {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer copy(int index, int length) {
        checkIndex(index, length);
        return this.buffer.copy(index, length);
    }

    public void discardReadBytes() {
        throw new UnreplayableOperationException();
    }

    public void ensureWritableBytes(int writableBytes) {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer duplicate() {
        throw new UnreplayableOperationException();
    }

    public byte getByte(int index) {
        checkIndex(index);
        return this.buffer.getByte(index);
    }

    public short getUnsignedByte(int index) {
        checkIndex(index);
        return this.buffer.getUnsignedByte(index);
    }

    public void getBytes(int index, byte[] dst, int dstIndex, int length) {
        checkIndex(index, length);
        this.buffer.getBytes(index, dst, dstIndex, length);
    }

    public void getBytes(int index, byte[] dst) {
        checkIndex(index, dst.length);
        this.buffer.getBytes(index, dst);
    }

    public void getBytes(int index, ByteBuffer dst) {
        throw new UnreplayableOperationException();
    }

    public void getBytes(int index, ChannelBuffer dst, int dstIndex, int length) {
        checkIndex(index, length);
        this.buffer.getBytes(index, dst, dstIndex, length);
    }

    public void getBytes(int index, ChannelBuffer dst, int length) {
        throw new UnreplayableOperationException();
    }

    public void getBytes(int index, ChannelBuffer dst) {
        throw new UnreplayableOperationException();
    }

    public int getBytes(int index, GatheringByteChannel out, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void getBytes(int index, OutputStream out, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public int getInt(int index) {
        checkIndex(index, 4);
        return this.buffer.getInt(index);
    }

    public long getUnsignedInt(int index) {
        checkIndex(index, 4);
        return this.buffer.getUnsignedInt(index);
    }

    public long getLong(int index) {
        checkIndex(index, 8);
        return this.buffer.getLong(index);
    }

    public int getMedium(int index) {
        checkIndex(index, 3);
        return this.buffer.getMedium(index);
    }

    public int getUnsignedMedium(int index) {
        checkIndex(index, 3);
        return this.buffer.getUnsignedMedium(index);
    }

    public short getShort(int index) {
        checkIndex(index, 2);
        return this.buffer.getShort(index);
    }

    public int getUnsignedShort(int index) {
        checkIndex(index, 2);
        return this.buffer.getUnsignedShort(index);
    }

    public char getChar(int index) {
        checkIndex(index, 2);
        return this.buffer.getChar(index);
    }

    public float getFloat(int index) {
        checkIndex(index, 4);
        return this.buffer.getFloat(index);
    }

    public double getDouble(int index) {
        checkIndex(index, 8);
        return this.buffer.getDouble(index);
    }

    public int hashCode() {
        throw new UnreplayableOperationException();
    }

    public int indexOf(int fromIndex, int toIndex, byte value) {
        int endIndex = this.buffer.indexOf(fromIndex, toIndex, value);
        if (endIndex >= 0) {
            return endIndex;
        }
        throw REPLAY;
    }

    public int indexOf(int fromIndex, int toIndex, ChannelBufferIndexFinder indexFinder) {
        int endIndex = this.buffer.indexOf(fromIndex, toIndex, indexFinder);
        if (endIndex >= 0) {
            return endIndex;
        }
        throw REPLAY;
    }

    public int bytesBefore(byte value) {
        int bytes = this.buffer.bytesBefore(value);
        if (bytes >= 0) {
            return bytes;
        }
        throw REPLAY;
    }

    public int bytesBefore(ChannelBufferIndexFinder indexFinder) {
        int bytes = this.buffer.bytesBefore(indexFinder);
        if (bytes >= 0) {
            return bytes;
        }
        throw REPLAY;
    }

    public int bytesBefore(int length, byte value) {
        checkReadableBytes(length);
        int bytes = this.buffer.bytesBefore(length, value);
        if (bytes >= 0) {
            return bytes;
        }
        throw REPLAY;
    }

    public int bytesBefore(int length, ChannelBufferIndexFinder indexFinder) {
        checkReadableBytes(length);
        int bytes = this.buffer.bytesBefore(length, indexFinder);
        if (bytes >= 0) {
            return bytes;
        }
        throw REPLAY;
    }

    public int bytesBefore(int index, int length, byte value) {
        int bytes = this.buffer.bytesBefore(index, length, value);
        if (bytes >= 0) {
            return bytes;
        }
        throw REPLAY;
    }

    public int bytesBefore(int index, int length, ChannelBufferIndexFinder indexFinder) {
        int bytes = this.buffer.bytesBefore(index, length, indexFinder);
        if (bytes >= 0) {
            return bytes;
        }
        throw REPLAY;
    }

    public void markReaderIndex() {
        this.buffer.markReaderIndex();
    }

    public void markWriterIndex() {
        throw new UnreplayableOperationException();
    }

    public ChannelBufferFactory factory() {
        return this.buffer.factory();
    }

    public ByteOrder order() {
        return this.buffer.order();
    }

    public boolean readable() {
        return this.terminated ? this.buffer.readable() : true;
    }

    public int readableBytes() {
        if (this.terminated) {
            return this.buffer.readableBytes();
        }
        return Integer.MAX_VALUE - this.buffer.readerIndex();
    }

    public byte readByte() {
        checkReadableBytes(1);
        return this.buffer.readByte();
    }

    public short readUnsignedByte() {
        checkReadableBytes(1);
        return this.buffer.readUnsignedByte();
    }

    public void readBytes(byte[] dst, int dstIndex, int length) {
        checkReadableBytes(length);
        this.buffer.readBytes(dst, dstIndex, length);
    }

    public void readBytes(byte[] dst) {
        checkReadableBytes(dst.length);
        this.buffer.readBytes(dst);
    }

    public void readBytes(ByteBuffer dst) {
        throw new UnreplayableOperationException();
    }

    public void readBytes(ChannelBuffer dst, int dstIndex, int length) {
        checkReadableBytes(length);
        this.buffer.readBytes(dst, dstIndex, length);
    }

    public void readBytes(ChannelBuffer dst, int length) {
        throw new UnreplayableOperationException();
    }

    public void readBytes(ChannelBuffer dst) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public ChannelBuffer readBytes(ChannelBufferIndexFinder endIndexFinder) {
        int endIndex = this.buffer.indexOf(this.buffer.readerIndex(), this.buffer.writerIndex(), endIndexFinder);
        if (endIndex >= 0) {
            return this.buffer.readBytes(endIndex - this.buffer.readerIndex());
        }
        throw REPLAY;
    }

    public int readBytes(GatheringByteChannel out, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer readBytes(int length) {
        checkReadableBytes(length);
        return this.buffer.readBytes(length);
    }

    @Deprecated
    public ChannelBuffer readSlice(ChannelBufferIndexFinder endIndexFinder) {
        int endIndex = this.buffer.indexOf(this.buffer.readerIndex(), this.buffer.writerIndex(), endIndexFinder);
        if (endIndex >= 0) {
            return this.buffer.readSlice(endIndex - this.buffer.readerIndex());
        }
        throw REPLAY;
    }

    public ChannelBuffer readSlice(int length) {
        checkReadableBytes(length);
        return this.buffer.readSlice(length);
    }

    public void readBytes(OutputStream out, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public int readerIndex() {
        return this.buffer.readerIndex();
    }

    public void readerIndex(int readerIndex) {
        this.buffer.readerIndex(readerIndex);
    }

    public int readInt() {
        checkReadableBytes(4);
        return this.buffer.readInt();
    }

    public long readUnsignedInt() {
        checkReadableBytes(4);
        return this.buffer.readUnsignedInt();
    }

    public long readLong() {
        checkReadableBytes(8);
        return this.buffer.readLong();
    }

    public int readMedium() {
        checkReadableBytes(3);
        return this.buffer.readMedium();
    }

    public int readUnsignedMedium() {
        checkReadableBytes(3);
        return this.buffer.readUnsignedMedium();
    }

    public short readShort() {
        checkReadableBytes(2);
        return this.buffer.readShort();
    }

    public int readUnsignedShort() {
        checkReadableBytes(2);
        return this.buffer.readUnsignedShort();
    }

    public char readChar() {
        checkReadableBytes(2);
        return this.buffer.readChar();
    }

    public float readFloat() {
        checkReadableBytes(4);
        return this.buffer.readFloat();
    }

    public double readDouble() {
        checkReadableBytes(8);
        return this.buffer.readDouble();
    }

    public void resetReaderIndex() {
        this.buffer.resetReaderIndex();
    }

    public void resetWriterIndex() {
        throw new UnreplayableOperationException();
    }

    public void setByte(int index, int value) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int index, byte[] src, int srcIndex, int length) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int index, byte[] src) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int index, ByteBuffer src) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int index, ChannelBuffer src, int srcIndex, int length) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int index, ChannelBuffer src, int length) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int index, ChannelBuffer src) {
        throw new UnreplayableOperationException();
    }

    public int setBytes(int index, InputStream in, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void setZero(int index, int length) {
        throw new UnreplayableOperationException();
    }

    public int setBytes(int index, ScatteringByteChannel in, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void setIndex(int readerIndex, int writerIndex) {
        throw new UnreplayableOperationException();
    }

    public void setInt(int index, int value) {
        throw new UnreplayableOperationException();
    }

    public void setLong(int index, long value) {
        throw new UnreplayableOperationException();
    }

    public void setMedium(int index, int value) {
        throw new UnreplayableOperationException();
    }

    public void setShort(int index, int value) {
        throw new UnreplayableOperationException();
    }

    public void setChar(int index, int value) {
        throw new UnreplayableOperationException();
    }

    public void setFloat(int index, float value) {
        throw new UnreplayableOperationException();
    }

    public void setDouble(int index, double value) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public int skipBytes(ChannelBufferIndexFinder firstIndexFinder) {
        int oldReaderIndex = this.buffer.readerIndex();
        int newReaderIndex = this.buffer.indexOf(oldReaderIndex, this.buffer.writerIndex(), firstIndexFinder);
        if (newReaderIndex < 0) {
            throw REPLAY;
        }
        this.buffer.readerIndex(newReaderIndex);
        return newReaderIndex - oldReaderIndex;
    }

    public void skipBytes(int length) {
        checkReadableBytes(length);
        this.buffer.skipBytes(length);
    }

    public ChannelBuffer slice() {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer slice(int index, int length) {
        checkIndex(index, length);
        return this.buffer.slice(index, length);
    }

    public ByteBuffer toByteBuffer() {
        throw new UnreplayableOperationException();
    }

    public ByteBuffer toByteBuffer(int index, int length) {
        checkIndex(index, length);
        return this.buffer.toByteBuffer(index, length);
    }

    public ByteBuffer[] toByteBuffers() {
        throw new UnreplayableOperationException();
    }

    public ByteBuffer[] toByteBuffers(int index, int length) {
        checkIndex(index, length);
        return this.buffer.toByteBuffers(index, length);
    }

    public String toString(int index, int length, Charset charset) {
        checkIndex(index, length);
        return this.buffer.toString(index, length, charset);
    }

    public String toString(Charset charsetName) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public String toString(int index, int length, String charsetName) {
        checkIndex(index, length);
        return this.buffer.toString(index, length, charsetName);
    }

    @Deprecated
    public String toString(int index, int length, String charsetName, ChannelBufferIndexFinder terminatorFinder) {
        checkIndex(index, length);
        return this.buffer.toString(index, length, charsetName, terminatorFinder);
    }

    @Deprecated
    public String toString(String charsetName) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public String toString(String charsetName, ChannelBufferIndexFinder terminatorFinder) {
        throw new UnreplayableOperationException();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + "ridx=" + readerIndex() + ", " + "widx=" + writerIndex() + ')';
    }

    public boolean writable() {
        return false;
    }

    public int writableBytes() {
        return 0;
    }

    public void writeByte(int value) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(byte[] src, int srcIndex, int length) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(byte[] src) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ByteBuffer src) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ChannelBuffer src, int srcIndex, int length) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ChannelBuffer src, int length) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ChannelBuffer src) {
        throw new UnreplayableOperationException();
    }

    public int writeBytes(InputStream in, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public int writeBytes(ScatteringByteChannel in, int length) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void writeInt(int value) {
        throw new UnreplayableOperationException();
    }

    public void writeLong(long value) {
        throw new UnreplayableOperationException();
    }

    public void writeMedium(int value) {
        throw new UnreplayableOperationException();
    }

    public void writeZero(int length) {
        throw new UnreplayableOperationException();
    }

    public int writerIndex() {
        return this.buffer.writerIndex();
    }

    public void writerIndex(int writerIndex) {
        throw new UnreplayableOperationException();
    }

    public void writeShort(int value) {
        throw new UnreplayableOperationException();
    }

    public void writeChar(int value) {
        throw new UnreplayableOperationException();
    }

    public void writeFloat(float value) {
        throw new UnreplayableOperationException();
    }

    public void writeDouble(double value) {
        throw new UnreplayableOperationException();
    }

    private void checkIndex(int index) {
        if (index > this.buffer.writerIndex()) {
            throw REPLAY;
        }
    }

    private void checkIndex(int index, int length) {
        if (index + length > this.buffer.writerIndex()) {
            throw REPLAY;
        }
    }

    private void checkReadableBytes(int readableBytes) {
        if (this.buffer.readableBytes() < readableBytes) {
            throw REPLAY;
        }
    }
}
