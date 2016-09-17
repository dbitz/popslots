package com.helpshift.network.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class ByteArrayPool {
    protected static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>() {
        public int compare(byte[] lhs, byte[] rhs) {
            return lhs.length - rhs.length;
        }
    };
    private List<byte[]> buffersByLastUse = new LinkedList();
    private List<byte[]> buffersBySize = new ArrayList(64);
    private int currentSize = 0;
    private final int sizeLimit;

    public ByteArrayPool(int sizeLimit) {
        this.sizeLimit = sizeLimit;
    }

    public synchronized byte[] getBuf(int len) {
        byte[] buf;
        for (int i = 0; i < this.buffersBySize.size(); i++) {
            buf = (byte[]) this.buffersBySize.get(i);
            if (buf.length >= len) {
                this.currentSize -= buf.length;
                this.buffersBySize.remove(i);
                this.buffersByLastUse.remove(buf);
                break;
            }
        }
        buf = new byte[len];
        return buf;
    }

    public synchronized void returnBuf(byte[] buf) {
        if (buf != null) {
            if (buf.length <= this.sizeLimit) {
                this.buffersByLastUse.add(buf);
                int pos = Collections.binarySearch(this.buffersBySize, buf, BUF_COMPARATOR);
                if (pos < 0) {
                    pos = (-pos) - 1;
                }
                this.buffersBySize.add(pos, buf);
                this.currentSize += buf.length;
                trim();
            }
        }
    }

    private synchronized void trim() {
        while (this.currentSize > this.sizeLimit) {
            byte[] buf = (byte[]) this.buffersByLastUse.remove(0);
            this.buffersBySize.remove(buf);
            this.currentSize -= buf.length;
        }
    }
}
