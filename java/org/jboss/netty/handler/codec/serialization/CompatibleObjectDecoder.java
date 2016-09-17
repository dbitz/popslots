package org.jboss.netty.handler.codec.serialization;

import java.io.InputStream;
import java.io.ObjectInputStream;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferInputStream;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

@Deprecated
public class CompatibleObjectDecoder extends ReplayingDecoder<CompatibleObjectDecoderState> {
    private final SwitchableInputStream bin = new SwitchableInputStream();
    private ObjectInputStream oin;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState = new int[CompatibleObjectDecoderState.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState[CompatibleObjectDecoderState.READ_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState[CompatibleObjectDecoderState.READ_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public CompatibleObjectDecoder() {
        super(CompatibleObjectDecoderState.READ_HEADER);
    }

    protected ObjectInputStream newObjectInputStream(InputStream in) throws Exception {
        return new ObjectInputStream(in);
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer, CompatibleObjectDecoderState state) throws Exception {
        this.bin.switchStream(new ChannelBufferInputStream(buffer));
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$serialization$CompatibleObjectDecoderState[state.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                this.oin = newObjectInputStream(this.bin);
                checkpoint(CompatibleObjectDecoderState.READ_OBJECT);
                break;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                break;
            default:
                throw new IllegalStateException("Unknown state: " + state);
        }
        return this.oin.readObject();
    }

    protected Object decodeLast(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer, CompatibleObjectDecoderState state) throws Exception {
        switch (buffer.readableBytes()) {
            case Base64.NO_OPTIONS /*0*/:
                return null;
            case BuddyOnlineState.OFFLINE /*1*/:
                if (buffer.getByte(buffer.readerIndex()) == (byte) 121) {
                    buffer.skipBytes(1);
                    this.oin.close();
                    return null;
                }
                break;
        }
        Object decoded = decode(ctx, channel, buffer, state);
        this.oin.close();
        return decoded;
    }
}
