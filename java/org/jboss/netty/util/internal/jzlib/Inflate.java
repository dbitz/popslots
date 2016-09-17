package org.jboss.netty.util.internal.jzlib;

final class Inflate {
    private static final int BAD = 13;
    private static final int BLOCKS = 7;
    private static final int CHECK1 = 11;
    private static final int CHECK2 = 10;
    private static final int CHECK3 = 9;
    private static final int CHECK4 = 8;
    private static final int DICT0 = 6;
    private static final int DICT1 = 5;
    private static final int DICT2 = 4;
    private static final int DICT3 = 3;
    private static final int DICT4 = 2;
    private static final int DONE = 12;
    private static final int FLAG = 1;
    private static final int GZIP_CM = 16;
    private static final int GZIP_CRC32 = 24;
    private static final int GZIP_FCOMMENT = 22;
    private static final int GZIP_FEXTRA = 20;
    private static final int GZIP_FHCRC = 23;
    private static final int GZIP_FLG = 17;
    private static final int GZIP_FNAME = 21;
    private static final int GZIP_ID1 = 14;
    private static final int GZIP_ID2 = 15;
    private static final int GZIP_ISIZE = 25;
    private static final int GZIP_MTIME_XFL_OS = 18;
    private static final int GZIP_XLEN = 19;
    private static final int METHOD = 0;
    private static final byte[] mark = new byte[]{(byte) 0, (byte) 0, (byte) -1, (byte) -1};
    private InfBlocks blocks;
    private int gzipBytesToRead;
    private int gzipCRC32;
    private int gzipFlag;
    private int gzipISize;
    private int gzipUncompressedBytes;
    private int gzipXLen;
    private int marker;
    private int method;
    private int mode;
    private long need;
    private final long[] was = new long[FLAG];
    private int wbits;
    private WrapperType wrapperType;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType = new int[WrapperType.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType[WrapperType.NONE.ordinal()] = Inflate.FLAG;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType[WrapperType.ZLIB.ordinal()] = Inflate.DICT4;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType[WrapperType.GZIP.ordinal()] = Inflate.DICT3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    Inflate() {
    }

    private int inflateReset(ZStream z) {
        if (z == null || z.istate == null) {
            return -2;
        }
        z.total_out = 0;
        z.total_in = 0;
        z.msg = null;
        switch (AnonymousClass1.$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType[this.wrapperType.ordinal()]) {
            case FLAG /*1*/:
                z.istate.mode = BLOCKS;
                break;
            case DICT4 /*2*/:
                z.istate.mode = 0;
                break;
            case DICT3 /*3*/:
                z.istate.mode = GZIP_ID1;
                break;
        }
        z.istate.blocks.reset(z, null);
        this.gzipUncompressedBytes = 0;
        return 0;
    }

    int inflateEnd(ZStream z) {
        if (this.blocks != null) {
            this.blocks.free(z);
        }
        this.blocks = null;
        return 0;
    }

    int inflateInit(ZStream z, int w, WrapperType wrapperType) {
        Object obj = null;
        z.msg = null;
        this.blocks = null;
        this.wrapperType = wrapperType;
        if (w < 0) {
            throw new IllegalArgumentException("w: " + w);
        } else if (w < CHECK4 || w > GZIP_ID2) {
            inflateEnd(z);
            return -2;
        } else {
            this.wbits = w;
            Inflate inflate = z.istate;
            if (z.istate.wrapperType != WrapperType.NONE) {
                Inflate inflate2 = this;
            }
            inflate.blocks = new InfBlocks(z, obj, FLAG << w);
            inflateReset(z);
            return 0;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    int inflate(org.jboss.netty.util.internal.jzlib.ZStream r13, int r14) {
        /*
        r12 = this;
        if (r13 == 0) goto L_0x000a;
    L_0x0002:
        r4 = r13.istate;
        if (r4 == 0) goto L_0x000a;
    L_0x0006:
        r4 = r13.next_in;
        if (r4 != 0) goto L_0x000c;
    L_0x000a:
        r3 = -2;
    L_0x000b:
        return r3;
    L_0x000c:
        r4 = 4;
        if (r14 != r4) goto L_0x001a;
    L_0x000f:
        r14 = -5;
    L_0x0010:
        r3 = -5;
    L_0x0011:
        r4 = r13.istate;
        r4 = r4.mode;
        switch(r4) {
            case 0: goto L_0x001c;
            case 1: goto L_0x0077;
            case 2: goto L_0x00c2;
            case 3: goto L_0x00f2;
            case 4: goto L_0x0123;
            case 5: goto L_0x0154;
            case 6: goto L_0x0188;
            case 7: goto L_0x019b;
            case 8: goto L_0x0235;
            case 9: goto L_0x0266;
            case 10: goto L_0x0298;
            case 11: goto L_0x02ca;
            case 12: goto L_0x0329;
            case 13: goto L_0x032c;
            case 14: goto L_0x032f;
            case 15: goto L_0x0369;
            case 16: goto L_0x03a3;
            case 17: goto L_0x03dd;
            case 18: goto L_0x041e;
            case 19: goto L_0x044d;
            case 20: goto L_0x0492;
            case 21: goto L_0x04c3;
            case 22: goto L_0x04ed;
            case 23: goto L_0x051a;
            case 24: goto L_0x0578;
            case 25: goto L_0x05a5;
            default: goto L_0x0018;
        };
    L_0x0018:
        r3 = -2;
        goto L_0x000b;
    L_0x001a:
        r14 = 0;
        goto L_0x0010;
    L_0x001c:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0020:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r5 = r13.next_in;
        r6 = r13.next_in_index;
        r7 = r6 + 1;
        r13.next_in_index = r7;
        r5 = r5[r6];
        r4.method = r5;
        r4 = r5 & 15;
        r5 = 8;
        if (r4 == r5) goto L_0x0053;
    L_0x0042:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "unknown compression method";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x0053:
        r4 = r13.istate;
        r4 = r4.method;
        r4 = r4 >> 4;
        r4 = r4 + 8;
        r5 = r13.istate;
        r5 = r5.wbits;
        if (r4 <= r5) goto L_0x0072;
    L_0x0061:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "invalid window size";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x0072:
        r4 = r13.istate;
        r5 = 1;
        r4.mode = r5;
    L_0x0077:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x007b:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        r0 = r4 & 255;
        r4 = r13.istate;
        r4 = r4.method;
        r4 = r4 << 8;
        r4 = r4 + r0;
        r4 = r4 % 31;
        if (r4 == 0) goto L_0x00b2;
    L_0x00a0:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "incorrect header check";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x00b2:
        r4 = r0 & 32;
        if (r4 != 0) goto L_0x00bd;
    L_0x00b6:
        r4 = r13.istate;
        r5 = 7;
        r4.mode = r5;
        goto L_0x0011;
    L_0x00bd:
        r4 = r13.istate;
        r5 = 2;
        r4.mode = r5;
    L_0x00c2:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x00c6:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r5 = r13.next_in;
        r6 = r13.next_in_index;
        r7 = r6 + 1;
        r13.next_in_index = r7;
        r5 = r5[r6];
        r5 = r5 & 255;
        r5 = r5 << 24;
        r6 = (long) r5;
        r8 = 4278190080; // 0xff000000 float:-1.7014118E38 double:2.113706745E-314;
        r6 = r6 & r8;
        r4.need = r6;
        r4 = r13.istate;
        r5 = 3;
        r4.mode = r5;
    L_0x00f2:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x00f6:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r6 = r4.need;
        r5 = r13.next_in;
        r8 = r13.next_in_index;
        r9 = r8 + 1;
        r13.next_in_index = r9;
        r5 = r5[r8];
        r5 = r5 & 255;
        r5 = r5 << 16;
        r8 = (long) r5;
        r10 = 16711680; // 0xff0000 float:2.3418052E-38 double:8.256667E-317;
        r8 = r8 & r10;
        r6 = r6 + r8;
        r4.need = r6;
        r4 = r13.istate;
        r5 = 4;
        r4.mode = r5;
    L_0x0123:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0127:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r6 = r4.need;
        r5 = r13.next_in;
        r8 = r13.next_in_index;
        r9 = r8 + 1;
        r13.next_in_index = r9;
        r5 = r5[r8];
        r5 = r5 & 255;
        r5 = r5 << 8;
        r8 = (long) r5;
        r10 = 65280; // 0xff00 float:9.1477E-41 double:3.22526E-319;
        r8 = r8 & r10;
        r6 = r6 + r8;
        r4.need = r6;
        r4 = r13.istate;
        r5 = 5;
        r4.mode = r5;
    L_0x0154:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0158:
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r6 = r4.need;
        r5 = r13.next_in;
        r8 = r13.next_in_index;
        r9 = r8 + 1;
        r13.next_in_index = r9;
        r5 = r5[r8];
        r8 = (long) r5;
        r10 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        r8 = r8 & r10;
        r6 = r6 + r8;
        r4.need = r6;
        r4 = r13.istate;
        r4 = r4.need;
        r13.adler = r4;
        r4 = r13.istate;
        r5 = 6;
        r4.mode = r5;
        r3 = 2;
        goto L_0x000b;
    L_0x0188:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "need dictionary";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 0;
        r4.marker = r5;
        r3 = -2;
        goto L_0x000b;
    L_0x019b:
        r2 = r13.next_out_index;
        r4 = r13.istate;	 Catch:{ all -> 0x0212 }
        r4 = r4.blocks;	 Catch:{ all -> 0x0212 }
        r3 = r4.proc(r13, r3);	 Catch:{ all -> 0x0212 }
        r4 = -3;
        if (r3 != r4) goto L_0x01c8;
    L_0x01a8:
        r4 = r13.istate;	 Catch:{ all -> 0x0212 }
        r5 = 13;
        r4.mode = r5;	 Catch:{ all -> 0x0212 }
        r4 = r13.istate;	 Catch:{ all -> 0x0212 }
        r5 = 0;
        r4.marker = r5;	 Catch:{ all -> 0x0212 }
        r4 = r13.next_out_index;
        r1 = r4 - r2;
        r4 = r12.gzipUncompressedBytes;
        r4 = r4 + r1;
        r12.gzipUncompressedBytes = r4;
        r4 = r13.crc32;
        r5 = r13.next_out;
        r4 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r4, r5, r2, r1);
        r13.crc32 = r4;
        goto L_0x0011;
    L_0x01c8:
        if (r3 != 0) goto L_0x01cb;
    L_0x01ca:
        r3 = r14;
    L_0x01cb:
        r4 = 1;
        if (r3 == r4) goto L_0x01e3;
    L_0x01ce:
        r4 = r13.next_out_index;
        r1 = r4 - r2;
        r4 = r12.gzipUncompressedBytes;
        r4 = r4 + r1;
        r12.gzipUncompressedBytes = r4;
        r4 = r13.crc32;
        r5 = r13.next_out;
        r4 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r4, r5, r2, r1);
        r13.crc32 = r4;
        goto L_0x000b;
    L_0x01e3:
        r3 = r14;
        r4 = r13.istate;	 Catch:{ all -> 0x0212 }
        r4 = r4.blocks;	 Catch:{ all -> 0x0212 }
        r5 = r13.istate;	 Catch:{ all -> 0x0212 }
        r5 = r5.was;	 Catch:{ all -> 0x0212 }
        r4.reset(r13, r5);	 Catch:{ all -> 0x0212 }
        r4 = r13.next_out_index;
        r1 = r4 - r2;
        r4 = r12.gzipUncompressedBytes;
        r4 = r4 + r1;
        r12.gzipUncompressedBytes = r4;
        r4 = r13.crc32;
        r5 = r13.next_out;
        r4 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r4, r5, r2, r1);
        r13.crc32 = r4;
        r4 = r13.istate;
        r4 = r4.wrapperType;
        r5 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.NONE;
        if (r4 != r5) goto L_0x0227;
    L_0x020a:
        r4 = r13.istate;
        r5 = 12;
        r4.mode = r5;
        goto L_0x0011;
    L_0x0212:
        r4 = move-exception;
        r5 = r13.next_out_index;
        r1 = r5 - r2;
        r5 = r12.gzipUncompressedBytes;
        r5 = r5 + r1;
        r12.gzipUncompressedBytes = r5;
        r5 = r13.crc32;
        r6 = r13.next_out;
        r5 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r5, r6, r2, r1);
        r13.crc32 = r5;
        throw r4;
    L_0x0227:
        r4 = r13.istate;
        r4 = r4.wrapperType;
        r5 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.ZLIB;
        if (r4 != r5) goto L_0x0312;
    L_0x022f:
        r4 = r13.istate;
        r5 = 8;
        r4.mode = r5;
    L_0x0235:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0239:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r5 = r13.next_in;
        r6 = r13.next_in_index;
        r7 = r6 + 1;
        r13.next_in_index = r7;
        r5 = r5[r6];
        r5 = r5 & 255;
        r5 = r5 << 24;
        r6 = (long) r5;
        r8 = 4278190080; // 0xff000000 float:-1.7014118E38 double:2.113706745E-314;
        r6 = r6 & r8;
        r4.need = r6;
        r4 = r13.istate;
        r5 = 9;
        r4.mode = r5;
    L_0x0266:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x026a:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r6 = r4.need;
        r5 = r13.next_in;
        r8 = r13.next_in_index;
        r9 = r8 + 1;
        r13.next_in_index = r9;
        r5 = r5[r8];
        r5 = r5 & 255;
        r5 = r5 << 16;
        r8 = (long) r5;
        r10 = 16711680; // 0xff0000 float:2.3418052E-38 double:8.256667E-317;
        r8 = r8 & r10;
        r6 = r6 + r8;
        r4.need = r6;
        r4 = r13.istate;
        r5 = 10;
        r4.mode = r5;
    L_0x0298:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x029c:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r6 = r4.need;
        r5 = r13.next_in;
        r8 = r13.next_in_index;
        r9 = r8 + 1;
        r13.next_in_index = r9;
        r5 = r5[r8];
        r5 = r5 & 255;
        r5 = r5 << 8;
        r8 = (long) r5;
        r10 = 65280; // 0xff00 float:9.1477E-41 double:3.22526E-319;
        r8 = r8 & r10;
        r6 = r6 + r8;
        r4.need = r6;
        r4 = r13.istate;
        r5 = 11;
        r4.mode = r5;
    L_0x02ca:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x02ce:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.istate;
        r6 = r4.need;
        r5 = r13.next_in;
        r8 = r13.next_in_index;
        r9 = r8 + 1;
        r13.next_in_index = r9;
        r5 = r5[r8];
        r8 = (long) r5;
        r10 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        r8 = r8 & r10;
        r6 = r6 + r8;
        r4.need = r6;
        r4 = r13.istate;
        r4 = r4.was;
        r5 = 0;
        r4 = r4[r5];
        r4 = (int) r4;
        r5 = r13.istate;
        r6 = r5.need;
        r5 = (int) r6;
        if (r4 == r5) goto L_0x0323;
    L_0x0300:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "incorrect data check";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x0312:
        r4 = 0;
        r12.gzipCRC32 = r4;
        r4 = 0;
        r12.gzipISize = r4;
        r4 = 4;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = 24;
        r4.mode = r5;
        goto L_0x0011;
    L_0x0323:
        r4 = r13.istate;
        r5 = 12;
        r4.mode = r5;
    L_0x0329:
        r3 = 1;
        goto L_0x000b;
    L_0x032c:
        r3 = -3;
        goto L_0x000b;
    L_0x032f:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0333:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        r4 = r4 & 255;
        r5 = 31;
        if (r4 == r5) goto L_0x0363;
    L_0x0351:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "not a gzip stream";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x0363:
        r4 = r13.istate;
        r5 = 15;
        r4.mode = r5;
    L_0x0369:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x036d:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        r4 = r4 & 255;
        r5 = 139; // 0x8b float:1.95E-43 double:6.87E-322;
        if (r4 == r5) goto L_0x039d;
    L_0x038b:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "not a gzip stream";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x039d:
        r4 = r13.istate;
        r5 = 16;
        r4.mode = r5;
    L_0x03a3:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x03a7:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        r4 = r4 & 255;
        r5 = 8;
        if (r4 == r5) goto L_0x03d7;
    L_0x03c5:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "unknown compression method";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x03d7:
        r4 = r13.istate;
        r5 = 17;
        r4.mode = r5;
    L_0x03dd:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x03e1:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        r4 = r4 & 255;
        r12.gzipFlag = r4;
        r4 = r12.gzipFlag;
        r4 = r4 & 226;
        if (r4 == 0) goto L_0x0415;
    L_0x0403:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "unsupported flag";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x0415:
        r4 = 6;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = 18;
        r4.mode = r5;
    L_0x041e:
        r4 = r12.gzipBytesToRead;
        if (r4 <= 0) goto L_0x0441;
    L_0x0422:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0426:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in_index;
        r4 = r4 + 1;
        r13.next_in_index = r4;
        r4 = r12.gzipBytesToRead;
        r4 = r4 + -1;
        r12.gzipBytesToRead = r4;
        goto L_0x041e;
    L_0x0441:
        r4 = r13.istate;
        r5 = 19;
        r4.mode = r5;
        r4 = 0;
        r12.gzipXLen = r4;
        r4 = 2;
        r12.gzipBytesToRead = r4;
    L_0x044d:
        r4 = r12.gzipFlag;
        r4 = r4 & 4;
        if (r4 == 0) goto L_0x04b5;
    L_0x0453:
        r4 = r12.gzipBytesToRead;
        if (r4 <= 0) goto L_0x0488;
    L_0x0457:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x045b:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r12.gzipXLen;
        r5 = r13.next_in;
        r6 = r13.next_in_index;
        r7 = r6 + 1;
        r13.next_in_index = r7;
        r5 = r5[r6];
        r5 = r5 & 255;
        r6 = r12.gzipBytesToRead;
        r6 = 1 - r6;
        r6 = r6 * 8;
        r5 = r5 << r6;
        r4 = r4 | r5;
        r12.gzipXLen = r4;
        r4 = r12.gzipBytesToRead;
        r4 = r4 + -1;
        r12.gzipBytesToRead = r4;
        goto L_0x0453;
    L_0x0488:
        r4 = r12.gzipXLen;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = 20;
        r4.mode = r5;
    L_0x0492:
        r4 = r12.gzipBytesToRead;
        if (r4 <= 0) goto L_0x04bd;
    L_0x0496:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x049a:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in_index;
        r4 = r4 + 1;
        r13.next_in_index = r4;
        r4 = r12.gzipBytesToRead;
        r4 = r4 + -1;
        r12.gzipBytesToRead = r4;
        goto L_0x0492;
    L_0x04b5:
        r4 = r13.istate;
        r5 = 21;
        r4.mode = r5;
        goto L_0x0011;
    L_0x04bd:
        r4 = r13.istate;
        r5 = 21;
        r4.mode = r5;
    L_0x04c3:
        r4 = r12.gzipFlag;
        r4 = r4 & 8;
        if (r4 == 0) goto L_0x04e7;
    L_0x04c9:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x04cd:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        if (r4 != 0) goto L_0x04c9;
    L_0x04e7:
        r4 = r13.istate;
        r5 = 22;
        r4.mode = r5;
    L_0x04ed:
        r4 = r12.gzipFlag;
        r4 = r4 & 16;
        if (r4 == 0) goto L_0x0511;
    L_0x04f3:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x04f7:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in;
        r5 = r13.next_in_index;
        r6 = r5 + 1;
        r13.next_in_index = r6;
        r4 = r4[r5];
        if (r4 != 0) goto L_0x04f3;
    L_0x0511:
        r4 = 2;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = 23;
        r4.mode = r5;
    L_0x051a:
        r4 = r12.gzipFlag;
        r4 = r4 & 2;
        if (r4 == 0) goto L_0x0543;
    L_0x0520:
        r4 = r12.gzipBytesToRead;
        if (r4 <= 0) goto L_0x0543;
    L_0x0524:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x0528:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r13.next_in_index;
        r4 = r4 + 1;
        r13.next_in_index = r4;
        r4 = r12.gzipBytesToRead;
        r4 = r4 + -1;
        r12.gzipBytesToRead = r4;
        goto L_0x0520;
    L_0x0543:
        r4 = r13.istate;
        r5 = 7;
        r4.mode = r5;
        goto L_0x0011;
    L_0x054a:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r12.gzipBytesToRead;
        r4 = r4 + -1;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = r4.gzipCRC32;
        r6 = r13.next_in;
        r7 = r13.next_in_index;
        r8 = r7 + 1;
        r13.next_in_index = r8;
        r6 = r6[r7];
        r6 = r6 & 255;
        r7 = r12.gzipBytesToRead;
        r7 = 3 - r7;
        r7 = r7 * 8;
        r6 = r6 << r7;
        r5 = r5 | r6;
        r4.gzipCRC32 = r5;
    L_0x0578:
        r4 = r12.gzipBytesToRead;
        if (r4 <= 0) goto L_0x0582;
    L_0x057c:
        r4 = r13.avail_in;
        if (r4 != 0) goto L_0x054a;
    L_0x0580:
        goto L_0x000b;
    L_0x0582:
        r4 = r13.crc32;
        r5 = r13.istate;
        r5 = r5.gzipCRC32;
        if (r4 == r5) goto L_0x059c;
    L_0x058a:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "incorrect CRC32 checksum";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x059c:
        r4 = 4;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = 25;
        r4.mode = r5;
    L_0x05a5:
        r4 = r12.gzipBytesToRead;
        if (r4 <= 0) goto L_0x05dc;
    L_0x05a9:
        r4 = r13.avail_in;
        if (r4 == 0) goto L_0x000b;
    L_0x05ad:
        r3 = r14;
        r4 = r13.avail_in;
        r4 = r4 + -1;
        r13.avail_in = r4;
        r4 = r13.total_in;
        r6 = 1;
        r4 = r4 + r6;
        r13.total_in = r4;
        r4 = r12.gzipBytesToRead;
        r4 = r4 + -1;
        r12.gzipBytesToRead = r4;
        r4 = r13.istate;
        r5 = r4.gzipISize;
        r6 = r13.next_in;
        r7 = r13.next_in_index;
        r8 = r7 + 1;
        r13.next_in_index = r8;
        r6 = r6[r7];
        r6 = r6 & 255;
        r7 = r12.gzipBytesToRead;
        r7 = 3 - r7;
        r7 = r7 * 8;
        r6 = r6 << r7;
        r5 = r5 | r6;
        r4.gzipISize = r5;
        goto L_0x05a5;
    L_0x05dc:
        r4 = r12.gzipUncompressedBytes;
        r5 = r13.istate;
        r5 = r5.gzipISize;
        if (r4 == r5) goto L_0x05f6;
    L_0x05e4:
        r4 = r13.istate;
        r5 = 13;
        r4.mode = r5;
        r4 = "incorrect ISIZE checksum";
        r13.msg = r4;
        r4 = r13.istate;
        r5 = 5;
        r4.marker = r5;
        goto L_0x0011;
    L_0x05f6:
        r4 = r13.istate;
        r5 = 12;
        r4.mode = r5;
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.Inflate.inflate(org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }

    int inflateSetDictionary(ZStream z, byte[] dictionary, int dictLength) {
        int index = 0;
        int length = dictLength;
        if (z == null || z.istate == null || z.istate.mode != DICT0) {
            return -2;
        }
        if (Adler32.adler32(1, dictionary, 0, dictLength) != z.adler) {
            return -3;
        }
        z.adler = Adler32.adler32(0, null, 0, 0);
        if (length >= (FLAG << z.istate.wbits)) {
            length = (FLAG << z.istate.wbits) - 1;
            index = dictLength - length;
        }
        z.istate.blocks.set_dictionary(dictionary, index, length);
        z.istate.mode = BLOCKS;
        return 0;
    }

    int inflateSync(ZStream z) {
        if (z == null || z.istate == null) {
            return -2;
        }
        if (z.istate.mode != BAD) {
            z.istate.mode = BAD;
            z.istate.marker = 0;
        }
        int n = z.avail_in;
        if (n == 0) {
            return -5;
        }
        int p = z.next_in_index;
        int m = z.istate.marker;
        while (n != 0 && m < DICT2) {
            if (z.next_in[p] == mark[m]) {
                m += FLAG;
            } else if (z.next_in[p] != (byte) 0) {
                m = 0;
            } else {
                m = 4 - m;
            }
            p += FLAG;
            n--;
        }
        z.total_in += (long) (p - z.next_in_index);
        z.next_in_index = p;
        z.avail_in = n;
        z.istate.marker = m;
        if (m != DICT2) {
            return -3;
        }
        long r = z.total_in;
        long w = z.total_out;
        inflateReset(z);
        z.total_in = r;
        z.total_out = w;
        z.istate.mode = BLOCKS;
        return 0;
    }
}
