package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class LengthFieldBasedFrameDecoder extends FrameDecoder {
    private long bytesToDiscard;
    private boolean discardingTooLongFrame;
    private final int initialBytesToStrip;
    private final int lengthAdjustment;
    private final int lengthFieldEndOffset;
    private final int lengthFieldLength;
    private final int lengthFieldOffset;
    private final int maxFrameLength;
    private long tooLongFrameLength;

    public LengthFieldBasedFrameDecoder(int maxFrameLength, int lengthFieldOffset, int lengthFieldLength) {
        this(maxFrameLength, lengthFieldOffset, lengthFieldLength, 0, 0);
    }

    public LengthFieldBasedFrameDecoder(int maxFrameLength, int lengthFieldOffset, int lengthFieldLength, int lengthAdjustment, int initialBytesToStrip) {
        if (maxFrameLength <= 0) {
            throw new IllegalArgumentException("maxFrameLength must be a positive integer: " + maxFrameLength);
        } else if (lengthFieldOffset < 0) {
            throw new IllegalArgumentException("lengthFieldOffset must be a non-negative integer: " + lengthFieldOffset);
        } else if (initialBytesToStrip < 0) {
            throw new IllegalArgumentException("initialBytesToStrip must be a non-negative integer: " + initialBytesToStrip);
        } else if (lengthFieldLength != 1 && lengthFieldLength != 2 && lengthFieldLength != 3 && lengthFieldLength != 4 && lengthFieldLength != 8) {
            throw new IllegalArgumentException("lengthFieldLength must be either 1, 2, 3, 4, or 8: " + lengthFieldLength);
        } else if (lengthFieldOffset > maxFrameLength - lengthFieldLength) {
            throw new IllegalArgumentException("maxFrameLength (" + maxFrameLength + ") " + "must be equal to or greater than " + "lengthFieldOffset (" + lengthFieldOffset + ") + " + "lengthFieldLength (" + lengthFieldLength + ").");
        } else {
            this.maxFrameLength = maxFrameLength;
            this.lengthFieldOffset = lengthFieldOffset;
            this.lengthFieldLength = lengthFieldLength;
            this.lengthAdjustment = lengthAdjustment;
            this.lengthFieldEndOffset = lengthFieldOffset + lengthFieldLength;
            this.initialBytesToStrip = initialBytesToStrip;
        }
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer) throws Exception {
        if (this.discardingTooLongFrame) {
            long bytesToDiscard = this.bytesToDiscard;
            int localBytesToDiscard = (int) Math.min(bytesToDiscard, (long) buffer.readableBytes());
            buffer.skipBytes(localBytesToDiscard);
            bytesToDiscard -= (long) localBytesToDiscard;
            this.bytesToDiscard = bytesToDiscard;
            if (bytesToDiscard == 0) {
                long tooLongFrameLength = this.tooLongFrameLength;
                this.tooLongFrameLength = 0;
                fail(ctx, tooLongFrameLength);
            }
            return null;
        } else if (buffer.readableBytes() < this.lengthFieldEndOffset) {
            return null;
        } else {
            long frameLength;
            int actualLengthFieldOffset = buffer.readerIndex() + this.lengthFieldOffset;
            switch (this.lengthFieldLength) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    frameLength = (long) buffer.getUnsignedByte(actualLengthFieldOffset);
                    break;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    frameLength = (long) buffer.getUnsignedShort(actualLengthFieldOffset);
                    break;
                case MessageRecipientMode.TO_ZONE /*3*/:
                    frameLength = (long) buffer.getUnsignedMedium(actualLengthFieldOffset);
                    break;
                case Base64.DONT_GUNZIP /*4*/:
                    frameLength = buffer.getUnsignedInt(actualLengthFieldOffset);
                    break;
                case Base64.DO_BREAK_LINES /*8*/:
                    frameLength = buffer.getLong(actualLengthFieldOffset);
                    break;
                default:
                    throw new Error("should not reach here");
            }
            if (frameLength < 0) {
                buffer.skipBytes(this.lengthFieldEndOffset);
                throw new CorruptedFrameException("negative pre-adjustment length field: " + frameLength);
            }
            frameLength += (long) (this.lengthAdjustment + this.lengthFieldEndOffset);
            if (frameLength < ((long) this.lengthFieldEndOffset)) {
                buffer.skipBytes(this.lengthFieldEndOffset);
                throw new CorruptedFrameException("Adjusted frame length (" + frameLength + ") is less " + "than lengthFieldEndOffset: " + this.lengthFieldEndOffset);
            } else if (frameLength > ((long) this.maxFrameLength)) {
                this.discardingTooLongFrame = true;
                this.tooLongFrameLength = frameLength;
                this.bytesToDiscard = frameLength - ((long) buffer.readableBytes());
                buffer.skipBytes(buffer.readableBytes());
                return null;
            } else {
                int frameLengthInt = (int) frameLength;
                if (buffer.readableBytes() < frameLengthInt) {
                    return null;
                }
                if (this.initialBytesToStrip > frameLengthInt) {
                    buffer.skipBytes(frameLengthInt);
                    throw new CorruptedFrameException("Adjusted frame length (" + frameLength + ") is less " + "than initialBytesToStrip: " + this.initialBytesToStrip);
                }
                buffer.skipBytes(this.initialBytesToStrip);
                int readerIndex = buffer.readerIndex();
                int actualFrameLength = frameLengthInt - this.initialBytesToStrip;
                Object frame = extractFrame(buffer, readerIndex, actualFrameLength);
                buffer.readerIndex(readerIndex + actualFrameLength);
                return frame;
            }
        }
    }

    protected ChannelBuffer extractFrame(ChannelBuffer buffer, int index, int length) {
        ChannelBuffer frame = buffer.factory().getBuffer(length);
        frame.writeBytes(buffer, index, length);
        return frame;
    }

    private void fail(ChannelHandlerContext ctx, long frameLength) {
        if (frameLength > 0) {
            Channels.fireExceptionCaught(ctx.getChannel(), new TooLongFrameException("Adjusted frame length exceeds " + this.maxFrameLength + ": " + frameLength + " - discarded"));
        } else {
            Channels.fireExceptionCaught(ctx.getChannel(), new TooLongFrameException("Adjusted frame length exceeds " + this.maxFrameLength + " - discarding"));
        }
    }
}
