package org.jboss.netty.handler.codec.compression;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class ZlibDecoder extends OneToOneDecoder {
    private volatile boolean finished;
    private final ZStream z;

    public ZlibDecoder() {
        this(ZlibWrapper.ZLIB);
    }

    public ZlibDecoder(ZlibWrapper wrapper) {
        this.z = new ZStream();
        if (wrapper == null) {
            throw new NullPointerException("wrapper");
        }
        synchronized (this.z) {
            int resultCode = this.z.inflateInit(ZlibUtil.convertWrapperType(wrapper));
            if (resultCode != 0) {
                ZlibUtil.fail(this.z, "initialization failure", resultCode);
            }
        }
    }

    public ZlibDecoder(byte[] dictionary) {
        this.z = new ZStream();
        if (dictionary == null) {
            throw new NullPointerException("dictionary");
        }
        synchronized (this.z) {
            int resultCode = this.z.inflateInit(JZlib.W_ZLIB);
            if (resultCode != 0) {
                ZlibUtil.fail(this.z, "initialization failure", resultCode);
            } else {
                resultCode = this.z.inflateSetDictionary(dictionary, dictionary.length);
                if (resultCode != 0) {
                    ZlibUtil.fail(this.z, "failed to set the dictionary", resultCode);
                }
            }
        }
    }

    public boolean isClosed() {
        return this.finished;
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        if (!(msg instanceof ChannelBuffer) || this.finished) {
            return msg;
        }
        synchronized (this.z) {
            try {
                ChannelBuffer compressed = (ChannelBuffer) msg;
                byte[] in = new byte[compressed.readableBytes()];
                compressed.readBytes(in);
                this.z.next_in = in;
                this.z.next_in_index = 0;
                this.z.avail_in = in.length;
                byte[] out = new byte[(in.length << 1)];
                Object decompressed = ChannelBuffers.dynamicBuffer(compressed.order(), out.length, ctx.getChannel().getConfig().getBufferFactory());
                this.z.next_out = out;
                this.z.next_out_index = 0;
                this.z.avail_out = out.length;
                do {
                    int resultCode = this.z.inflate(2);
                    switch (resultCode) {
                        case JZlib.Z_BUF_ERROR /*-5*/:
                        case Base64.NO_OPTIONS /*0*/:
                        case BuddyOnlineState.OFFLINE /*1*/:
                            decompressed.writeBytes(out, 0, this.z.next_out_index);
                            this.z.next_out_index = 0;
                            this.z.avail_out = out.length;
                            if (resultCode == 1) {
                                this.finished = true;
                                this.z.inflateEnd();
                                break;
                            }
                            break;
                        default:
                            ZlibUtil.fail(this.z, "decompression failure", resultCode);
                            break;
                    }
                } while (this.z.avail_in > 0);
                if (decompressed.writerIndex() != 0) {
                    this.z.next_in = null;
                    this.z.next_out = null;
                    return decompressed;
                }
                this.z.next_in = null;
                this.z.next_out = null;
                return null;
            } catch (Throwable th) {
                this.z.next_in = null;
                this.z.next_out = null;
            }
        }
    }
}
