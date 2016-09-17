package org.jboss.netty.handler.codec.serialization;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.StreamCorruptedException;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class CompactObjectInputStream extends ObjectInputStream {
    private final ClassLoader classLoader;

    CompactObjectInputStream(InputStream in) throws IOException {
        this(in, null);
    }

    CompactObjectInputStream(InputStream in, ClassLoader classLoader) throws IOException {
        super(in);
        this.classLoader = classLoader;
    }

    protected void readStreamHeader() throws IOException, StreamCorruptedException {
        int version = readByte() & 255;
        if (version != 5) {
            throw new StreamCorruptedException("Unsupported version: " + version);
        }
    }

    protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
        int type = read();
        if (type < 0) {
            throw new EOFException();
        }
        switch (type) {
            case Base64.NO_OPTIONS /*0*/:
                return super.readClassDescriptor();
            case BuddyOnlineState.OFFLINE /*1*/:
                return ObjectStreamClass.lookup(loadClass(readUTF()));
            default:
                throw new StreamCorruptedException("Unexpected class descriptor type: " + type);
        }
    }

    protected Class<?> resolveClass(ObjectStreamClass desc) throws IOException, ClassNotFoundException {
        try {
            return loadClass(desc.getName());
        } catch (ClassNotFoundException e) {
            return super.resolveClass(desc);
        }
    }

    protected Class<?> loadClass(String className) throws ClassNotFoundException {
        ClassLoader classLoader = this.classLoader;
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        if (classLoader != null) {
            return classLoader.loadClass(className);
        }
        return Class.forName(className);
    }
}
