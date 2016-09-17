package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.lang.ref.SoftReference;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.WritableByteChannel;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.FileRegion;

final class SocketSendBufferPool {
    private static final int ALIGN_MASK = 15;
    private static final int ALIGN_SHIFT = 4;
    private static final int DEFAULT_PREALLOCATION_SIZE = 65536;
    private static final SendBuffer EMPTY_BUFFER = new EmptySendBuffer();
    Preallocation current = new Preallocation(DEFAULT_PREALLOCATION_SIZE);
    PreallocationRef poolHead = null;

    interface SendBuffer {
        boolean finished();

        void release();

        long totalBytes();

        long transferTo(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException;

        long transferTo(WritableByteChannel writableByteChannel) throws IOException;

        long writtenBytes();
    }

    static final class EmptySendBuffer implements SendBuffer {
        EmptySendBuffer() {
        }

        public final boolean finished() {
            return true;
        }

        public final long writtenBytes() {
            return 0;
        }

        public final long totalBytes() {
            return 0;
        }

        public final long transferTo(WritableByteChannel ch) throws IOException {
            return 0;
        }

        public final long transferTo(DatagramChannel ch, SocketAddress raddr) throws IOException {
            return 0;
        }

        public void release() {
        }
    }

    final class FileSendBuffer implements SendBuffer {
        private final FileRegion file;
        private long writtenBytes;

        FileSendBuffer(FileRegion file) {
            this.file = file;
        }

        public boolean finished() {
            return this.writtenBytes >= this.file.getCount();
        }

        public long writtenBytes() {
            return this.writtenBytes;
        }

        public long totalBytes() {
            return this.file.getCount();
        }

        public long transferTo(WritableByteChannel ch) throws IOException {
            long localWrittenBytes = this.file.transferTo(ch, this.writtenBytes);
            this.writtenBytes += localWrittenBytes;
            return localWrittenBytes;
        }

        public long transferTo(DatagramChannel ch, SocketAddress raddr) throws IOException {
            throw new UnsupportedOperationException();
        }

        public void release() {
        }
    }

    final class PooledSendBuffer implements SendBuffer {
        final ByteBuffer buffer;
        final int initialPos;
        private final Preallocation parent;

        PooledSendBuffer(Preallocation parent, ByteBuffer buffer) {
            this.parent = parent;
            this.buffer = buffer;
            this.initialPos = buffer.position();
        }

        public boolean finished() {
            return !this.buffer.hasRemaining();
        }

        public long writtenBytes() {
            return (long) (this.buffer.position() - this.initialPos);
        }

        public long totalBytes() {
            return (long) (this.buffer.limit() - this.initialPos);
        }

        public long transferTo(WritableByteChannel ch) throws IOException {
            return (long) ch.write(this.buffer);
        }

        public long transferTo(DatagramChannel ch, SocketAddress raddr) throws IOException {
            return (long) ch.send(this.buffer, raddr);
        }

        public void release() {
            Preallocation parent = this.parent;
            int i = parent.refCnt - 1;
            parent.refCnt = i;
            if (i == 0) {
                parent.buffer.clear();
                if (parent != SocketSendBufferPool.this.current) {
                    SocketSendBufferPool.this.poolHead = new PreallocationRef(parent, SocketSendBufferPool.this.poolHead);
                }
            }
        }
    }

    private final class Preallocation {
        final ByteBuffer buffer;
        int refCnt;

        Preallocation(int capacity) {
            this.buffer = ByteBuffer.allocateDirect(capacity);
        }
    }

    private final class PreallocationRef extends SoftReference<Preallocation> {
        final PreallocationRef next;

        PreallocationRef(Preallocation prealloation, PreallocationRef next) {
            super(prealloation);
            this.next = next;
        }
    }

    class UnpooledSendBuffer implements SendBuffer {
        final ByteBuffer buffer;
        final int initialPos;

        UnpooledSendBuffer(ByteBuffer buffer) {
            this.buffer = buffer;
            this.initialPos = buffer.position();
        }

        public final boolean finished() {
            return !this.buffer.hasRemaining();
        }

        public final long writtenBytes() {
            return (long) (this.buffer.position() - this.initialPos);
        }

        public final long totalBytes() {
            return (long) (this.buffer.limit() - this.initialPos);
        }

        public final long transferTo(WritableByteChannel ch) throws IOException {
            return (long) ch.write(this.buffer);
        }

        public final long transferTo(DatagramChannel ch, SocketAddress raddr) throws IOException {
            return (long) ch.send(this.buffer, raddr);
        }

        public void release() {
        }
    }

    SocketSendBufferPool() {
    }

    final SendBuffer acquire(Object message) {
        if (message instanceof ChannelBuffer) {
            return acquire((ChannelBuffer) message);
        }
        if (message instanceof FileRegion) {
            return acquire((FileRegion) message);
        }
        throw new IllegalArgumentException("unsupported message type: " + message.getClass());
    }

    private final SendBuffer acquire(FileRegion src) {
        if (src.getCount() == 0) {
            return EMPTY_BUFFER;
        }
        return new FileSendBuffer(src);
    }

    private final SendBuffer acquire(ChannelBuffer src) {
        int size = src.readableBytes();
        if (size == 0) {
            return EMPTY_BUFFER;
        }
        if (src.isDirect()) {
            return new UnpooledSendBuffer(src.toByteBuffer());
        }
        if (src.readableBytes() > DEFAULT_PREALLOCATION_SIZE) {
            return new UnpooledSendBuffer(src.toByteBuffer());
        }
        SendBuffer dst;
        Preallocation current = this.current;
        ByteBuffer buffer = current.buffer;
        int remaining = buffer.remaining();
        ByteBuffer slice;
        if (size < remaining) {
            int nextPos = buffer.position() + size;
            slice = buffer.duplicate();
            buffer.position(align(nextPos));
            slice.limit(nextPos);
            current.refCnt++;
            dst = new PooledSendBuffer(current, slice);
        } else if (size > remaining) {
            current = getPreallocation();
            this.current = current;
            buffer = current.buffer;
            slice = buffer.duplicate();
            buffer.position(align(size));
            slice.limit(size);
            current.refCnt++;
            dst = new PooledSendBuffer(current, slice);
        } else {
            current.refCnt++;
            this.current = getPreallocation0();
            dst = new PooledSendBuffer(current, current.buffer);
        }
        ByteBuffer dstbuf = dst.buffer;
        dstbuf.mark();
        src.getBytes(src.readerIndex(), dstbuf);
        dstbuf.reset();
        return dst;
    }

    private final Preallocation getPreallocation() {
        Preallocation current = this.current;
        if (current.refCnt != 0) {
            return getPreallocation0();
        }
        current.buffer.clear();
        return current;
    }

    private final Preallocation getPreallocation0() {
        PreallocationRef ref = this.poolHead;
        if (ref != null) {
            do {
                Preallocation p = (Preallocation) ref.get();
                ref = ref.next;
                if (p != null) {
                    this.poolHead = ref;
                    return p;
                }
            } while (ref != null);
            this.poolHead = ref;
        }
        return new Preallocation(DEFAULT_PREALLOCATION_SIZE);
    }

    private static final int align(int pos) {
        int q = pos >>> ALIGN_SHIFT;
        if ((pos & ALIGN_MASK) != 0) {
            q++;
        }
        return q << ALIGN_SHIFT;
    }
}
