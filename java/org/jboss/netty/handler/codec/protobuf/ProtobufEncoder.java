package org.jboss.netty.handler.codec.protobuf;

import com.google.protobuf.MessageLite;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class ProtobufEncoder extends OneToOneEncoder {
    protected Object encode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        return !(msg instanceof MessageLite) ? msg : ChannelBuffers.wrappedBuffer(((MessageLite) msg).toByteArray());
    }
}
