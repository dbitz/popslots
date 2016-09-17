package org.jboss.netty.handler.codec.replay;

import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.DynamicChannelBuffer;

class UnsafeDynamicChannelBuffer extends DynamicChannelBuffer {
    UnsafeDynamicChannelBuffer(ChannelBufferFactory factory) {
        super(factory.getDefaultOrder(), 256, factory);
    }

    protected void checkReadableBytes(int minReaderRemaining) {
    }
}
