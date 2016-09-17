package sfs2x.client.core;

import com.adjust.sdk.Constants;
import com.smartfoxserver.bitswarm.util.ByteUtils;
import com.smartfoxserver.v2.exceptions.SFSCodecException;
import com.smartfoxserver.v2.exceptions.SFSException;
import com.smartfoxserver.v2.protocol.binary.PacketHeader;
import com.smartfoxserver.v2.protocol.serialization.DefaultObjectDumpFormatter;
import java.nio.ByteBuffer;
import org.jdom.filter.ContentFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.bitswarm.IOHandler;
import sfs2x.client.bitswarm.IProtocolCodec;
import sfs2x.client.bitswarm.PendingPacket;
import sfs2x.client.util.ByteArray;
import sfs2x.fsm.FiniteStateMachine;

public class SFSIOHandler implements IOHandler {
    public static final int INT_BYTE_SIZE = 4;
    public static final int SHORT_BYTE_SIZE = 2;
    private final ByteArray EMPTY_BUFFER = new ByteArray();
    private BitSwarmClient bitSwarm;
    private FiniteStateMachine fsm;
    private boolean isDebugMode = false;
    private Logger log;
    IPacketEncrypter packetEncrypter;
    private PendingPacket pendingPacket;
    private IProtocolCodec protocolCodec;
    private int skipBytes = 0;

    public final IProtocolCodec getCodec() {
        return this.protocolCodec;
    }

    private int getReadState() {
        return this.fsm.getCurrentState();
    }

    public SFSIOHandler(BitSwarmClient bitSwarm) {
        this.bitSwarm = bitSwarm;
        this.log = LoggerFactory.getLogger(getClass());
        this.protocolCodec = new SFSProtocolCodec(this, bitSwarm);
        this.packetEncrypter = new DefaultPacketEncrypter(bitSwarm);
        InitStates();
        this.isDebugMode = bitSwarm.getSfs().isDebug();
    }

    private void InitStates() {
        this.fsm = new FiniteStateMachine();
        this.fsm.addState(INT_BYTE_SIZE);
        this.fsm.addState(3);
        this.fsm.addState(1);
        this.fsm.addState(SHORT_BYTE_SIZE);
        this.fsm.addState(0);
        this.fsm.addStateTransition(0, 1, 0);
        this.fsm.addStateTransition(1, 3, 1);
        this.fsm.addStateTransition(1, SHORT_BYTE_SIZE, SHORT_BYTE_SIZE);
        this.fsm.addStateTransition(SHORT_BYTE_SIZE, 3, 3);
        this.fsm.addStateTransition(3, 0, INT_BYTE_SIZE);
        this.fsm.addStateTransition(3, INT_BYTE_SIZE, 5);
        this.fsm.addStateTransition(INT_BYTE_SIZE, 0, 6);
        this.fsm.setCurrentState(0);
    }

    public void onDataRead(ByteArray data) throws SFSException {
        if (data.getLength() == 0) {
            throw new SFSException("Unexpected empty packet data: no readable bytes available!");
        }
        if (this.bitSwarm != null && this.isDebugMode) {
            if (data.getLength() > 1024) {
                this.log.info("Data Read: Size > 1024, dump omitted");
            } else {
                this.log.info("Data Read: " + ByteUtils.fullHexDump(data.getBytes()));
            }
        }
        data.setPosition(0);
        while (data.getLength() > 0) {
            if (getReadState() == 0) {
                data = handleNewPacket(data);
            } else if (getReadState() == 1) {
                data = handleDataSize(data);
            } else if (getReadState() == SHORT_BYTE_SIZE) {
                data = handleDataSizeFragment(data);
            } else if (getReadState() == 3) {
                data = handlePacketData(data);
            } else if (getReadState() == INT_BYTE_SIZE) {
                data = handleInvalidData(data);
            }
        }
    }

    private ByteArray handleNewPacket(ByteArray data) throws SFSException {
        if (this.isDebugMode) {
            this.log.info("Handling New Packet of size " + data.getLength());
        }
        byte headerByte = data.readByte();
        if (((headerByte & ContentFilter.DOCTYPE) ^ -1) > 0) {
            throw new SFSException("Unexpected header byte: " + headerByte + "\n" + DefaultObjectDumpFormatter.prettyPrintByteArray(data.getBytes()));
        }
        this.pendingPacket = new PendingPacket(createPacketHeader(headerByte));
        this.fsm.applyTransition(0);
        return resizeByteArray(data, 1, data.getLength() - 1);
    }

