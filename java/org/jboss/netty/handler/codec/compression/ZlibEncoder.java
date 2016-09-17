package org.jboss.netty.handler.codec.compression;

import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.BuddyOnlineState;

public class ZlibEncoder extends OneToOneEncoder implements LifeCycleAwareChannelHandler {
    private static final byte[] EMPTY_ARRAY = new byte[0];
    private volatile ChannelHandlerContext ctx;
    private final AtomicBoolean finished;
    private final ZStream z;

    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.BOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public ZlibEncoder() {
        this(6);
    }

    public ZlibEncoder(int compressionLevel) {
        this(ZlibWrapper.ZLIB, compressionLevel);
    }

    public ZlibEncoder(ZlibWrapper wrapper) {
        this(wrapper, 6);
    }

    public ZlibEncoder(ZlibWrapper wrapper, int compressionLevel) {
        this.z = new ZStream();
        this.finished = new AtomicBoolean();
        if (compressionLevel < 0 || compressionLevel > 9) {
            throw new IllegalArgumentException("compressionLevel: " + compressionLevel + " (expected: 0-9)");
        } else if (wrapper == null) {
            throw new NullPointerException("wrapper");
        } else {
            synchronized (this.z) {
                int resultCode = this.z.deflateInit(compressionLevel, ZlibUtil.convertWrapperType(wrapper));
                if (resultCode != 0) {
                    ZlibUtil.fail(this.z, "initialization failure", resultCode);
                }
            }
        }
    }

    public ZlibEncoder(byte[] dictionary) {
        this(6, dictionary);
    }

    public ZlibEncoder(int compressionLevel, byte[] dictionary) {
        this.z = new ZStream();
        this.finished = new AtomicBoolean();
        if (compressionLevel < 0 || compressionLevel > 9) {
            throw new IllegalArgumentException("compressionLevel: " + compressionLevel + " (expected: 0-9)");
        } else if (dictionary == null) {
            throw new NullPointerException("dictionary");
        } else {
            synchronized (this.z) {
                int resultCode = this.z.deflateInit(compressionLevel, JZlib.W_ZLIB);
                if (resultCode != 0) {
                    ZlibUtil.fail(this.z, "initialization failure", resultCode);
                } else {
                    resultCode = this.z.deflateSetDictionary(dictionary, dictionary.length);
                    if (resultCode != 0) {
                        ZlibUtil.fail(this.z, "failed to set the dictionary", resultCode);
                    }
                }
            }
        }
    }

    public ChannelFuture close() {
        ChannelHandlerContext ctx = this.ctx;
        if (ctx != null) {
            return finishEncode(ctx, null);
        }
        throw new IllegalStateException("not added to a pipeline");
    }

    public boolean isClosed() {
        return this.finished.get();
    }

    protected Object encode(ChannelHandlerContext ctx, Channel channel, Object msg) throws Exception {
        if (!(msg instanceof ChannelBuffer) || this.finished.get()) {
            return msg;
        }
        Object result;
        synchronized (this.z) {
            try {
                ChannelBuffer uncompressed = (ChannelBuffer) msg;
                byte[] in = new byte[uncompressed.readableBytes()];
                uncompressed.readBytes(in);
                this.z.next_in = in;
                this.z.next_in_index = 0;
                this.z.avail_in = in.length;
                byte[] out = new byte[(((int) Math.ceil(((double) in.length) * 1.001d)) + 12)];
                this.z.next_out = out;
                this.z.next_out_index = 0;
                this.z.avail_out = out.length;
                int resultCode = this.z.deflate(2);
                if (resultCode != 0) {
                    ZlibUtil.fail(this.z, "compression failure", resultCode);
                }
                if (this.z.next_out_index != 0) {
                    result = ctx.getChannel().getConfig().getBufferFactory().getBuffer(uncompressed.order(), out, 0, this.z.next_out_index);
                } else {
                    result = ChannelBuffers.EMPTY_BUFFER;
                }
                this.z.next_in = null;
                this.z.next_out = null;
            } catch (Throwable th) {
                this.z.next_in = null;
                this.z.next_out = null;
            }
        }
        return result;
    }

    public void handleDownstream(ChannelHandlerContext ctx, ChannelEvent evt) throws Exception {
        if (evt instanceof ChannelStateEvent) {
            ChannelStateEvent e = (ChannelStateEvent) evt;
            switch (AnonymousClass2.$SwitchMap$org$jboss$netty$channel$ChannelState[e.getState().ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (Boolean.FALSE.equals(e.getValue()) || e.getValue() == null) {
                        finishEncode(ctx, evt);
                        return;
                    }
            }
        }
        super.handleDownstream(ctx, evt);
    }

    private ChannelFuture finishEncode(final ChannelHandlerContext ctx, final ChannelEvent evt) {
        if (this.finished.compareAndSet(false, true)) {
            ChannelFuture future;
            Object footer;
            synchronized (this.z) {
                try {
                    this.z.next_in = EMPTY_ARRAY;
                    this.z.next_in_index = 0;
                    this.z.avail_in = 0;
                    byte[] out = new byte[32];
                    this.z.next_out = out;
                    this.z.next_out_index = 0;
                    this.z.avail_out = out.length;
                    int resultCode = this.z.deflate(4);
                    if (resultCode != 0 && resultCode != 1) {
                        future = Channels.failedFuture(ctx.getChannel(), ZlibUtil.exception(this.z, "compression failure", resultCode));
                        footer = null;
                    } else if (this.z.next_out_index != 0) {
                        future = Channels.future(ctx.getChannel());
                        footer = ctx.getChannel().getConfig().getBufferFactory().getBuffer(out, 0, this.z.next_out_index);
                    } else {
                        future = Channels.future(ctx.getChannel());
                        footer = ChannelBuffers.EMPTY_BUFFER;
                    }
                    this.z.deflateEnd();
                    this.z.next_in = null;
                    this.z.next_out = null;
                } catch (Throwable th) {
                    this.z.deflateEnd();
                    this.z.next_in = null;
                    this.z.next_out = null;
                }
            }
            if (footer != null) {
                Channels.write(ctx, future, footer);
            }
            if (evt == null) {
                return future;
            }
            future.addListener(new ChannelFutureListener() {
                public void operationComplete(ChannelFuture future) throws Exception {
                    ctx.sendDownstream(evt);
                }
            });
            return future;
        }
        if (evt != null) {
            ctx.sendDownstream(evt);
        }
        return Channels.succeededFuture(ctx.getChannel());
    }

    public void beforeAdd(ChannelHandlerContext ctx) throws Exception {
        this.ctx = ctx;
    }

    public void afterAdd(ChannelHandlerContext ctx) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext ctx) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext ctx) throws Exception {
    }
}
