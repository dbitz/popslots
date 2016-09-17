package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;

public class DelimiterBasedFrameDecoder extends FrameDecoder {
    private final ChannelBuffer[] delimiters;
    private boolean discardingTooLongFrame;
    private final int maxFrameLength;
    private final boolean stripDelimiter;
    private int tooLongFrameLength;

    public DelimiterBasedFrameDecoder(int maxFrameLength, ChannelBuffer delimiter) {
        this(maxFrameLength, true, delimiter);
    }

    public DelimiterBasedFrameDecoder(int maxFrameLength, boolean stripDelimiter, ChannelBuffer delimiter) {
        validateMaxFrameLength(maxFrameLength);
        validateDelimiter(delimiter);
        this.delimiters = new ChannelBuffer[]{delimiter.slice(delimiter.readerIndex(), delimiter.readableBytes())};
        this.maxFrameLength = maxFrameLength;
        this.stripDelimiter = stripDelimiter;
    }

    public DelimiterBasedFrameDecoder(int maxFrameLength, ChannelBuffer... delimiters) {
        this(maxFrameLength, true, delimiters);
    }

    public DelimiterBasedFrameDecoder(int maxFrameLength, boolean stripDelimiter, ChannelBuffer... delimiters) {
        validateMaxFrameLength(maxFrameLength);
        if (delimiters == null) {
            throw new NullPointerException("delimiters");
        } else if (delimiters.length == 0) {
            throw new IllegalArgumentException("empty delimiters");
        } else {
            this.delimiters = new ChannelBuffer[delimiters.length];
            for (int i = 0; i < delimiters.length; i++) {
                ChannelBuffer d = delimiters[i];
                validateDelimiter(d);
                this.delimiters[i] = d.slice(d.readerIndex(), d.readableBytes());
            }
            this.maxFrameLength = maxFrameLength;
            this.stripDelimiter = stripDelimiter;
        }
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer) throws Exception {
        int minFrameLength = Integer.MAX_VALUE;
        ChannelBuffer minDelim = null;
        for (ChannelBuffer delim : this.delimiters) {
            int frameLength = indexOf(buffer, delim);
            if (frameLength >= 0 && frameLength < minFrameLength) {
                minFrameLength = frameLength;
                minDelim = delim;
            }
        }
        if (minDelim != null) {
            int minDelimLength = minDelim.capacity();
            if (this.discardingTooLongFrame) {
                this.discardingTooLongFrame = false;
                buffer.skipBytes(minFrameLength + minDelimLength);
                int tooLongFrameLength = this.tooLongFrameLength;
                this.tooLongFrameLength = 0;
                fail(ctx, (long) tooLongFrameLength);
                return null;
            } else if (minFrameLength > this.maxFrameLength) {
                buffer.skipBytes(minFrameLength + minDelimLength);
                fail(ctx, (long) minFrameLength);
                return null;
            } else if (!this.stripDelimiter) {
                return buffer.readBytes(minFrameLength + minDelimLength);
            } else {
                Object frame = buffer.readBytes(minFrameLength);
                buffer.skipBytes(minDelimLength);
                return frame;
            }
        } else if (this.discardingTooLongFrame) {
            this.tooLongFrameLength += buffer.readableBytes();
            buffer.skipBytes(buffer.readableBytes());
            return null;
        } else if (buffer.readableBytes() <= this.maxFrameLength) {
            return null;
        } else {
            this.tooLongFrameLength = buffer.readableBytes();
            buffer.skipBytes(buffer.readableBytes());
            this.discardingTooLongFrame = true;
            return null;
        }
    }

    private void fail(ChannelHandlerContext ctx, long frameLength) {
        if (frameLength > 0) {
            Channels.fireExceptionCaught(ctx.getChannel(), new TooLongFrameException("frame length exceeds " + this.maxFrameLength + ": " + frameLength + " - discarded"));
        } else {
            Channels.fireExceptionCaught(ctx.getChannel(), new TooLongFrameException("frame length exceeds " + this.maxFrameLength + " - discarding"));
        }
    }

    private static int indexOf(ChannelBuffer haystack, ChannelBuffer needle) {
        for (int i = haystack.readerIndex(); i < haystack.writerIndex(); i++) {
            int haystackIndex = i;
            int needleIndex = 0;
            while (needleIndex < needle.capacity() && haystack.getByte(haystackIndex) == needle.getByte(needleIndex)) {
                haystackIndex++;
                if (haystackIndex == haystack.writerIndex() && needleIndex != needle.capacity() - 1) {
                    return -1;
                }
                needleIndex++;
            }
            if (needleIndex == needle.capacity()) {
                return i - haystack.readerIndex();
            }
        }
        return -1;
    }

    private static void validateDelimiter(ChannelBuffer delimiter) {
        if (delimiter == null) {
            throw new NullPointerException("delimiter");
        } else if (!delimiter.readable()) {
            throw new IllegalArgumentException("empty delimiter");
        }
    }

    private static void validateMaxFrameLength(int maxFrameLength) {
        if (maxFrameLength <= 0) {
            throw new IllegalArgumentException("maxFrameLength must be a positive integer: " + maxFrameLength);
        }
    }
}
