package sfs2x.client.util;

import com.adjust.sdk.Constants;
import com.smartfoxserver.v2.entities.data.SFSDataType;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import org.jdom.filter.ContentFilter;

public class ByteArray {
    private byte[] buffer;
    private boolean compressed;
    private int position;

    public byte[] getBytes() {
        return this.buffer;
    }

    public void setBuffer(byte[] buffer) {
        this.buffer = buffer;
        this.compressed = false;
    }

    public int getLength() {
        return this.buffer.length;
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public int getBytesAvailable() {
        int val = this.buffer.length - this.position;
        if (val > this.buffer.length || val < 0) {
            return 0;
        }
        return val;
    }

    public boolean isCompressed() {
        return this.compressed;
    }

    public void setCompressed(boolean compressed) {
        this.compressed = compressed;
    }

    public ByteArray() {
        this.position = 0;
        this.compressed = false;
        this.buffer = new byte[0];
    }

    public ByteArray(byte[] buf) {
        this.position = 0;
        this.compressed = false;
        this.buffer = buf;
    }

    public void compress() throws SFSException {
        if (this.compressed) {
            throw new SFSException("Buffer is already compressed");
        }
        try {
            Deflater compressor = new Deflater();
            compressor.setLevel(9);
            compressor.setInput(this.buffer);
            compressor.finish();
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buf = new byte[1024];
            while (!compressor.finished()) {
                bos.write(buf, 0, compressor.deflate(buf));
            }
            bos.close();
            this.buffer = bos.toByteArray();
            this.position = 0;
            this.compressed = true;
        } catch (IOException e) {
            throw new SFSException("Error compressing data");
        }
    }

    public void uncompress() throws SFSException {
        try {
            Inflater decompressor = new Inflater();
            decompressor.setInput(this.buffer);
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buf = new byte[1024];
            while (!decompressor.finished()) {
                bos.write(buf, 0, decompressor.inflate(buf));
            }
            bos.close();
            this.buffer = bos.toByteArray();
            this.position = 0;
            this.compressed = false;
        } catch (DataFormatException e) {
            throw new SFSException("Data format exception decompressing buffer");
        } catch (IOException e2) {
            throw new SFSException("Error decompressing data");
        }
    }

    private void checkCompressedWrite() throws SFSException {
        if (this.compressed) {
            throw new SFSException("Only raw bytes can be written a compressed array. Call Uncompress first.");
        }
    }

    private void checkCompressedRead() throws SFSException {
        if (this.compressed) {
            throw new SFSException("Only raw bytes can be read from a compressed array.");
        }
    }

    public byte[] reverseOrder(byte[] dt) {
        return dt;
    }

    public void writeByte(SFSDataType tp) {
        writeByte((byte) tp.getTypeID());
    }

    public void writeByte(byte b) {
        writeBytes(new byte[]{b});
    }

    public void writeBytes(byte[] data) {
        writeBytes(data, data.length);
    }

    public void writeBytes(byte[] data, int count) {
        ByteBuffer newBuffer = ByteBuffer.allocate(this.buffer.length + count);
        newBuffer.put(this.buffer);
        byte[] addBuffer = new byte[count];
        ByteBuffer.wrap(data).get(addBuffer, 0, count);
        newBuffer.put(addBuffer);
        this.buffer = newBuffer.array();
    }

    public void writeBool(boolean b) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            new DataOutputStream(bos).writeByte(b ? 1 : 0);
            writeBytes(bos.toByteArray());
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeInt(int i) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            new DataOutputStream(bos).writeInt(i);
            writeBytes(reverseOrder(bos.toByteArray()));
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeShort(short s) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            new DataOutputStream(bos).writeShort(s);
            writeBytes(reverseOrder(bos.toByteArray()));
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeUShort(int s) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            DataOutputStream dos = new DataOutputStream(bos);
            int b2 = s & 255;
            dos.writeByte((byte) ((65280 & s) >> 8));
            dos.writeByte((byte) b2);
            writeBytes(bos.toByteArray());
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeLong(long l) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            new DataOutputStream(bos).writeLong(l);
            writeBytes(reverseOrder(bos.toByteArray()));
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeFloat(float f) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            new DataOutputStream(bos).writeFloat(f);
            writeBytes(reverseOrder(bos.toByteArray()));
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeDouble(double d) throws SFSException {
        checkCompressedWrite();
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            new DataOutputStream(bos).writeDouble(d);
            writeBytes(reverseOrder(bos.toByteArray()));
        } catch (IOException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public void writeUTF(String str) throws SFSException {
        checkCompressedWrite();
        int utfLen = 0;
        for (int i = 0; i < str.length(); i++) {
            int c = str.charAt(i);
            if (c >= 1 && c <= 127) {
                utfLen++;
            } else if (c > 2047) {
                utfLen += 3;
            } else {
                utfLen += 2;
            }
        }
        if (utfLen > 32768) {
            throw new SFSException("String length cannot be greater then 32768 !");
        }
        try {
            writeShort((short) utfLen);
            writeBytes(str.getBytes("UTF8"));
        } catch (UnsupportedEncodingException e) {
            throw new SFSException("Error writing to data buffer");
        }
    }

    public byte readByte() throws SFSException {
        checkCompressedRead();
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        return bArr[i];
    }

    public byte[] readBytes(int count) {
        byte[] res = new byte[count];
        ByteBuffer buf = ByteBuffer.wrap(this.buffer);
        buf.position(this.position);
        buf.get(res);
        this.position += count;
        return res;
    }

    public boolean readBool() throws SFSException {
        checkCompressedRead();
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        if (bArr[i] == (byte) 1) {
            return true;
        }
        return false;
    }

    public int readInt() throws SFSException {
        checkCompressedRead();
        try {
            return new DataInputStream(new ByteArrayInputStream(reverseOrder(readBytes(4)))).readInt();
        } catch (IOException e) {
            throw new SFSException("Error reading from data buffer");
        }
    }

    public short readShort() throws SFSException {
        checkCompressedRead();
        try {
            return new DataInputStream(new ByteArrayInputStream(reverseOrder(readBytes(2)))).readShort();
        } catch (IOException e) {
            throw new SFSException("Error reading from data buffer");
        }
    }

    public int readUShort() throws SFSException {
        checkCompressedRead();
        byte[] data = reverseOrder(readBytes(2));
        int ib1 = new Integer(data[0]).intValue();
        if (ib1 < 0) {
            ib1 = (data[0] & ContentFilter.DOCTYPE) + (data[0] & 127);
        }
        int ib2 = new Integer(data[1]).intValue();
        if (ib2 < 0) {
            ib2 = (data[1] & ContentFilter.DOCTYPE) + (data[1] & 127);
        }
        return (ib1 * 256) + ib2;
    }

    public long readLong() throws SFSException {
        checkCompressedRead();
        try {
            return new DataInputStream(new ByteArrayInputStream(reverseOrder(readBytes(8)))).readLong();
        } catch (IOException e) {
            throw new SFSException("Error reading from data buffer");
        }
    }

    public float readFloat() throws SFSException {
        checkCompressedRead();
        try {
            return new DataInputStream(new ByteArrayInputStream(reverseOrder(readBytes(4)))).readFloat();
        } catch (IOException e) {
            throw new SFSException("Error reading from data buffer");
        }
    }

    public double readDouble() throws SFSException {
        checkCompressedRead();
        try {
            return new DataInputStream(new ByteArrayInputStream(reverseOrder(readBytes(8)))).readDouble();
        } catch (IOException e) {
            throw new SFSException("Error reading from data buffer");
        }
    }

    public String readUTF() throws SFSException {
        try {
            checkCompressedRead();
            return new String(readBytes(readShort()), Constants.ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new SFSException("Error reading from data buffer");
        }
    }
}
