package sfs2x.client.bitswarm;

import com.smartfoxserver.v2.protocol.binary.PacketHeader;
import sfs2x.client.util.ByteArray;

public class PendingPacket {
    private ByteArray buffer = new ByteArray();
    private PacketHeader header;

    public PendingPacket(PacketHeader header) {
        this.header = header;
        this.buffer.setCompressed(header.isCompressed());
    }

    public PacketHeader getHeader() {
        return this.header;
    }

    public ByteArray getBuffer() {
        return this.buffer;
    }

    public void setBuffer(ByteArray buffer) {
        this.buffer = buffer;
    }
}
