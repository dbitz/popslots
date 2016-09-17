package com.smartfoxserver.v2.protocol.binary;

public class PendingPacket {
    private Object buffer;
    private PacketHeader header;

    public PendingPacket(PacketHeader header) {
        this.header = header;
    }

    public PacketHeader getHeader() {
        return this.header;
    }

    public Object getBuffer() {
        return this.buffer;
    }

    public void setBuffer(Object buffer) {
        this.buffer = buffer;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(this.header.toString())).append(this.buffer.toString()).toString();
    }
}
