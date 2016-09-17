package org.jboss.netty.util.internal.jzlib;

final class InfCodes {
    private static final int BADCODE = 9;
    private static final int COPY = 5;
    private static final int DIST = 3;
    private static final int DISTEXT = 4;
    private static final int END = 8;
    private static final int LEN = 1;
    private static final int LENEXT = 2;
    private static final int LIT = 6;
    private static final int START = 0;
    private static final int WASH = 7;
    private static final int[] inflate_mask = new int[]{START, LEN, DIST, WASH, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    private byte dbits;
    private int dist;
    private int[] dtree;
    private int dtree_index;
    private int get;
    private byte lbits;
    private int len;
    private int lit;
    private int[] ltree;
    private int ltree_index;
    private int mode;
    private int need;
    private int[] tree;
    private int tree_index = START;

    InfCodes() {
    }

    void init(int bl, int bd, int[] tl, int tl_index, int[] td, int td_index) {
        this.mode = START;
        this.lbits = (byte) bl;
        this.dbits = (byte) bd;
        this.ltree = tl;
        this.ltree_index = tl_index;
        this.dtree = td;
        this.dtree_index = td_index;
        this.tree = null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    int proc(org.jboss.netty.util.internal.jzlib.InfBlocks r25, org.jboss.netty.util.internal.jzlib.ZStream r26, int r27) {
        /*
        r24 = this;
        r11 = 0;
        r16 = 0;
        r19 = 0;
        r0 = r26;
        r0 = r0.next_in_index;
        r19 = r0;
        r0 = r26;
        r0 = r0.avail_in;
        r18 = r0;
        r0 = r25;
        r11 = r0.bitb;
        r0 = r25;
        r0 = r0.bitk;
        r16 = r0;
        r0 = r25;
        r0 = r0.write;
        r21 = r0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x006b;
    L_0x0029:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x0031:
        r0 = r24;
        r2 = r0.mode;
        switch(r2) {
            case 0: goto L_0x0072;
            case 1: goto L_0x012d;
            case 2: goto L_0x0249;
            case 3: goto L_0x02cf;
            case 4: goto L_0x03c7;
            case 5: goto L_0x0435;
            case 6: goto L_0x0522;
            case 7: goto L_0x05e9;
            case 8: goto L_0x0646;
            case 9: goto L_0x067a;
            default: goto L_0x0038;
        };
    L_0x0038:
        r27 = -2;
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
    L_0x006a:
        return r2;
    L_0x006b:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x0031;
    L_0x0072:
        r2 = 258; // 0x102 float:3.62E-43 double:1.275E-321;
        r0 = r17;
        if (r0 < r2) goto L_0x0110;
    L_0x0078:
        r2 = 10;
        r0 = r18;
        if (r0 < r2) goto L_0x0110;
    L_0x007e:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r0 = r24;
        r3 = r0.lbits;
        r0 = r24;
        r4 = r0.dbits;
        r0 = r24;
        r5 = r0.ltree;
        r0 = r24;
        r6 = r0.ltree_index;
        r0 = r24;
        r7 = r0.dtree;
        r0 = r24;
        r8 = r0.dtree_index;
        r2 = r24;
        r9 = r25;
        r10 = r26;
        r27 = r2.inflate_fast(r3, r4, r5, r6, r7, r8, r9, r10);
        r0 = r26;
        r0 = r0.next_in_index;
        r19 = r0;
        r0 = r26;
        r0 = r0.avail_in;
        r18 = r0;
        r0 = r25;
        r11 = r0.bitb;
        r0 = r25;
        r0 = r0.bitk;
        r16 = r0;
        r0 = r25;
        r0 = r0.write;
        r21 = r0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x0106;
    L_0x00f0:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x00f8:
        if (r27 == 0) goto L_0x0110;
    L_0x00fa:
        r2 = 1;
        r0 = r27;
        if (r0 != r2) goto L_0x010d;
    L_0x00ff:
        r2 = 7;
    L_0x0100:
        r0 = r24;
        r0.mode = r2;
        goto L_0x0031;
    L_0x0106:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x00f8;
    L_0x010d:
        r2 = 9;
        goto L_0x0100;
    L_0x0110:
        r0 = r24;
        r2 = r0.lbits;
        r0 = r24;
        r0.need = r2;
        r0 = r24;
        r2 = r0.ltree;
        r0 = r24;
        r0.tree = r2;
        r0 = r24;
        r2 = r0.ltree_index;
        r0 = r24;
        r0.tree_index = r2;
        r2 = 1;
        r0 = r24;
        r0.mode = r2;
    L_0x012d:
        r0 = r24;
        r15 = r0.need;
        r20 = r19;
    L_0x0133:
        r0 = r16;
        if (r0 >= r15) goto L_0x0183;
    L_0x0137:
        if (r18 == 0) goto L_0x014f;
    L_0x0139:
        r27 = 0;
        r18 = r18 + -1;
        r0 = r26;
        r2 = r0.next_in;
        r19 = r20 + 1;
        r2 = r2[r20];
        r2 = r2 & 255;
        r2 = r2 << r16;
        r11 = r11 | r2;
        r16 = r16 + 8;
        r20 = r19;
        goto L_0x0133;
    L_0x014f:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r20 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r20;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        r19 = r20;
        goto L_0x006a;
    L_0x0183:
        r0 = r24;
        r2 = r0.tree_index;
        r3 = inflate_mask;
        r3 = r3[r15];
        r3 = r3 & r11;
        r2 = r2 + r3;
        r23 = r2 * 3;
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 1;
        r2 = r2[r3];
        r11 = r11 >>> r2;
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 1;
        r2 = r2[r3];
        r16 = r16 - r2;
        r0 = r24;
        r2 = r0.tree;
        r12 = r2[r23];
        if (r12 != 0) goto L_0x01bf;
    L_0x01aa:
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 2;
        r2 = r2[r3];
        r0 = r24;
        r0.lit = r2;
        r2 = 6;
        r0 = r24;
        r0.mode = r2;
        r19 = r20;
        goto L_0x0031;
    L_0x01bf:
        r2 = r12 & 16;
        if (r2 == 0) goto L_0x01de;
    L_0x01c3:
        r2 = r12 & 15;
        r0 = r24;
        r0.get = r2;
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 2;
        r2 = r2[r3];
        r0 = r24;
        r0.len = r2;
        r2 = 2;
        r0 = r24;
        r0.mode = r2;
        r19 = r20;
        goto L_0x0031;
    L_0x01de:
        r2 = r12 & 64;
        if (r2 != 0) goto L_0x01f9;
    L_0x01e2:
        r0 = r24;
        r0.need = r12;
        r2 = r23 / 3;
        r0 = r24;
        r3 = r0.tree;
        r4 = r23 + 2;
        r3 = r3[r4];
        r2 = r2 + r3;
        r0 = r24;
        r0.tree_index = r2;
        r19 = r20;
        goto L_0x0031;
    L_0x01f9:
        r2 = r12 & 32;
        if (r2 == 0) goto L_0x0206;
    L_0x01fd:
        r2 = 7;
        r0 = r24;
        r0.mode = r2;
        r19 = r20;
        goto L_0x0031;
    L_0x0206:
        r2 = 9;
        r0 = r24;
        r0.mode = r2;
        r2 = "invalid literal/length code";
        r0 = r26;
        r0.msg = r2;
        r27 = -3;
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r20 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r20;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        r19 = r20;
        goto L_0x006a;
    L_0x0249:
        r0 = r24;
        r15 = r0.get;
        r20 = r19;
    L_0x024f:
        r0 = r16;
        if (r0 >= r15) goto L_0x029f;
    L_0x0253:
        if (r18 == 0) goto L_0x026b;
    L_0x0255:
        r27 = 0;
        r18 = r18 + -1;
        r0 = r26;
        r2 = r0.next_in;
        r19 = r20 + 1;
        r2 = r2[r20];
        r2 = r2 & 255;
        r2 = r2 << r16;
        r11 = r11 | r2;
        r16 = r16 + 8;
        r20 = r19;
        goto L_0x024f;
    L_0x026b:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r20 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r20;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        r19 = r20;
        goto L_0x006a;
    L_0x029f:
        r0 = r24;
        r2 = r0.len;
        r3 = inflate_mask;
        r3 = r3[r15];
        r3 = r3 & r11;
        r2 = r2 + r3;
        r0 = r24;
        r0.len = r2;
        r11 = r11 >> r15;
        r16 = r16 - r15;
        r0 = r24;
        r2 = r0.dbits;
        r0 = r24;
        r0.need = r2;
        r0 = r24;
        r2 = r0.dtree;
        r0 = r24;
        r0.tree = r2;
        r0 = r24;
        r2 = r0.dtree_index;
        r0 = r24;
        r0.tree_index = r2;
        r2 = 3;
        r0 = r24;
        r0.mode = r2;
        r19 = r20;
    L_0x02cf:
        r0 = r24;
        r15 = r0.need;
        r20 = r19;
    L_0x02d5:
        r0 = r16;
        if (r0 >= r15) goto L_0x0325;
    L_0x02d9:
        if (r18 == 0) goto L_0x02f1;
    L_0x02db:
        r27 = 0;
        r18 = r18 + -1;
        r0 = r26;
        r2 = r0.next_in;
        r19 = r20 + 1;
        r2 = r2[r20];
        r2 = r2 & 255;
        r2 = r2 << r16;
        r11 = r11 | r2;
        r16 = r16 + 8;
        r20 = r19;
        goto L_0x02d5;
    L_0x02f1:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r20 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r20;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        r19 = r20;
        goto L_0x006a;
    L_0x0325:
        r0 = r24;
        r2 = r0.tree_index;
        r3 = inflate_mask;
        r3 = r3[r15];
        r3 = r3 & r11;
        r2 = r2 + r3;
        r23 = r2 * 3;
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 1;
        r2 = r2[r3];
        r11 = r11 >> r2;
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 1;
        r2 = r2[r3];
        r16 = r16 - r2;
        r0 = r24;
        r2 = r0.tree;
        r12 = r2[r23];
        r2 = r12 & 16;
        if (r2 == 0) goto L_0x0369;
    L_0x034e:
        r2 = r12 & 15;
        r0 = r24;
        r0.get = r2;
        r0 = r24;
        r2 = r0.tree;
        r3 = r23 + 2;
        r2 = r2[r3];
        r0 = r24;
        r0.dist = r2;
        r2 = 4;
        r0 = r24;
        r0.mode = r2;
        r19 = r20;
        goto L_0x0031;
    L_0x0369:
        r2 = r12 & 64;
        if (r2 != 0) goto L_0x0384;
    L_0x036d:
        r0 = r24;
        r0.need = r12;
        r2 = r23 / 3;
        r0 = r24;
        r3 = r0.tree;
        r4 = r23 + 2;
        r3 = r3[r4];
        r2 = r2 + r3;
        r0 = r24;
        r0.tree_index = r2;
        r19 = r20;
        goto L_0x0031;
    L_0x0384:
        r2 = 9;
        r0 = r24;
        r0.mode = r2;
        r2 = "invalid distance code";
        r0 = r26;
        r0.msg = r2;
        r27 = -3;
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r20 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r20;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        r19 = r20;
        goto L_0x006a;
    L_0x03c7:
        r0 = r24;
        r15 = r0.get;
        r20 = r19;
    L_0x03cd:
        r0 = r16;
        if (r0 >= r15) goto L_0x041d;
    L_0x03d1:
        if (r18 == 0) goto L_0x03e9;
    L_0x03d3:
        r27 = 0;
        r18 = r18 + -1;
        r0 = r26;
        r2 = r0.next_in;
        r19 = r20 + 1;
        r2 = r2[r20];
        r2 = r2 & 255;
        r2 = r2 << r16;
        r11 = r11 | r2;
        r16 = r16 + 8;
        r20 = r19;
        goto L_0x03cd;
    L_0x03e9:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r20 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r20;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        r19 = r20;
        goto L_0x006a;
    L_0x041d:
        r0 = r24;
        r2 = r0.dist;
        r3 = inflate_mask;
        r3 = r3[r15];
        r3 = r3 & r11;
        r2 = r2 + r3;
        r0 = r24;
        r0.dist = r2;
        r11 = r11 >> r15;
        r16 = r16 - r15;
        r2 = 5;
        r0 = r24;
        r0.mode = r2;
        r19 = r20;
    L_0x0435:
        r0 = r24;
        r2 = r0.dist;
        r13 = r21 - r2;
    L_0x043b:
        if (r13 >= 0) goto L_0x0468;
    L_0x043d:
        r0 = r25;
        r2 = r0.end;
        r13 = r13 + r2;
        goto L_0x043b;
    L_0x0443:
        r0 = r25;
        r2 = r0.window;
        r22 = r21 + 1;
        r0 = r25;
        r3 = r0.window;
        r14 = r13 + 1;
        r3 = r3[r13];
        r2[r21] = r3;
        r17 = r17 + -1;
        r0 = r25;
        r2 = r0.end;
        if (r14 != r2) goto L_0x06ae;
    L_0x045b:
        r13 = 0;
    L_0x045c:
        r0 = r24;
        r2 = r0.len;
        r2 = r2 + -1;
        r0 = r24;
        r0.len = r2;
        r21 = r22;
    L_0x0468:
        r0 = r24;
        r2 = r0.len;
        if (r2 == 0) goto L_0x051b;
    L_0x046e:
        if (r17 != 0) goto L_0x0443;
    L_0x0470:
        r0 = r25;
        r2 = r0.end;
        r0 = r21;
        if (r0 != r2) goto L_0x0490;
    L_0x0478:
        r0 = r25;
        r2 = r0.read;
        if (r2 == 0) goto L_0x0490;
    L_0x047e:
        r21 = 0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x0506;
    L_0x0488:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x0490:
        if (r17 != 0) goto L_0x0443;
    L_0x0492:
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r27 = r25.inflate_flush(r26, r27);
        r0 = r25;
        r0 = r0.write;
        r21 = r0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x050d;
    L_0x04aa:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x04b2:
        r0 = r25;
        r2 = r0.end;
        r0 = r21;
        if (r0 != r2) goto L_0x04d2;
    L_0x04ba:
        r0 = r25;
        r2 = r0.read;
        if (r2 == 0) goto L_0x04d2;
    L_0x04c0:
        r21 = 0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x0514;
    L_0x04ca:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x04d2:
        if (r17 != 0) goto L_0x0443;
    L_0x04d4:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        goto L_0x006a;
    L_0x0506:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x0490;
    L_0x050d:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x04b2;
    L_0x0514:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x04d2;
    L_0x051b:
        r2 = 0;
        r0 = r24;
        r0.mode = r2;
        goto L_0x0031;
    L_0x0522:
        if (r17 != 0) goto L_0x05cf;
    L_0x0524:
        r0 = r25;
        r2 = r0.end;
        r0 = r21;
        if (r0 != r2) goto L_0x0544;
    L_0x052c:
        r0 = r25;
        r2 = r0.read;
        if (r2 == 0) goto L_0x0544;
    L_0x0532:
        r21 = 0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x05ba;
    L_0x053c:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x0544:
        if (r17 != 0) goto L_0x05cf;
    L_0x0546:
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r27 = r25.inflate_flush(r26, r27);
        r0 = r25;
        r0 = r0.write;
        r21 = r0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x05c1;
    L_0x055e:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x0566:
        r0 = r25;
        r2 = r0.end;
        r0 = r21;
        if (r0 != r2) goto L_0x0586;
    L_0x056e:
        r0 = r25;
        r2 = r0.read;
        if (r2 == 0) goto L_0x0586;
    L_0x0574:
        r21 = 0;
        r0 = r25;
        r2 = r0.read;
        r0 = r21;
        if (r0 >= r2) goto L_0x05c8;
    L_0x057e:
        r0 = r25;
        r2 = r0.read;
        r2 = r2 - r21;
        r17 = r2 + -1;
    L_0x0586:
        if (r17 != 0) goto L_0x05cf;
    L_0x0588:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        goto L_0x006a;
    L_0x05ba:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x0544;
    L_0x05c1:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x0566;
    L_0x05c8:
        r0 = r25;
        r2 = r0.end;
        r17 = r2 - r21;
        goto L_0x0586;
    L_0x05cf:
        r27 = 0;
        r0 = r25;
        r2 = r0.window;
        r22 = r21 + 1;
        r0 = r24;
        r3 = r0.lit;
        r3 = (byte) r3;
        r2[r21] = r3;
        r17 = r17 + -1;
        r2 = 0;
        r0 = r24;
        r0.mode = r2;
        r21 = r22;
        goto L_0x0031;
    L_0x05e9:
        r2 = 7;
        r0 = r16;
        if (r0 <= r2) goto L_0x05f4;
    L_0x05ee:
        r16 = r16 + -8;
        r18 = r18 + 1;
        r19 = r19 + -1;
    L_0x05f4:
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r27 = r25.inflate_flush(r26, r27);
        r0 = r25;
        r0 = r0.write;
        r21 = r0;
        r0 = r25;
        r2 = r0.read;
        r0 = r25;
        r3 = r0.write;
        if (r2 == r3) goto L_0x0640;
    L_0x060e:
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        goto L_0x006a;
    L_0x0640:
        r2 = 8;
        r0 = r24;
        r0.mode = r2;
    L_0x0646:
        r27 = 1;
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        goto L_0x006a;
    L_0x067a:
        r27 = -3;
        r0 = r25;
        r0.bitb = r11;
        r0 = r16;
        r1 = r25;
        r1.bitk = r0;
        r0 = r18;
        r1 = r26;
        r1.avail_in = r0;
        r0 = r26;
        r2 = r0.total_in;
        r0 = r26;
        r4 = r0.next_in_index;
        r4 = r19 - r4;
        r4 = (long) r4;
        r2 = r2 + r4;
        r0 = r26;
        r0.total_in = r2;
        r0 = r19;
        r1 = r26;
        r1.next_in_index = r0;
        r0 = r21;
        r1 = r25;
        r1.write = r0;
        r2 = r25.inflate_flush(r26, r27);
        goto L_0x006a;
    L_0x06ae:
        r13 = r14;
        goto L_0x045c;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.InfCodes.proc(org.jboss.netty.util.internal.jzlib.InfBlocks, org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    int inflate_fast(int r31, int r32, int[] r33, int r34, int[] r35, int r36, org.jboss.netty.util.internal.jzlib.InfBlocks r37, org.jboss.netty.util.internal.jzlib.ZStream r38) {
        /*
        r30 = this;
        r0 = r38;
        r15 = r0.next_in_index;
        r0 = r38;
        r14 = r0.avail_in;
        r0 = r37;
        r6 = r0.bitb;
        r0 = r37;
        r10 = r0.bitk;
        r0 = r37;
        r0 = r0.write;
        r17 = r0;
        r0 = r37;
        r0 = r0.read;
        r25 = r0;
        r0 = r17;
        r1 = r25;
        if (r0 >= r1) goto L_0x0059;
    L_0x0022:
        r0 = r37;
        r0 = r0.read;
        r25 = r0;
        r25 = r25 - r17;
        r11 = r25 + -1;
    L_0x002c:
        r25 = inflate_mask;
        r13 = r25[r31];
        r25 = inflate_mask;
        r12 = r25[r32];
        r18 = r17;
        r16 = r15;
    L_0x0038:
        r25 = 20;
        r0 = r25;
        if (r10 >= r0) goto L_0x0062;
    L_0x003e:
        r14 = r14 + -1;
        r0 = r38;
        r0 = r0.next_in;
        r25 = r0;
        r15 = r16 + 1;
        r25 = r25[r16];
        r0 = r25;
        r0 = r0 & 255;
        r25 = r0;
        r25 = r25 << r10;
        r6 = r6 | r25;
        r10 = r10 + 8;
        r16 = r15;
        goto L_0x0038;
    L_0x0059:
        r0 = r37;
        r0 = r0.end;
        r25 = r0;
        r11 = r25 - r17;
        goto L_0x002c;
    L_0x0062:
        r21 = r6 & r13;
        r22 = r33;
        r23 = r34;
        r25 = r23 + r21;
        r24 = r25 * 3;
        r9 = r22[r24];
        if (r9 != 0) goto L_0x00e9;
    L_0x0070:
        r25 = r24 + 1;
        r25 = r22[r25];
        r6 = r6 >> r25;
        r25 = r24 + 1;
        r25 = r22[r25];
        r10 = r10 - r25;
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r17 = r18 + 1;
        r26 = r24 + 2;
        r26 = r22[r26];
        r0 = r26;
        r0 = (byte) r0;
        r26 = r0;
        r25[r18] = r26;
        r11 = r11 + -1;
        r15 = r16;
    L_0x0093:
        r25 = 258; // 0x102 float:3.62E-43 double:1.275E-321;
        r0 = r25;
        if (r11 < r0) goto L_0x009f;
    L_0x0099:
        r25 = 10;
        r0 = r25;
        if (r14 >= r0) goto L_0x03d7;
    L_0x009f:
        r0 = r38;
        r0 = r0.avail_in;
        r25 = r0;
        r7 = r25 - r14;
        r25 = r10 >> 3;
        r0 = r25;
        if (r0 >= r7) goto L_0x00af;
    L_0x00ad:
        r7 = r10 >> 3;
    L_0x00af:
        r14 = r14 + r7;
        r15 = r15 - r7;
        r25 = r7 << 3;
        r10 = r10 - r25;
        r0 = r37;
        r0.bitb = r6;
        r0 = r37;
        r0.bitk = r10;
        r0 = r38;
        r0.avail_in = r14;
        r0 = r38;
        r0 = r0.total_in;
        r26 = r0;
        r0 = r38;
        r0 = r0.next_in_index;
        r25 = r0;
        r25 = r15 - r25;
        r0 = r25;
        r0 = (long) r0;
        r28 = r0;
        r26 = r26 + r28;
        r0 = r26;
        r2 = r38;
        r2.total_in = r0;
        r0 = r38;
        r0.next_in_index = r15;
        r0 = r17;
        r1 = r37;
        r1.write = r0;
        r25 = 0;
    L_0x00e8:
        return r25;
    L_0x00e9:
        r25 = r24 + 1;
        r25 = r22[r25];
        r6 = r6 >> r25;
        r25 = r24 + 1;
        r25 = r22[r25];
        r10 = r10 - r25;
        r25 = r9 & 16;
        if (r25 == 0) goto L_0x02ef;
    L_0x00f9:
        r9 = r9 & 15;
        r25 = r24 + 2;
        r25 = r22[r25];
        r26 = inflate_mask;
        r26 = r26[r9];
        r26 = r26 & r6;
        r7 = r25 + r26;
        r6 = r6 >> r9;
        r10 = r10 - r9;
    L_0x0109:
        r25 = 15;
        r0 = r25;
        if (r10 >= r0) goto L_0x012a;
    L_0x010f:
        r14 = r14 + -1;
        r0 = r38;
        r0 = r0.next_in;
        r25 = r0;
        r15 = r16 + 1;
        r25 = r25[r16];
        r0 = r25;
        r0 = r0 & 255;
        r25 = r0;
        r25 = r25 << r10;
        r6 = r6 | r25;
        r10 = r10 + 8;
        r16 = r15;
        goto L_0x0109;
    L_0x012a:
        r21 = r6 & r12;
        r22 = r35;
        r23 = r36;
        r25 = r23 + r21;
        r24 = r25 * 3;
        r9 = r22[r24];
    L_0x0136:
        r25 = r24 + 1;
        r25 = r22[r25];
        r6 = r6 >> r25;
        r25 = r24 + 1;
        r25 = r22[r25];
        r10 = r10 - r25;
        r25 = r9 & 16;
        if (r25 == 0) goto L_0x027e;
    L_0x0146:
        r9 = r9 & 15;
    L_0x0148:
        if (r10 >= r9) goto L_0x0165;
    L_0x014a:
        r14 = r14 + -1;
        r0 = r38;
        r0 = r0.next_in;
        r25 = r0;
        r15 = r16 + 1;
        r25 = r25[r16];
        r0 = r25;
        r0 = r0 & 255;
        r25 = r0;
        r25 = r25 << r10;
        r6 = r6 | r25;
        r10 = r10 + 8;
        r16 = r15;
        goto L_0x0148;
    L_0x0165:
        r25 = r24 + 2;
        r25 = r22[r25];
        r26 = inflate_mask;
        r26 = r26[r9];
        r26 = r26 & r6;
        r8 = r25 + r26;
        r6 = r6 >> r9;
        r10 = r10 - r9;
        r11 = r11 - r7;
        r0 = r18;
        if (r0 < r8) goto L_0x01fe;
    L_0x0178:
        r19 = r18 - r8;
        r25 = r18 - r19;
        if (r25 <= 0) goto L_0x01dc;
    L_0x017e:
        r25 = 2;
        r26 = r18 - r19;
        r0 = r25;
        r1 = r26;
        if (r0 <= r1) goto L_0x01dc;
    L_0x0188:
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r17 = r18 + 1;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r20 = r19 + 1;
        r26 = r26[r19];
        r25[r18] = r26;
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r18 = r17 + 1;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r19 = r20 + 1;
        r26 = r26[r20];
        r25[r17] = r26;
        r7 = r7 + -2;
        r17 = r18;
    L_0x01b4:
        r25 = r17 - r19;
        if (r25 <= 0) goto L_0x025e;
    L_0x01b8:
        r25 = r17 - r19;
        r0 = r25;
        if (r7 <= r0) goto L_0x025e;
    L_0x01be:
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r18 = r17 + 1;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r20 = r19 + 1;
        r26 = r26[r19];
        r25[r17] = r26;
        r7 = r7 + -1;
        if (r7 != 0) goto L_0x03dd;
    L_0x01d6:
        r17 = r18;
        r15 = r16;
        goto L_0x0093;
    L_0x01dc:
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r27 = 2;
        r0 = r25;
        r1 = r19;
        r2 = r26;
        r3 = r18;
        r4 = r27;
        java.lang.System.arraycopy(r0, r1, r2, r3, r4);
        r17 = r18 + 2;
        r19 = r19 + 2;
        r7 = r7 + -2;
        goto L_0x01b4;
    L_0x01fe:
        r19 = r18 - r8;
    L_0x0200:
        r0 = r37;
        r0 = r0.end;
        r25 = r0;
        r19 = r19 + r25;
        if (r19 < 0) goto L_0x0200;
    L_0x020a:
        r0 = r37;
        r0 = r0.end;
        r25 = r0;
        r9 = r25 - r19;
        if (r7 <= r9) goto L_0x03e9;
    L_0x0214:
        r7 = r7 - r9;
        r25 = r18 - r19;
        if (r25 <= 0) goto L_0x0241;
    L_0x0219:
        r25 = r18 - r19;
        r0 = r25;
        if (r9 <= r0) goto L_0x0241;
    L_0x021f:
        r17 = r18;
    L_0x0221:
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r18 = r17 + 1;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r20 = r19 + 1;
        r26 = r26[r19];
        r25[r17] = r26;
        r9 = r9 + -1;
        if (r9 != 0) goto L_0x03e3;
    L_0x0239:
        r19 = r20;
        r17 = r18;
    L_0x023d:
        r19 = 0;
        goto L_0x01b4;
    L_0x0241:
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r0 = r25;
        r1 = r19;
        r2 = r26;
        r3 = r18;
        java.lang.System.arraycopy(r0, r1, r2, r3, r9);
        r17 = r18 + r9;
        r19 = r19 + r9;
        r9 = 0;
        goto L_0x023d;
    L_0x025e:
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r0 = r37;
        r0 = r0.window;
        r26 = r0;
        r0 = r25;
        r1 = r19;
        r2 = r26;
        r3 = r17;
        java.lang.System.arraycopy(r0, r1, r2, r3, r7);
        r17 = r17 + r7;
        r19 = r19 + r7;
        r7 = 0;
        r15 = r16;
        goto L_0x0093;
    L_0x027e:
        r25 = r9 & 64;
        if (r25 != 0) goto L_0x0298;
    L_0x0282:
        r25 = r24 + 2;
        r25 = r22[r25];
        r21 = r21 + r25;
        r25 = inflate_mask;
        r25 = r25[r9];
        r25 = r25 & r6;
        r21 = r21 + r25;
        r25 = r23 + r21;
        r24 = r25 * 3;
        r9 = r22[r24];
        goto L_0x0136;
    L_0x0298:
        r25 = "invalid distance code";
        r0 = r25;
        r1 = r38;
        r1.msg = r0;
        r0 = r38;
        r0 = r0.avail_in;
        r25 = r0;
        r7 = r25 - r14;
        r25 = r10 >> 3;
        r0 = r25;
        if (r0 >= r7) goto L_0x02b1;
    L_0x02af:
        r7 = r10 >> 3;
    L_0x02b1:
        r14 = r14 + r7;
        r15 = r16 - r7;
        r25 = r7 << 3;
        r10 = r10 - r25;
        r0 = r37;
        r0.bitb = r6;
        r0 = r37;
        r0.bitk = r10;
        r0 = r38;
        r0.avail_in = r14;
        r0 = r38;
        r0 = r0.total_in;
        r26 = r0;
        r0 = r38;
        r0 = r0.next_in_index;
        r25 = r0;
        r25 = r15 - r25;
        r0 = r25;
        r0 = (long) r0;
        r28 = r0;
        r26 = r26 + r28;
        r0 = r26;
        r2 = r38;
        r2.total_in = r0;
        r0 = r38;
        r0.next_in_index = r15;
        r0 = r18;
        r1 = r37;
        r1.write = r0;
        r25 = -3;
        r17 = r18;
        goto L_0x00e8;
    L_0x02ef:
        r25 = r9 & 64;
        if (r25 != 0) goto L_0x032e;
    L_0x02f3:
        r25 = r24 + 2;
        r25 = r22[r25];
        r21 = r21 + r25;
        r25 = inflate_mask;
        r25 = r25[r9];
        r25 = r25 & r6;
        r21 = r21 + r25;
        r25 = r23 + r21;
        r24 = r25 * 3;
        r9 = r22[r24];
        if (r9 != 0) goto L_0x00e9;
    L_0x0309:
        r25 = r24 + 1;
        r25 = r22[r25];
        r6 = r6 >> r25;
        r25 = r24 + 1;
        r25 = r22[r25];
        r10 = r10 - r25;
        r0 = r37;
        r0 = r0.window;
        r25 = r0;
        r17 = r18 + 1;
        r26 = r24 + 2;
        r26 = r22[r26];
        r0 = r26;
        r0 = (byte) r0;
        r26 = r0;
        r25[r18] = r26;
        r11 = r11 + -1;
        r15 = r16;
        goto L_0x0093;
    L_0x032e:
        r25 = r9 & 32;
        if (r25 == 0) goto L_0x0380;
    L_0x0332:
        r0 = r38;
        r0 = r0.avail_in;
        r25 = r0;
        r7 = r25 - r14;
        r25 = r10 >> 3;
        r0 = r25;
        if (r0 >= r7) goto L_0x0342;
    L_0x0340:
        r7 = r10 >> 3;
    L_0x0342:
        r14 = r14 + r7;
        r15 = r16 - r7;
        r25 = r7 << 3;
        r10 = r10 - r25;
        r0 = r37;
        r0.bitb = r6;
        r0 = r37;
        r0.bitk = r10;
        r0 = r38;
        r0.avail_in = r14;
        r0 = r38;
        r0 = r0.total_in;
        r26 = r0;
        r0 = r38;
        r0 = r0.next_in_index;
        r25 = r0;
        r25 = r15 - r25;
        r0 = r25;
        r0 = (long) r0;
        r28 = r0;
        r26 = r26 + r28;
        r0 = r26;
        r2 = r38;
        r2.total_in = r0;
        r0 = r38;
        r0.next_in_index = r15;
        r0 = r18;
        r1 = r37;
        r1.write = r0;
        r25 = 1;
        r17 = r18;
        goto L_0x00e8;
    L_0x0380:
        r25 = "invalid literal/length code";
        r0 = r25;
        r1 = r38;
        r1.msg = r0;
        r0 = r38;
        r0 = r0.avail_in;
        r25 = r0;
        r7 = r25 - r14;
        r25 = r10 >> 3;
        r0 = r25;
        if (r0 >= r7) goto L_0x0399;
    L_0x0397:
        r7 = r10 >> 3;
    L_0x0399:
        r14 = r14 + r7;
        r15 = r16 - r7;
        r25 = r7 << 3;
        r10 = r10 - r25;
        r0 = r37;
        r0.bitb = r6;
        r0 = r37;
        r0.bitk = r10;
        r0 = r38;
        r0.avail_in = r14;
        r0 = r38;
        r0 = r0.total_in;
        r26 = r0;
        r0 = r38;
        r0 = r0.next_in_index;
        r25 = r0;
        r25 = r15 - r25;
        r0 = r25;
        r0 = (long) r0;
        r28 = r0;
        r26 = r26 + r28;
        r0 = r26;
        r2 = r38;
        r2.total_in = r0;
        r0 = r38;
        r0.next_in_index = r15;
        r0 = r18;
        r1 = r37;
        r1.write = r0;
        r25 = -3;
        r17 = r18;
        goto L_0x00e8;
    L_0x03d7:
        r18 = r17;
        r16 = r15;
        goto L_0x0038;
    L_0x03dd:
        r19 = r20;
        r17 = r18;
        goto L_0x01be;
    L_0x03e3:
        r19 = r20;
        r17 = r18;
        goto L_0x0221;
    L_0x03e9:
        r17 = r18;
        goto L_0x01b4;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.InfCodes.inflate_fast(int, int, int[], int, int[], int, org.jboss.netty.util.internal.jzlib.InfBlocks, org.jboss.netty.util.internal.jzlib.ZStream):int");
    }
}
