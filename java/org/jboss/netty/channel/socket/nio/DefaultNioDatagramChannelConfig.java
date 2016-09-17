package org.jboss.netty.channel.socket.nio;

import com.facebook.internal.NativeProtocol;
import java.net.DatagramSocket;
import java.util.Map;
import org.jboss.netty.channel.socket.DefaultDatagramChannelConfig;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.ConversionUtil;

class DefaultNioDatagramChannelConfig extends DefaultDatagramChannelConfig implements NioDatagramChannelConfig {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultNioDatagramChannelConfig.class);
    private volatile int writeBufferHighWaterMark = NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
    private volatile int writeBufferLowWaterMark = 32768;
    private volatile int writeSpinCount = 16;

    DefaultNioDatagramChannelConfig(DatagramSocket socket) {
        super(socket);
    }

    public void setOptions(Map<String, Object> options) {
        super.setOptions(options);
        if (getWriteBufferHighWaterMark() < getWriteBufferLowWaterMark()) {
            setWriteBufferLowWaterMark0(getWriteBufferHighWaterMark() >>> 1);
            logger.warn("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark.");
        }
    }

    public boolean setOption(String key, Object value) {
        if (super.setOption(key, value)) {
            return true;
        }
        if (key.equals("writeBufferHighWaterMark")) {
            setWriteBufferHighWaterMark0(ConversionUtil.toInt(value));
            return true;
        } else if (key.equals("writeBufferLowWaterMark")) {
            setWriteBufferLowWaterMark0(ConversionUtil.toInt(value));
            return true;
        } else if (!key.equals("writeSpinCount")) {
            return false;
        } else {
            setWriteSpinCount(ConversionUtil.toInt(value));
            return true;
        }
    }

    public int getWriteBufferHighWaterMark() {
        return this.writeBufferHighWaterMark;
    }

    public void setWriteBufferHighWaterMark(int writeBufferHighWaterMark) {
        if (writeBufferHighWaterMark < getWriteBufferLowWaterMark()) {
            throw new IllegalArgumentException("writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark (" + getWriteBufferLowWaterMark() + "): " + writeBufferHighWaterMark);
        }
        setWriteBufferHighWaterMark0(writeBufferHighWaterMark);
    }

    private void setWriteBufferHighWaterMark0(int writeBufferHighWaterMark) {
        if (writeBufferHighWaterMark < 0) {
            throw new IllegalArgumentException("writeBufferHighWaterMark: " + writeBufferHighWaterMark);
        }
        this.writeBufferHighWaterMark = writeBufferHighWaterMark;
    }

    public int getWriteBufferLowWaterMark() {
        return this.writeBufferLowWaterMark;
    }

    public void setWriteBufferLowWaterMark(int writeBufferLowWaterMark) {
        if (writeBufferLowWaterMark > getWriteBufferHighWaterMark()) {
            throw new IllegalArgumentException("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark (" + getWriteBufferHighWaterMark() + "): " + writeBufferLowWaterMark);
        }
        setWriteBufferLowWaterMark0(writeBufferLowWaterMark);
    }

    private void setWriteBufferLowWaterMark0(int writeBufferLowWaterMark) {
        if (writeBufferLowWaterMark < 0) {
            throw new IllegalArgumentException("writeBufferLowWaterMark: " + writeBufferLowWaterMark);
        }
        this.writeBufferLowWaterMark = writeBufferLowWaterMark;
    }

    public int getWriteSpinCount() {
        return this.writeSpinCount;
    }

    public void setWriteSpinCount(int writeSpinCount) {
        if (writeSpinCount <= 0) {
            throw new IllegalArgumentException("writeSpinCount must be a positive integer.");
        }
        this.writeSpinCount = writeSpinCount;
    }
}
