package org.jboss.netty.handler.codec.protobuf;

import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.MessageLite;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferInputStream;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;

@Sharable
public class ProtobufDecoder extends OneToOneDecoder {
    private final ExtensionRegistry extensionRegistry;
    private final MessageLite prototype;

    public ProtobufDecoder(MessageLite prototype) {
        this(prototype, null);
    }

    public ProtobufDecoder(MessageLite prototype, ExtensionRegistry extensionRegistry) {
        if (prototype == null) {
            throw new NullPointerException("prototype");
        }
        this.prototype = prototype.getDefaultInstanceForType();
        this.extensionRegistry = extensionRegistry;
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        if (!(msg instanceof ChannelBuffer)) {
            return msg;
        }
        ChannelBuffer buf = (ChannelBuffer) msg;
        if (buf.hasArray()) {
            if (this.extensionRegistry == null) {
                return this.prototype.newBuilderForType().mergeFrom(buf.array(), buf.arrayOffset(), buf.readableBytes()).build();
            }
            return this.prototype.newBuilderForType().mergeFrom(buf.array(), buf.arrayOffset(), buf.readableBytes(), this.extensionRegistry).build();
        } else if (this.extensionRegistry == null) {
            return this.prototype.newBuilderForType().mergeFrom(new ChannelBufferInputStream((ChannelBuffer) msg)).build();
        } else {
            return this.prototype.newBuilderForType().mergeFrom(new ChannelBufferInputStream((ChannelBuffer) msg), this.extensionRegistry).build();
        }
    }
}
