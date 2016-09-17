package com.helpshift.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ByteArrayUtil {
    public static byte[] toByteArray(Object obj) throws IOException {
        Throwable th;
        ByteArrayOutputStream bos = null;
        ObjectOutputStream oos = null;
        try {
            ByteArrayOutputStream bos2 = new ByteArrayOutputStream();
            try {
                ObjectOutputStream oos2 = new ObjectOutputStream(bos2);
                try {
                    oos2.writeObject(obj);
                    oos2.flush();
                    byte[] bytes = bos2.toByteArray();
                    if (oos2 != null) {
                        oos2.close();
                    }
                    if (bos2 != null) {
                        bos2.close();
                    }
                    return bytes;
                } catch (Throwable th2) {
                    th = th2;
                    oos = oos2;
                    bos = bos2;
                    if (oos != null) {
                        oos.close();
                    }
                    if (bos != null) {
                        bos.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bos = bos2;
                if (oos != null) {
                    oos.close();
                }
                if (bos != null) {
                    bos.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (oos != null) {
                oos.close();
            }
            if (bos != null) {
                bos.close();
            }
            throw th;
        }
    }

    public static Object toObject(byte[] bytes) throws IOException, ClassNotFoundException {
        Throwable th;
        ByteArrayInputStream bis = null;
        ObjectInputStream ois = null;
        try {
            ByteArrayInputStream bis2 = new ByteArrayInputStream(bytes);
            try {
                ObjectInputStream ois2 = new ObjectInputStream(bis2);
                try {
                    Object obj = ois2.readObject();
                    if (bis2 != null) {
                        bis2.close();
                    }
                    if (ois2 != null) {
                        ois2.close();
                    }
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    ois = ois2;
                    bis = bis2;
                    if (bis != null) {
                        bis.close();
                    }
                    if (ois != null) {
                        ois.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bis = bis2;
                if (bis != null) {
                    bis.close();
                }
                if (ois != null) {
                    ois.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (bis != null) {
                bis.close();
            }
            if (ois != null) {
                ois.close();
            }
            throw th;
        }
    }

    public static String toString(byte[] bytes) {
        return new String(bytes);
    }

    public static String toHex(byte[] bytes) {
        char[] hexArray = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] hexChars = new char[(bytes.length * 2)];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = hexArray[v & 15];
        }
        return new String(hexChars);
    }
}
