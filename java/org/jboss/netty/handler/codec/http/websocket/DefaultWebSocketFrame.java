package org.jboss.netty.handler.codec.http.websocket;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.CharsetUtil;
import org.jdom.filter.ContentFilter;

public class DefaultWebSocketFrame implements WebSocketFrame {
    private ChannelBuffer binaryData;
    private int type;

    public DefaultWebSocketFrame() {
        this(0, ChannelBuffers.EMPTY_BUFFER);
    }

    public DefaultWebSocketFrame(String textData) {
        this(0, ChannelBuffers.copiedBuffer((CharSequence) textData, CharsetUtil.UTF_8));
    }

    public DefaultWebSocketFrame(int type, ChannelBuffer binaryData) {
        setData(type, binaryData);
    }

    public int getType() {
        return this.type;
    }

    public boolean isText() {
        return (getType() & ContentFilter.DOCTYPE) == 0;
    }

    public boolean isBinary() {
        return !isText();
    }

    public ChannelBuffer getBinaryData() {
        return this.binaryData;
    }

    public String getTextData() {
        return getBinaryData().toString(CharsetUtil.UTF_8);
    }

    public void setData(int type, ChannelBuffer binaryData) {
        if (binaryData == null) {
            throw new NullPointerException("binaryData");
        } else if ((type & ContentFilter.DOCTYPE) != 0 || binaryData.indexOf(binaryData.readerIndex(), binaryData.writerIndex(), (byte) -1) < 0) {
            this.type = type & 255;
            this.binaryData = binaryData;
        } else {
            throw new IllegalArgumentException("a text frame should not contain 0xFF.");
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(type: " + getType() + ", " + "data: " + getBinaryData() + ')';
    }
}
