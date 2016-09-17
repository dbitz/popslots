package org.jboss.netty.handler.codec.string;

import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

@Sharable
public class StringEncoder extends OneToOneEncoder {
    private final Charset charset;

    public StringEncoder() {
        this(Charset.defaultCharset());
    }

    public StringEncoder(Charset charset) {
        if (charset == null) {
            throw new NullPointerException(Values.CHARSET);
        }
        this.charset = charset;
    }

    @Deprecated
    public StringEncoder(String charsetName) {
        this(Charset.forName(charsetName));
    }

    protected Object encode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        return !(msg instanceof String) ? msg : ChannelBuffers.copiedBuffer((String) msg, this.charset);
    }
}
