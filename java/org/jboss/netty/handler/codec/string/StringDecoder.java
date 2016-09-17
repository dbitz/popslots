package org.jboss.netty.handler.codec.string;

import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

@Sharable
public class StringDecoder extends OneToOneDecoder {
    private final Charset charset;

    public StringDecoder() {
        this(Charset.defaultCharset());
    }

    public StringDecoder(Charset charset) {
        if (charset == null) {
            throw new NullPointerException(Values.CHARSET);
        }
        this.charset = charset;
    }

    @Deprecated
    public StringDecoder(String charsetName) {
        this(Charset.forName(charsetName));
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        return !(msg instanceof ChannelBuffer) ? msg : ((ChannelBuffer) msg).toString(this.charset);
    }
}
