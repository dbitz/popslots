package sfs2x.client.bitswarm;

import com.smartfoxserver.v2.entities.data.ISFSObject;

public class Message implements IMessage {
    private ISFSObject content;
    private int id;
    private boolean isEncrypted = false;
    private boolean isUDP;
    private long packetId;
    private int targetController;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ISFSObject getContent() {
        return this.content;
    }

    public void setContent(ISFSObject content) {
        this.content = content;
    }

    public int getTargetController() {
        return this.targetController;
    }

    public void setTargetController(int targetController) {
        this.targetController = targetController;
    }

    public boolean isEncrypted() {
        return this.isEncrypted;
    }

    public void setEncrypted(boolean encrypted) {
        this.isEncrypted = encrypted;
    }

    public boolean isUDP() {
        return this.isUDP;
    }

    public void setUDP(boolean udp) {
        this.isUDP = udp;
    }

    public long getPacketId() {
        return this.packetId;
    }

    public void setPacketId(long packetId) {
        this.packetId = packetId;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{ Message id: ").append(this.id).append(" }\n");
        sb.append("{\ufffd\ufffdDump: }\n");
        sb.append(this.content.getDump());
        return sb.toString();
    }
}
