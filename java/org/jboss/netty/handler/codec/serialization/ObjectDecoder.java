package org.jboss.netty.handler.codec.serialization;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferInputStream;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.frame.LengthFieldBasedFrameDecoder;

public class ObjectDecoder extends LengthFieldBasedFrameDecoder {
    private final ClassLoader classLoader;

    public ObjectDecoder() {
        this(1048576);
    }

    public ObjectDecoder(int maxObjectSize) {
        this(maxObjectSize, null);
    }

    public ObjectDecoder(int maxObjectSize, ClassLoader classLoader) {
        super(maxObjectSize, 0, 4, 0, 4);
        this.classLoader = classLoader;
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer) throws Exception {
        ChannelBuffer frame = (ChannelBuffer) super.decode(ctx, channel, buffer);
        if (frame == null) {
            return null;
        }
        return new CompactObjectInputStream(new ChannelBufferInputStream(frame), this.classLoader).readObject();
    }

    protected ChannelBuffer extractFrame(ChannelBuffer buffer, int index, int length) {
        return buffer.slice(index, length);
    }
}
