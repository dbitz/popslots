package org.jdom.input;

import org.jdom.Verifier;

class TextBuffer {
    private static final String CVS_ID = "@(#) $RCSfile: TextBuffer.java,v $ $Revision: 1.10 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $";
    private char[] array = new char[4096];
    private int arraySize = 0;
    private String prefixString;

    TextBuffer() {
    }

    void append(char[] source, int start, int count) {
        if (this.prefixString == null) {
            this.prefixString = new String(source, start, count);
            return;
        }
        ensureCapacity(this.arraySize + count);
        System.arraycopy(source, start, this.array, this.arraySize, count);
        this.arraySize += count;
    }

    int size() {
        if (this.prefixString == null) {
            return 0;
        }
        return this.prefixString.length() + this.arraySize;
    }

    void clear() {
        this.arraySize = 0;
        this.prefixString = null;
    }

    boolean isAllWhitespace() {
        if (this.prefixString == null || this.prefixString.length() == 0) {
            return true;
        }
        int i;
        int size = this.prefixString.length();
        for (i = 0; i < size; i++) {
            if (!Verifier.isXMLWhitespace(this.prefixString.charAt(i))) {
                return false;
            }
        }
        for (i = 0; i < this.arraySize; i++) {
            if (!Verifier.isXMLWhitespace(this.array[i])) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (this.prefixString == null) {
            return "";
        }
        String str = "";
        if (this.arraySize == 0) {
            return this.prefixString;
        }
        return new StringBuffer(this.prefixString.length() + this.arraySize).append(this.prefixString).append(this.array, 0, this.arraySize).toString();
    }

    private void ensureCapacity(int csize) {
        int capacity = this.array.length;
        if (csize > capacity) {
            char[] old = this.array;
            int nsize = capacity;
            while (csize > nsize) {
                nsize += capacity / 2;
            }
            this.array = new char[nsize];
            System.arraycopy(old, 0, this.array, 0, this.arraySize);
        }
    }
}