    private ByteArray handleDataSize(ByteArray data) throws SFSException {
        if (this.isDebugMode && this.log.isDebugEnabled()) {
            this.log.debug("Handling Header Size. Length: " + data.getLength() + " (" + (this.pendingPacket.getHeader().isBigSized() ? "big" : Constants.SMALL) + ")");
        }
        int dataSize = -1;
        int sizeBytes = SHORT_BYTE_SIZE;
        if (this.pendingPacket.getHeader().isBigSized()) {
            if (data.getLength() >= INT_BYTE_SIZE) {
                dataSize = data.readInt();
            }
            sizeBytes = INT_BYTE_SIZE;
        } else if (data.getLength() >= SHORT_BYTE_SIZE) {
            dataSize = data.readUShort();
        }
        if (this.isDebugMode && this.log.isDebugEnabled()) {
            this.log.debug("Data size is " + dataSize);
        }
        if (dataSize != -1) {
            this.pendingPacket.getHeader().setExpectedLen(dataSize);
            data = resizeByteArray(data, sizeBytes, data.getLength() - sizeBytes);
            this.fsm.applyTransition(1);
            return data;
        }
        this.fsm.applyTransition(SHORT_BYTE_SIZE);
        writeBytes(this.pendingPacket, data);
        return this.EMPTY_BUFFER;
    }

    private ByteArray handleDataSizeFragment(ByteArray data) throws SFSException {
        if (this.isDebugMode && this.log.isDebugEnabled()) {
            this.log.debug("Handling Size fragment. Data: " + data.getLength());
        }
        int remaining = this.pendingPacket.getHeader().isBigSized() ? 4 - this.pendingPacket.getBuffer().getLength() : 2 - this.pendingPacket.getBuffer().getLength();
        if (data.getLength() >= remaining) {
            writeBytes(this.pendingPacket, data, remaining);
            int neededLength = this.pendingPacket.getHeader().isBigSized() ? INT_BYTE_SIZE : SHORT_BYTE_SIZE;
            ByteArray size = new ByteArray();
            size.writeBytes(this.pendingPacket.getBuffer().getBytes(), neededLength);
            size.setPosition(0);
            int dataSize = this.pendingPacket.getHeader().isBigSized() ? size.readInt() : size.readShort();
            if (this.isDebugMode && this.log.isDebugEnabled()) {
                this.log.debug("DataSize is ready: " + dataSize + " bytes");
            }
            this.pendingPacket.getHeader().setExpectedLen(dataSize);
            this.pendingPacket.setBuffer(new ByteArray());
            this.fsm.applyTransition(3);
            if (data.getLength() > remaining) {
                return resizeByteArray(data, remaining, data.getLength() - remaining);
            }
            return this.EMPTY_BUFFER;
        }
        writeBytes(this.pendingPacket, data);
        return this.EMPTY_BUFFER;
    }

    private ByteArray handlePacketData(ByteArray data) throws SFSException {
        int remaining = this.pendingPacket.getHeader().getExpectedLen() - this.pendingPacket.getBuffer().getLength();
        boolean isThereMore = data.getLength() > remaining;
        ByteArray currentData = new ByteArray(data.getBytes());
        try {
            if (this.isDebugMode) {
                this.log.info("Handling Data: " + data.getLength() + ", previous state: " + this.pendingPacket.getBuffer().getLength() + "/" + this.pendingPacket.getHeader().getExpectedLen());
            }
            if (data.getLength() >= remaining) {
                writeBytes(this.pendingPacket, data, remaining);
                if (this.isDebugMode) {
                    this.log.info("<<< Packet Complete >>>");
                }
                if (this.pendingPacket.getHeader().isEncrypted()) {
                    this.pendingPacket.getBuffer().setBuffer(this.packetEncrypter.decrypt(this.pendingPacket.getBuffer().getBytes()));
                }
                if (this.pendingPacket.getHeader().isCompressed()) {
                    uncompress(this.pendingPacket);
                }
                this.protocolCodec.onPacketRead(this.pendingPacket.getBuffer());
                this.fsm.applyTransition(INT_BYTE_SIZE);
            } else {
                writeBytes(this.pendingPacket, data);
            }
            if (isThereMore) {
                data = resizeByteArray(data, remaining, data.getLength() - remaining);
            } else {
                data = this.EMPTY_BUFFER;
            }
            return data;
        } catch (Throwable e) {
            throw new SFSException(e);
        } catch (Throwable ex) {
            this.log.error("Error handling data: " + ex.getMessage(), ex);
            this.skipBytes = remaining;
            this.fsm.applyTransition(5);
            return currentData;
        }
    }

    private ByteArray handleInvalidData(ByteArray data) {
        if (this.skipBytes == 0) {
            this.fsm.applyTransition(6);
            return data;
        }
        int bytesToRemove = Math.min(data.getLength(), this.skipBytes);
        data = resizeByteArray(data, bytesToRemove, data.getLength() - bytesToRemove);
        this.skipBytes -= bytesToRemove;
        return data;
    }

