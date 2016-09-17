package org.jboss.netty.util.internal.jzlib;

final class InfBlocks {
    private static final int BAD = 9;
    private static final int BTREE = 4;
    private static final int CODES = 6;
    private static final int DONE = 8;
    private static final int DRY = 7;
    private static final int DTREE = 5;
    private static final int LENS = 1;
    private static final int STORED = 2;
    private static final int TABLE = 3;
    private static final int TYPE = 0;
    private static final int[] border = new int[]{16, 17, 18, 0, DONE, DRY, BAD, CODES, 10, DTREE, 11, BTREE, 12, TABLE, 13, STORED, 14, LENS, 15};
    private static final int[] inflate_mask = new int[]{0, LENS, TABLE, DRY, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    private final int[] bb = new int[LENS];
    int bitb;
    int bitk;
    private int[] blens;
    private long check;
    private final Object checkfn;
    private final InfCodes codes = new InfCodes();
    final int end;
    private int[] hufts = new int[4320];
    private int index;
    private final InfTree inftree = new InfTree();
    private int last;
    private int left;
    private int mode;
    int read;
    private int table;
    private final int[] tb = new int[LENS];
    byte[] window;
    int write;

    InfBlocks(ZStream z, Object checkfn, int w) {
        this.window = new byte[w];
        this.end = w;
        this.checkfn = checkfn;
        this.mode = 0;
        reset(z, null);
    }

    void reset(ZStream z, long[] c) {
        if (c != null) {
            c[0] = this.check;
        }
        this.mode = 0;
        this.bitk = 0;
        this.bitb = 0;
        this.write = 0;
        this.read = 0;
        if (this.checkfn != null) {
            long adler32 = Adler32.adler32(0, null, 0, 0);
            this.check = adler32;
            z.adler = adler32;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    int proc(org.jboss.netty.util.internal.jzlib.ZStream r32, int r33) {
        /*
        r31 = this;
        r0 = r32;
        r0 = r0.next_in_index;
        r27 = r0;
        r0 = r32;
        r0 = r0.avail_in;
        r26 = r0;
        r0 = r31;
        r0 = r0.bitb;
        r19 = r0;
        r0 = r31;
        r0 = r0.bitk;
        r24 = r0;
        r0 = r31;
        r0 = r0.write;
        r29 = r0;
        r0 = r31;
        r4 = r0.read;
        r0 = r29;
        if (r0 >= r4) goto L_0x006a;
    L_0x0026:
        r0 = r31;
        r4 = r0.read;
        r4 = r4 - r29;
        r25 = r4 + -1;
    L_0x002e:
        r0 = r31;
        r4 = r0.mode;
        switch(r4) {
            case 0: goto L_0x0951;
            case 1: goto L_0x094d;
            case 2: goto L_0x0235;
            case 3: goto L_0x0949;
            case 4: goto L_0x044b;
            case 5: goto L_0x0571;
            case 6: goto L_0x07f5;
            case 7: goto L_0x0885;
            case 8: goto L_0x08d9;
            case 9: goto L_0x090f;
            default: goto L_0x0035;
        };
    L_0x0035:
        r33 = -2;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
    L_0x0069:
        return r4;
    L_0x006a:
        r0 = r31;
        r4 = r0.end;
        r25 = r4 - r29;
        goto L_0x002e;
    L_0x0071:
        r4 = 3;
        r0 = r24;
        if (r0 >= r4) goto L_0x00c4;
    L_0x0076:
        if (r26 == 0) goto L_0x008f;
    L_0x0078:
        r33 = 0;
        r26 = r26 + -1;
        r0 = r32;
        r4 = r0.next_in;
        r27 = r28 + 1;
        r4 = r4[r28];
        r4 = r4 & 255;
        r4 = r4 << r24;
        r19 = r19 | r4;
        r24 = r24 + 8;
        r28 = r27;
        goto L_0x0071;
    L_0x008f:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x00c4:
        r30 = r19 & 7;
        r4 = r30 & 1;
        r0 = r31;
        r0.last = r4;
        r4 = r30 >>> 1;
        switch(r4) {
            case 0: goto L_0x00d5;
            case 1: goto L_0x00e5;
            case 2: goto L_0x0113;
            case 3: goto L_0x011d;
            default: goto L_0x00d1;
        };
    L_0x00d1:
        r27 = r28;
        goto L_0x002e;
    L_0x00d5:
        r19 = r19 >>> 3;
        r24 = r24 + -3;
        r30 = r24 & 7;
        r19 = r19 >>> r30;
        r24 = r24 - r30;
        r4 = 1;
        r0 = r31;
        r0.mode = r4;
        goto L_0x00d1;
    L_0x00e5:
        r4 = 1;
        r8 = new int[r4];
        r4 = 1;
        r9 = new int[r4];
        r4 = 1;
        r10 = new int[r4][];
        r4 = 1;
        r11 = new int[r4][];
        org.jboss.netty.util.internal.jzlib.InfTree.inflate_trees_fixed(r8, r9, r10, r11);
        r0 = r31;
        r4 = r0.codes;
        r5 = 0;
        r5 = r8[r5];
        r6 = 0;
        r6 = r9[r6];
        r7 = 0;
        r7 = r10[r7];
        r8 = 0;
        r12 = 0;
        r9 = r11[r12];
        r10 = 0;
        r4.init(r5, r6, r7, r8, r9, r10);
        r19 = r19 >>> 3;
        r24 = r24 + -3;
        r4 = 6;
        r0 = r31;
        r0.mode = r4;
        goto L_0x00d1;
    L_0x0113:
        r19 = r19 >>> 3;
        r24 = r24 + -3;
        r4 = 3;
        r0 = r31;
        r0.mode = r4;
        goto L_0x00d1;
    L_0x011d:
        r19 = r19 >>> 3;
        r24 = r24 + -3;
        r4 = 9;
        r0 = r31;
        r0.mode = r4;
        r4 = "invalid block type";
        r0 = r32;
        r0.msg = r4;
        r33 = -3;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x0166:
        r4 = 32;
        r0 = r24;
        if (r0 >= r4) goto L_0x01bb;
    L_0x016c:
        if (r26 == 0) goto L_0x0185;
    L_0x016e:
        r33 = 0;
        r26 = r26 + -1;
        r0 = r32;
        r4 = r0.next_in;
        r27 = r28 + 1;
        r4 = r4[r28];
        r4 = r4 & 255;
        r4 = r4 << r24;
        r19 = r19 | r4;
        r24 = r24 + 8;
        r28 = r27;
        goto L_0x0166;
    L_0x0185:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x01bb:
        r4 = r19 ^ -1;
        r4 = r4 >>> 16;
        r5 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r4 = r4 & r5;
        r5 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r5 = r5 & r19;
        if (r4 == r5) goto L_0x020f;
    L_0x01ca:
        r4 = 9;
        r0 = r31;
        r0.mode = r4;
        r4 = "invalid stored block lengths";
        r0 = r32;
        r0.msg = r4;
        r33 = -3;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x020f:
        r4 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r4 = r4 & r19;
        r0 = r31;
        r0.left = r4;
        r24 = 0;
        r19 = r24;
        r0 = r31;
        r4 = r0.left;
        if (r4 == 0) goto L_0x022b;
    L_0x0222:
        r4 = 2;
    L_0x0223:
        r0 = r31;
        r0.mode = r4;
        r27 = r28;
        goto L_0x002e;
    L_0x022b:
        r0 = r31;
        r4 = r0.last;
        if (r4 == 0) goto L_0x0233;
    L_0x0231:
        r4 = 7;
        goto L_0x0223;
    L_0x0233:
        r4 = 0;
        goto L_0x0223;
    L_0x0235:
        if (r26 != 0) goto L_0x026b;
    L_0x0237:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x026b:
        if (r25 != 0) goto L_0x031a;
    L_0x026d:
        r0 = r31;
        r4 = r0.end;
        r0 = r29;
        if (r0 != r4) goto L_0x028d;
    L_0x0275:
        r0 = r31;
        r4 = r0.read;
        if (r4 == 0) goto L_0x028d;
    L_0x027b:
        r29 = 0;
        r0 = r31;
        r4 = r0.read;
        r0 = r29;
        if (r0 >= r4) goto L_0x0305;
    L_0x0285:
        r0 = r31;
        r4 = r0.read;
        r4 = r4 - r29;
        r25 = r4 + -1;
    L_0x028d:
        if (r25 != 0) goto L_0x031a;
    L_0x028f:
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r33 = r31.inflate_flush(r32, r33);
        r0 = r31;
        r0 = r0.write;
        r29 = r0;
        r0 = r31;
        r4 = r0.read;
        r0 = r29;
        if (r0 >= r4) goto L_0x030c;
    L_0x02a7:
        r0 = r31;
        r4 = r0.read;
        r4 = r4 - r29;
        r25 = r4 + -1;
    L_0x02af:
        r0 = r31;
        r4 = r0.end;
        r0 = r29;
        if (r0 != r4) goto L_0x02cf;
    L_0x02b7:
        r0 = r31;
        r4 = r0.read;
        if (r4 == 0) goto L_0x02cf;
    L_0x02bd:
        r29 = 0;
        r0 = r31;
        r4 = r0.read;
        r0 = r29;
        if (r0 >= r4) goto L_0x0313;
    L_0x02c7:
        r0 = r31;
        r4 = r0.read;
        r4 = r4 - r29;
        r25 = r4 + -1;
    L_0x02cf:
        if (r25 != 0) goto L_0x031a;
    L_0x02d1:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x0305:
        r0 = r31;
        r4 = r0.end;
        r25 = r4 - r29;
        goto L_0x028d;
    L_0x030c:
        r0 = r31;
        r4 = r0.end;
        r25 = r4 - r29;
        goto L_0x02af;
    L_0x0313:
        r0 = r31;
        r4 = r0.end;
        r25 = r4 - r29;
        goto L_0x02cf;
    L_0x031a:
        r33 = 0;
        r0 = r31;
        r0 = r0.left;
        r30 = r0;
        r0 = r30;
        r1 = r26;
        if (r0 <= r1) goto L_0x032a;
    L_0x0328:
        r30 = r26;
    L_0x032a:
        r0 = r30;
        r1 = r25;
        if (r0 <= r1) goto L_0x0332;
    L_0x0330:
        r30 = r25;
    L_0x0332:
        r0 = r32;
        r4 = r0.next_in;
        r0 = r31;
        r5 = r0.window;
        r0 = r27;
        r1 = r29;
        r2 = r30;
        java.lang.System.arraycopy(r4, r0, r5, r1, r2);
        r27 = r27 + r30;
        r26 = r26 - r30;
        r29 = r29 + r30;
        r25 = r25 - r30;
        r0 = r31;
        r4 = r0.left;
        r4 = r4 - r30;
        r0 = r31;
        r0.left = r4;
        if (r4 != 0) goto L_0x002e;
    L_0x0357:
        r0 = r31;
        r4 = r0.last;
        if (r4 == 0) goto L_0x0364;
    L_0x035d:
        r4 = 7;
    L_0x035e:
        r0 = r31;
        r0.mode = r4;
        goto L_0x002e;
    L_0x0364:
        r4 = 0;
        goto L_0x035e;
    L_0x0366:
        r4 = 14;
        r0 = r24;
        if (r0 >= r4) goto L_0x03bb;
    L_0x036c:
        if (r26 == 0) goto L_0x0385;
    L_0x036e:
        r33 = 0;
        r26 = r26 + -1;
        r0 = r32;
        r4 = r0.next_in;
        r27 = r28 + 1;
        r4 = r4[r28];
        r4 = r4 & 255;
        r4 = r4 << r24;
        r19 = r19 | r4;
        r24 = r24 + 8;
        r28 = r27;
        goto L_0x0366;
    L_0x0385:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x03bb:
        r0 = r19;
        r0 = r0 & 16383;
        r30 = r0;
        r0 = r30;
        r1 = r31;
        r1.table = r0;
        r4 = r30 & 31;
        r5 = 29;
        if (r4 > r5) goto L_0x03d5;
    L_0x03cd:
        r4 = r30 >> 5;
        r4 = r4 & 31;
        r5 = 29;
        if (r4 <= r5) goto L_0x041a;
    L_0x03d5:
        r4 = 9;
        r0 = r31;
        r0.mode = r4;
        r4 = "too many length or distance symbols";
        r0 = r32;
        r0.msg = r4;
        r33 = -3;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x041a:
        r4 = r30 & 31;
        r4 = r4 + 258;
        r5 = r30 >> 5;
        r5 = r5 & 31;
        r30 = r4 + r5;
        r0 = r31;
        r4 = r0.blens;
        if (r4 == 0) goto L_0x0433;
    L_0x042a:
        r0 = r31;
        r4 = r0.blens;
        r4 = r4.length;
        r0 = r30;
        if (r4 >= r0) goto L_0x0479;
    L_0x0433:
        r0 = r30;
        r4 = new int[r0];
        r0 = r31;
        r0.blens = r4;
    L_0x043b:
        r19 = r19 >>> 14;
        r24 = r24 + -14;
        r4 = 0;
        r0 = r31;
        r0.index = r4;
        r4 = 4;
        r0 = r31;
        r0.mode = r4;
        r27 = r28;
    L_0x044b:
        r0 = r31;
        r4 = r0.index;
        r0 = r31;
        r5 = r0.table;
        r5 = r5 >>> 10;
        r5 = r5 + 4;
        if (r4 >= r5) goto L_0x04df;
    L_0x0459:
        r28 = r27;
    L_0x045b:
        r4 = 3;
        r0 = r24;
        if (r0 >= r4) goto L_0x04c1;
    L_0x0460:
        if (r26 == 0) goto L_0x048b;
    L_0x0462:
        r33 = 0;
        r26 = r26 + -1;
        r0 = r32;
        r4 = r0.next_in;
        r27 = r28 + 1;
        r4 = r4[r28];
        r4 = r4 & 255;
        r4 = r4 << r24;
        r19 = r19 | r4;
        r24 = r24 + 8;
        r28 = r27;
        goto L_0x045b;
    L_0x0479:
        r21 = 0;
    L_0x047b:
        r0 = r21;
        r1 = r30;
        if (r0 >= r1) goto L_0x043b;
    L_0x0481:
        r0 = r31;
        r4 = r0.blens;
        r5 = 0;
        r4[r21] = r5;
        r21 = r21 + 1;
        goto L_0x047b;
    L_0x048b:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x04c1:
        r0 = r31;
        r4 = r0.blens;
        r5 = border;
        r0 = r31;
        r6 = r0.index;
        r7 = r6 + 1;
        r0 = r31;
        r0.index = r7;
        r5 = r5[r6];
        r6 = r19 & 7;
        r4[r5] = r6;
        r19 = r19 >>> 3;
        r24 = r24 + -3;
        r27 = r28;
        goto L_0x044b;
    L_0x04df:
        r0 = r31;
        r4 = r0.index;
        r5 = 19;
        if (r4 >= r5) goto L_0x04fd;
    L_0x04e7:
        r0 = r31;
        r4 = r0.blens;
        r5 = border;
        r0 = r31;
        r6 = r0.index;
        r7 = r6 + 1;
        r0 = r31;
        r0.index = r7;
        r5 = r5[r6];
        r6 = 0;
        r4[r5] = r6;
        goto L_0x04df;
    L_0x04fd:
        r0 = r31;
        r4 = r0.bb;
        r5 = 0;
        r6 = 7;
        r4[r5] = r6;
        r0 = r31;
        r4 = r0.inftree;
        r0 = r31;
        r5 = r0.blens;
        r0 = r31;
        r6 = r0.bb;
        r0 = r31;
        r7 = r0.tb;
        r0 = r31;
        r8 = r0.hufts;
        r9 = r32;
        r30 = r4.inflate_trees_bits(r5, r6, r7, r8, r9);
        if (r30 == 0) goto L_0x0567;
    L_0x0521:
        r33 = r30;
        r4 = -3;
        r0 = r33;
        if (r0 != r4) goto L_0x0533;
    L_0x0528:
        r4 = 0;
        r0 = r31;
        r0.blens = r4;
        r4 = 9;
        r0 = r31;
        r0.mode = r4;
    L_0x0533:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x0567:
        r4 = 0;
        r0 = r31;
        r0.index = r4;
        r4 = 5;
        r0 = r31;
        r0.mode = r4;
    L_0x0571:
        r0 = r31;
        r0 = r0.table;
        r30 = r0;
        r0 = r31;
        r4 = r0.index;
        r5 = r30 & 31;
        r5 = r5 + 258;
        r6 = r30 >> 5;
        r6 = r6 & 31;
        r5 = r5 + r6;
        if (r4 < r5) goto L_0x060d;
    L_0x0586:
        r0 = r31;
        r4 = r0.tb;
        r5 = 0;
        r6 = -1;
        r4[r5] = r6;
        r4 = 1;
        r8 = new int[r4];
        r4 = 1;
        r9 = new int[r4];
        r4 = 1;
        r10 = new int[r4];
        r4 = 1;
        r11 = new int[r4];
        r4 = 0;
        r5 = 9;
        r8[r4] = r5;
        r4 = 0;
        r5 = 6;
        r9[r4] = r5;
        r0 = r31;
        r0 = r0.table;
        r30 = r0;
        r0 = r31;
        r4 = r0.inftree;
        r5 = r30 & 31;
        r5 = r5 + 257;
        r6 = r30 >> 5;
        r6 = r6 & 31;
        r6 = r6 + 1;
        r0 = r31;
        r7 = r0.blens;
        r0 = r31;
        r12 = r0.hufts;
        r13 = r32;
        r30 = r4.inflate_trees_dynamic(r5, r6, r7, r8, r9, r10, r11, r12, r13);
        if (r30 == 0) goto L_0x07d3;
    L_0x05c7:
        r4 = -3;
        r0 = r30;
        if (r0 != r4) goto L_0x05d7;
    L_0x05cc:
        r4 = 0;
        r0 = r31;
        r0.blens = r4;
        r4 = 9;
        r0 = r31;
        r0.mode = r4;
    L_0x05d7:
        r33 = r30;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x060d:
        r0 = r31;
        r4 = r0.bb;
        r5 = 0;
        r30 = r4[r5];
        r28 = r27;
    L_0x0616:
        r0 = r24;
        r1 = r30;
        if (r0 >= r1) goto L_0x066b;
    L_0x061c:
        if (r26 == 0) goto L_0x0635;
    L_0x061e:
        r33 = 0;
        r26 = r26 + -1;
        r0 = r32;
        r4 = r0.next_in;
        r27 = r28 + 1;
        r4 = r4[r28];
        r4 = r4 & 255;
        r4 = r4 << r24;
        r19 = r19 | r4;
        r24 = r24 + 8;
        r28 = r27;
        goto L_0x0616;
    L_0x0635:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x066b:
        r0 = r31;
        r4 = r0.tb;
        r5 = 0;
        r4 = r4[r5];
        r5 = -1;
        if (r4 != r5) goto L_0x0675;
    L_0x0675:
        r0 = r31;
        r4 = r0.hufts;
        r0 = r31;
        r5 = r0.tb;
        r6 = 0;
        r5 = r5[r6];
        r6 = inflate_mask;
        r6 = r6[r30];
        r6 = r6 & r19;
        r5 = r5 + r6;
        r5 = r5 * 3;
        r5 = r5 + 1;
        r30 = r4[r5];
        r0 = r31;
        r4 = r0.hufts;
        r0 = r31;
        r5 = r0.tb;
        r6 = 0;
        r5 = r5[r6];
        r6 = inflate_mask;
        r6 = r6[r30];
        r6 = r6 & r19;
        r5 = r5 + r6;
        r5 = r5 * 3;
        r5 = r5 + 2;
        r20 = r4[r5];
        r4 = 16;
        r0 = r20;
        if (r0 >= r4) goto L_0x06c3;
    L_0x06ab:
        r19 = r19 >>> r30;
        r24 = r24 - r30;
        r0 = r31;
        r4 = r0.blens;
        r0 = r31;
        r5 = r0.index;
        r6 = r5 + 1;
        r0 = r31;
        r0.index = r6;
        r4[r5] = r20;
        r27 = r28;
        goto L_0x0571;
    L_0x06c3:
        r4 = 18;
        r0 = r20;
        if (r0 != r4) goto L_0x06f2;
    L_0x06c9:
        r21 = 7;
    L_0x06cb:
        r4 = 18;
        r0 = r20;
        if (r0 != r4) goto L_0x06f5;
    L_0x06d1:
        r23 = 11;
    L_0x06d3:
        r4 = r30 + r21;
        r0 = r24;
        if (r0 >= r4) goto L_0x072e;
    L_0x06d9:
        if (r26 == 0) goto L_0x06f8;
    L_0x06db:
        r33 = 0;
        r26 = r26 + -1;
        r0 = r32;
        r4 = r0.next_in;
        r27 = r28 + 1;
        r4 = r4[r28];
        r4 = r4 & 255;
        r4 = r4 << r24;
        r19 = r19 | r4;
        r24 = r24 + 8;
        r28 = r27;
        goto L_0x06d3;
    L_0x06f2:
        r21 = r20 + -14;
        goto L_0x06cb;
    L_0x06f5:
        r23 = 3;
        goto L_0x06d3;
    L_0x06f8:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x072e:
        r19 = r19 >>> r30;
        r24 = r24 - r30;
        r4 = inflate_mask;
        r4 = r4[r21];
        r4 = r4 & r19;
        r23 = r23 + r4;
        r19 = r19 >>> r21;
        r24 = r24 - r21;
        r0 = r31;
        r0 = r0.index;
        r21 = r0;
        r0 = r31;
        r0 = r0.table;
        r30 = r0;
        r4 = r21 + r23;
        r5 = r30 & 31;
        r5 = r5 + 258;
        r6 = r30 >> 5;
        r6 = r6 & 31;
        r5 = r5 + r6;
        if (r4 > r5) goto L_0x0762;
    L_0x0757:
        r4 = 16;
        r0 = r20;
        if (r0 != r4) goto L_0x07ac;
    L_0x075d:
        r4 = 1;
        r0 = r21;
        if (r0 >= r4) goto L_0x07ac;
    L_0x0762:
        r4 = 0;
        r0 = r31;
        r0.blens = r4;
        r4 = 9;
        r0 = r31;
        r0.mode = r4;
        r4 = "invalid bit length repeat";
        r0 = r32;
        r0.msg = r4;
        r33 = -3;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r28 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r28;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        r27 = r28;
        goto L_0x0069;
    L_0x07ac:
        r4 = 16;
        r0 = r20;
        if (r0 != r4) goto L_0x07d0;
    L_0x07b2:
        r0 = r31;
        r4 = r0.blens;
        r5 = r21 + -1;
        r20 = r4[r5];
    L_0x07ba:
        r0 = r31;
        r4 = r0.blens;
        r22 = r21 + 1;
        r4[r21] = r20;
        r23 = r23 + -1;
        if (r23 != 0) goto L_0x0945;
    L_0x07c6:
        r0 = r22;
        r1 = r31;
        r1.index = r0;
        r27 = r28;
        goto L_0x0571;
    L_0x07d0:
        r20 = 0;
        goto L_0x07ba;
    L_0x07d3:
        r0 = r31;
        r12 = r0.codes;
        r4 = 0;
        r13 = r8[r4];
        r4 = 0;
        r14 = r9[r4];
        r0 = r31;
        r15 = r0.hufts;
        r4 = 0;
        r16 = r10[r4];
        r0 = r31;
        r0 = r0.hufts;
        r17 = r0;
        r4 = 0;
        r18 = r11[r4];
        r12.init(r13, r14, r15, r16, r17, r18);
        r4 = 6;
        r0 = r31;
        r0.mode = r4;
    L_0x07f5:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r0 = r31;
        r4 = r0.codes;
        r0 = r31;
        r1 = r32;
        r2 = r33;
        r33 = r4.proc(r0, r1, r2);
        r4 = 1;
        r0 = r33;
        if (r0 == r4) goto L_0x083c;
    L_0x0836:
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x083c:
        r33 = 0;
        r0 = r32;
        r0 = r0.next_in_index;
        r27 = r0;
        r0 = r32;
        r0 = r0.avail_in;
        r26 = r0;
        r0 = r31;
        r0 = r0.bitb;
        r19 = r0;
        r0 = r31;
        r0 = r0.bitk;
        r24 = r0;
        r0 = r31;
        r0 = r0.write;
        r29 = r0;
        r0 = r31;
        r4 = r0.read;
        r0 = r29;
        if (r0 >= r4) goto L_0x0879;
    L_0x0864:
        r0 = r31;
        r4 = r0.read;
        r4 = r4 - r29;
        r25 = r4 + -1;
    L_0x086c:
        r0 = r31;
        r4 = r0.last;
        if (r4 != 0) goto L_0x0880;
    L_0x0872:
        r4 = 0;
        r0 = r31;
        r0.mode = r4;
        goto L_0x002e;
    L_0x0879:
        r0 = r31;
        r4 = r0.end;
        r25 = r4 - r29;
        goto L_0x086c;
    L_0x0880:
        r4 = 7;
        r0 = r31;
        r0.mode = r4;
    L_0x0885:
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r33 = r31.inflate_flush(r32, r33);
        r0 = r31;
        r0 = r0.write;
        r29 = r0;
        r0 = r31;
        r4 = r0.read;
        r0 = r31;
        r5 = r0.write;
        if (r4 == r5) goto L_0x08d3;
    L_0x089f:
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x08d3:
        r4 = 8;
        r0 = r31;
        r0.mode = r4;
    L_0x08d9:
        r33 = 1;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x090f:
        r33 = -3;
        r0 = r19;
        r1 = r31;
        r1.bitb = r0;
        r0 = r24;
        r1 = r31;
        r1.bitk = r0;
        r0 = r26;
        r1 = r32;
        r1.avail_in = r0;
        r0 = r32;
        r4 = r0.total_in;
        r0 = r32;
        r6 = r0.next_in_index;
        r6 = r27 - r6;
        r6 = (long) r6;
        r4 = r4 + r6;
        r0 = r32;
        r0.total_in = r4;
        r0 = r27;
        r1 = r32;
        r1.next_in_index = r0;
        r0 = r29;
        r1 = r31;
        r1.write = r0;
        r4 = r31.inflate_flush(r32, r33);
        goto L_0x0069;
    L_0x0945:
        r21 = r22;
        goto L_0x07ba;
    L_0x0949:
        r28 = r27;
        goto L_0x0366;
    L_0x094d:
        r28 = r27;
        goto L_0x0166;
    L_0x0951:
        r28 = r27;
        goto L_0x0071;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.InfBlocks.proc(org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }

    void free(ZStream z) {
        reset(z, null);
        this.window = null;
        this.hufts = null;
    }

    void set_dictionary(byte[] d, int start, int n) {
        System.arraycopy(d, start, this.window, 0, n);
        this.write = n;
        this.read = n;
    }

    int sync_point() {
        return this.mode == LENS ? LENS : 0;
    }

    int inflate_flush(ZStream z, int r) {
        int p = z.next_out_index;
        int q = this.read;
        int n = (q <= this.write ? this.write : this.end) - q;
        if (n > z.avail_out) {
            n = z.avail_out;
        }
        if (n != 0 && r == -5) {
            r = 0;
        }
        z.avail_out -= n;
        z.total_out += (long) n;
        if (this.checkfn != null) {
            long adler32 = Adler32.adler32(this.check, this.window, q, n);
            this.check = adler32;
            z.adler = adler32;
        }
        System.arraycopy(this.window, q, z.next_out, p, n);
        p += n;
        q += n;
        if (q == this.end) {
            if (this.write == this.end) {
                this.write = 0;
            }
            n = this.write - 0;
            if (n > z.avail_out) {
                n = z.avail_out;
            }
            if (n != 0 && r == -5) {
                r = 0;
            }
            z.avail_out -= n;
            z.total_out += (long) n;
            if (this.checkfn != null) {
                adler32 = Adler32.adler32(this.check, this.window, 0, n);
                this.check = adler32;
                z.adler = adler32;
            }
            System.arraycopy(this.window, 0, z.next_out, p, n);
            p += n;
            q = 0 + n;
        }
        z.next_out_index = p;
        this.read = q;
        return r;
    }
}