    private ByteArray resizeByteArray(ByteArray array, int pos, int len) {
        ByteBuffer buffer = ByteBuffer.allocate(len);
        buffer.put(array.getBytes(), pos, len);
        return new ByteArray(buffer.array());
    }

    public void onDataWrite(IMessage message) throws SFSException {
        ByteArray writeBuffer = new ByteArray();
        ByteArray binData = new ByteArray(message.getContent().toBinary());
        boolean isCompressed = false;
        boolean isEncrypted = false;
        if (binData.getLength() > this.bitSwarm.getCompressionThreshold()) {
            binData.compress();
            isCompressed = true;
        }
        if (binData.getLength() > this.bitSwarm.getMaxMessageSize()) {
            throw new SFSCodecException("Message size is too big: " + binData.getLength() + ", the server limit is: " + this.bitSwarm.getMaxMessageSize());
        }
        boolean z;
        if (this.bitSwarm.getCryptoKey() != null) {
            try {
                binData.setBuffer(this.packetEncrypter.encrypt(binData.getBytes()));
                isEncrypted = true;
            } catch (Throwable e) {
                throw new SFSException(e);
            }
        }
        int sizeBytes = SHORT_BYTE_SIZE;
        if (binData.getLength() > 65535) {
            sizeBytes = INT_BYTE_SIZE;
        }
        boolean useBlueBox = this.bitSwarm.getUseBlueBox();
        if (sizeBytes == INT_BYTE_SIZE) {
            z = true;
        } else {
            z = false;
        }
        writeBuffer.writeByte(encodePacketHeader(new PacketHeader(true, isEncrypted, isCompressed, useBlueBox, z)));
        if (sizeBytes > SHORT_BYTE_SIZE) {
            writeBuffer.writeInt(binData.getLength());
        } else {
            writeBuffer.writeUShort(binData.getLength());
        }
        writeBuffer.writeBytes(binData.getBytes());
        if (this.bitSwarm.getUseBlueBox()) {
            this.bitSwarm.getHttpClient().send(writeBuffer);
        } else if (!this.bitSwarm.getSocket().isConnected()) {
        } else {
            if (message.isUDP()) {
                writeUDP(message, writeBuffer);
            } else {
                writeTCP(message, writeBuffer);
            }
        }
    }

    private void writeTCP(IMessage message, ByteArray writeBuffer) {
        this.bitSwarm.getSocket().write(writeBuffer.getBytes());
        if (this.isDebugMode) {
            this.log.info("Data written: " + message.getContent().getHexDump());
        }
    }

    private void writeUDP(IMessage message, ByteArray writeBuffer) {
        this.bitSwarm.getUdpManager().send(writeBuffer);
    }

    private PacketHeader createPacketHeader(byte headerByte) {
        boolean z;
        boolean z2 = false;
        boolean z3 = (headerByte & 64) > 0;
        if ((headerByte & 32) > 0) {
            z = true;
        } else {
            z = false;
        }
        boolean z4 = (headerByte & 16) > 0;
        if ((headerByte & 8) > 0) {
            z2 = true;
        }
        return new PacketHeader(true, z3, z, z4, z2);
    }

    private byte encodePacketHeader(PacketHeader packetHeader) {
        byte headerByte = (byte) 0;
        if (packetHeader.isBinary()) {
            headerByte = (byte) ContentFilter.DOCTYPE;
        }
        if (packetHeader.isEncrypted()) {
            headerByte = (byte) (headerByte | 64);
        }
        if (packetHeader.isCompressed()) {
            headerByte = (byte) (headerByte | 32);
        }
        if (packetHeader.isBlueBoxed()) {
            headerByte = (byte) (headerByte | 16);
        }
        if (packetHeader.isBigSized()) {
            return (byte) (headerByte | 8);
        }
        return headerByte;
    }

    private void writeBytes(PendingPacket pendingPacket, ByteArray data) {
        ByteArray buffer = pendingPacket.getBuffer();
        buffer.writeBytes(data.getBytes());
        pendingPacket.setBuffer(buffer);
    }

    private void writeBytes(PendingPacket pendingPacket, ByteArray data, int count) {
        ByteArray buffer = pendingPacket.getBuffer();
        buffer.writeBytes(data.getBytes(), count);
        pendingPacket.setBuffer(buffer);
    }

    private void uncompress(PendingPacket pendingPacket) throws SFSException {
        ByteArray buffer = pendingPacket.getBuffer();
        buffer.uncompress();
        pendingPacket.setBuffer(buffer);
    }
}
