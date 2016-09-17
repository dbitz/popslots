package org.jboss.netty.util.internal.jzlib;

import org.jdom.filter.ContentFilter;

final class Deflate {
    private static final int BUSY_STATE = 113;
    private static final int BlockDone = 1;
    private static final int Buf_size = 16;
    private static final int DYN_TREES = 2;
    private static final int END_BLOCK = 256;
    private static final int FAST = 1;
    private static final int FINISH_STATE = 666;
    private static final int FinishDone = 3;
    private static final int FinishStarted = 2;
    private static final int INIT_STATE = 42;
    private static final int MAX_MATCH = 258;
    private static final int MIN_LOOKAHEAD = 262;
    private static final int MIN_MATCH = 3;
    private static final int NeedMore = 0;
    private static final int REPZ_11_138 = 18;
    private static final int REPZ_3_10 = 17;
    private static final int REP_3_6 = 16;
    private static final int SLOW = 2;
    private static final int STATIC_TREES = 1;
    private static final int STORED = 0;
    private static final int STORED_BLOCK = 0;
    private static final int Z_ASCII = 1;
    private static final int Z_BINARY = 0;
    private static final int Z_UNKNOWN = 2;
    private static final Config[] config_table = new Config[10];
    private static final String[] z_errmsg = new String[]{"need dictionary", "stream end", "", "file error", "stream error", "data error", "insufficient memory", "buffer error", "incompatible version", ""};
    short bi_buf;
    int bi_valid;
    short[] bl_count = new short[REP_3_6];
    Tree bl_desc = new Tree();
    short[] bl_tree = new short[78];
    int block_start;
    int d_buf;
    Tree d_desc = new Tree();
    byte data_type;
    byte[] depth = new byte[573];
    short[] dyn_dtree = new short[122];
    short[] dyn_ltree = new short[1146];
    int good_match;
    private int gzipUncompressedBytes;
    int hash_bits;
    int hash_mask;
    int hash_shift;
    int hash_size;
    short[] head;
    int[] heap = new int[573];
    int heap_len;
    int heap_max;
    int ins_h;
    int l_buf;
    Tree l_desc = new Tree();
    int last_eob_len;
    int last_flush;
    int last_lit;
    int level;
    int lit_bufsize;
    int lookahead;
    int match_available;
    int match_length;
    int match_start;
    int matches;
    int max_chain_length;
    int max_lazy_match;
    int nice_match;
    int opt_len;
    int pending;
    byte[] pending_buf;
    int pending_buf_size;
    int pending_out;
    short[] prev;
    int prev_length;
    int prev_match;
    int static_len;
    int status;
    int strategy;
    ZStream strm;
    int strstart;
    int w_bits;
    int w_mask;
    int w_size;
    byte[] window;
    int window_size;
    WrapperType wrapperType;
    private boolean wroteTrailer;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType = new int[WrapperType.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType[WrapperType.ZLIB.ordinal()] = Deflate.Z_ASCII;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType[WrapperType.GZIP.ordinal()] = Deflate.Z_UNKNOWN;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private static final class Config {
        final int func;
        final int good_length;
        final int max_chain;
        final int max_lazy;
        final int nice_length;

        Config(int good_length, int max_lazy, int nice_length, int max_chain, int func) {
            this.good_length = good_length;
            this.max_lazy = max_lazy;
            this.nice_length = nice_length;
            this.max_chain = max_chain;
            this.func = func;
        }
    }

    static {
        config_table[Z_BINARY] = new Config(Z_BINARY, Z_BINARY, Z_BINARY, Z_BINARY, Z_BINARY);
        config_table[Z_ASCII] = new Config(4, 4, 8, 4, Z_ASCII);
        config_table[Z_UNKNOWN] = new Config(4, 5, REP_3_6, 8, Z_ASCII);
        config_table[MIN_MATCH] = new Config(4, 6, 32, 32, Z_ASCII);
        config_table[4] = new Config(4, 4, REP_3_6, REP_3_6, Z_UNKNOWN);
        config_table[5] = new Config(8, REP_3_6, 32, 32, Z_UNKNOWN);
        config_table[6] = new Config(8, REP_3_6, ContentFilter.DOCTYPE, ContentFilter.DOCTYPE, Z_UNKNOWN);
        config_table[7] = new Config(8, 32, ContentFilter.DOCTYPE, END_BLOCK, Z_UNKNOWN);
        config_table[8] = new Config(32, ContentFilter.DOCTYPE, MAX_MATCH, 1024, Z_UNKNOWN);
        config_table[9] = new Config(32, MAX_MATCH, MAX_MATCH, 4096, Z_UNKNOWN);
    }

    Deflate() {
    }

    private void lm_init() {
        this.window_size = this.w_size * Z_UNKNOWN;
        this.max_lazy_match = config_table[this.level].max_lazy;
        this.good_match = config_table[this.level].good_length;
        this.nice_match = config_table[this.level].nice_length;
        this.max_chain_length = config_table[this.level].max_chain;
        this.strstart = Z_BINARY;
        this.block_start = Z_BINARY;
        this.lookahead = Z_BINARY;
        this.prev_length = Z_UNKNOWN;
        this.match_length = Z_UNKNOWN;
        this.match_available = Z_BINARY;
        this.ins_h = Z_BINARY;
    }

    private void tr_init() {
        this.l_desc.dyn_tree = this.dyn_ltree;
        this.l_desc.stat_desc = StaticTree.static_l_desc;
        this.d_desc.dyn_tree = this.dyn_dtree;
        this.d_desc.stat_desc = StaticTree.static_d_desc;
        this.bl_desc.dyn_tree = this.bl_tree;
        this.bl_desc.stat_desc = StaticTree.static_bl_desc;
        this.bi_buf = (short) 0;
        this.bi_valid = Z_BINARY;
        this.last_eob_len = 8;
        init_block();
    }

    private void init_block() {
        int i;
        for (i = Z_BINARY; i < 286; i += Z_ASCII) {
            this.dyn_ltree[i * Z_UNKNOWN] = (short) 0;
        }
        for (i = Z_BINARY; i < 30; i += Z_ASCII) {
            this.dyn_dtree[i * Z_UNKNOWN] = (short) 0;
        }
        for (i = Z_BINARY; i < 19; i += Z_ASCII) {
            this.bl_tree[i * Z_UNKNOWN] = (short) 0;
        }
        this.dyn_ltree[512] = (short) 1;
        this.static_len = Z_BINARY;
        this.opt_len = Z_BINARY;
        this.matches = Z_BINARY;
        this.last_lit = Z_BINARY;
    }

    void pqdownheap(short[] tree, int k) {
        int v = this.heap[k];
        int j = k << Z_ASCII;
        while (j <= this.heap_len) {
            if (j < this.heap_len && smaller(tree, this.heap[j + Z_ASCII], this.heap[j], this.depth)) {
                j += Z_ASCII;
            }
            if (smaller(tree, v, this.heap[j], this.depth)) {
                break;
            }
            this.heap[k] = this.heap[j];
            k = j;
            j <<= Z_ASCII;
        }
        this.heap[k] = v;
    }

    private static boolean smaller(short[] tree, int n, int m, byte[] depth) {
        short tn2 = tree[n * Z_UNKNOWN];
        short tm2 = tree[m * Z_UNKNOWN];
        return tn2 < tm2 || (tn2 == tm2 && depth[n] <= depth[m]);
    }

    private void scan_tree(short[] tree, int max_code) {
        int prevlen = -1;
        int nextlen = tree[Z_ASCII];
        int count = Z_BINARY;
        int max_count = 7;
        int min_count = 4;
        if (nextlen == 0) {
            max_count = 138;
            min_count = MIN_MATCH;
        }
        tree[((max_code + Z_ASCII) * Z_UNKNOWN) + Z_ASCII] = (short) -1;
        for (int n = Z_BINARY; n <= max_code; n += Z_ASCII) {
            int curlen = nextlen;
            nextlen = tree[((n + Z_ASCII) * Z_UNKNOWN) + Z_ASCII];
            count += Z_ASCII;
            if (count >= max_count || curlen != nextlen) {
                short[] sArr;
                int i;
                if (count < min_count) {
                    sArr = this.bl_tree;
                    i = curlen * Z_UNKNOWN;
                    sArr[i] = (short) (sArr[i] + count);
                } else if (curlen != 0) {
                    if (curlen != prevlen) {
                        sArr = this.bl_tree;
                        i = curlen * Z_UNKNOWN;
                        sArr[i] = (short) (sArr[i] + Z_ASCII);
                    }
                    sArr = this.bl_tree;
                    sArr[32] = (short) (sArr[32] + Z_ASCII);
                } else if (count <= 10) {
                    sArr = this.bl_tree;
                    sArr[34] = (short) (sArr[34] + Z_ASCII);
                } else {
                    sArr = this.bl_tree;
                    sArr[36] = (short) (sArr[36] + Z_ASCII);
                }
                count = Z_BINARY;
                prevlen = curlen;
                if (nextlen == 0) {
                    max_count = 138;
                    min_count = MIN_MATCH;
                } else if (curlen == nextlen) {
                    max_count = 6;
                    min_count = MIN_MATCH;
                } else {
                    max_count = 7;
                    min_count = 4;
                }
            }
        }
    }

    private int build_bl_tree() {
        scan_tree(this.dyn_ltree, this.l_desc.max_code);
        scan_tree(this.dyn_dtree, this.d_desc.max_code);
        this.bl_desc.build_tree(this);
        int max_blindex = REPZ_11_138;
        while (max_blindex >= MIN_MATCH && this.bl_tree[(Tree.bl_order[max_blindex] * Z_UNKNOWN) + Z_ASCII] == (short) 0) {
            max_blindex--;
        }
        this.opt_len += ((((max_blindex + Z_ASCII) * MIN_MATCH) + 5) + 5) + 4;
        return max_blindex;
    }

    private void send_all_trees(int lcodes, int dcodes, int blcodes) {
        send_bits(lcodes - 257, 5);
        send_bits(dcodes - 1, 5);
        send_bits(blcodes - 4, 4);
        for (int rank = Z_BINARY; rank < blcodes; rank += Z_ASCII) {
            send_bits(this.bl_tree[(Tree.bl_order[rank] * Z_UNKNOWN) + Z_ASCII], MIN_MATCH);
        }
        send_tree(this.dyn_ltree, lcodes - 1);
        send_tree(this.dyn_dtree, dcodes - 1);
    }

    private void send_tree(short[] tree, int max_code) {
        int prevlen = -1;
        int nextlen = tree[Z_ASCII];
        int count = Z_BINARY;
        int max_count = 7;
        int min_count = 4;
        if (nextlen == 0) {
            max_count = 138;
            min_count = MIN_MATCH;
        }
        for (int n = Z_BINARY; n <= max_code; n += Z_ASCII) {
            int curlen = nextlen;
            nextlen = tree[((n + Z_ASCII) * Z_UNKNOWN) + Z_ASCII];
            count += Z_ASCII;
            if (count >= max_count || curlen != nextlen) {
                if (count < min_count) {
                    do {
                        send_code(curlen, this.bl_tree);
                        count--;
                    } while (count != 0);
                } else if (curlen != 0) {
                    if (curlen != prevlen) {
                        send_code(curlen, this.bl_tree);
                        count--;
                    }
                    send_code(REP_3_6, this.bl_tree);
                    send_bits(count - 3, Z_UNKNOWN);
                } else if (count <= 10) {
                    send_code(REPZ_3_10, this.bl_tree);
                    send_bits(count - 3, MIN_MATCH);
                } else {
                    send_code(REPZ_11_138, this.bl_tree);
                    send_bits(count - 11, 7);
                }
                count = Z_BINARY;
                prevlen = curlen;
                if (nextlen == 0) {
                    max_count = 138;
                    min_count = MIN_MATCH;
                } else if (curlen == nextlen) {
                    max_count = 6;
                    min_count = MIN_MATCH;
                } else {
                    max_count = 7;
                    min_count = 4;
                }
            }
        }
    }

    private final void put_byte(byte[] p, int start, int len) {
        System.arraycopy(p, start, this.pending_buf, this.pending, len);
        this.pending += len;
    }

    private final void put_byte(byte c) {
        byte[] bArr = this.pending_buf;
        int i = this.pending;
        this.pending = i + Z_ASCII;
        bArr[i] = c;
    }

    private final void put_short(int w) {
        put_byte((byte) w);
        put_byte((byte) (w >>> 8));
    }

    private final void putShortMSB(int b) {
        put_byte((byte) (b >> 8));
        put_byte((byte) b);
    }

    private final void send_code(int c, short[] tree) {
        int c2 = c * Z_UNKNOWN;
        send_bits(tree[c2] & 65535, tree[c2 + Z_ASCII] & 65535);
    }

    private void send_bits(int value, int length) {
        int len = length;
        if (this.bi_valid > 16 - len) {
            int val = value;
            this.bi_buf = (short) (this.bi_buf | ((val << this.bi_valid) & 65535));
            put_short(this.bi_buf);
            this.bi_buf = (short) (val >>> (16 - this.bi_valid));
            this.bi_valid += len - 16;
            return;
        }
        this.bi_buf = (short) (this.bi_buf | ((value << this.bi_valid) & 65535));
        this.bi_valid += len;
    }

    private void _tr_align() {
        send_bits(Z_UNKNOWN, MIN_MATCH);
        send_code(END_BLOCK, StaticTree.static_ltree);
        bi_flush();
        if (((this.last_eob_len + Z_ASCII) + 10) - this.bi_valid < 9) {
            send_bits(Z_UNKNOWN, MIN_MATCH);
            send_code(END_BLOCK, StaticTree.static_ltree);
            bi_flush();
        }
        this.last_eob_len = 7;
    }

    private boolean _tr_tally(int dist, int lc) {
        this.pending_buf[this.d_buf + (this.last_lit * Z_UNKNOWN)] = (byte) (dist >>> 8);
        this.pending_buf[(this.d_buf + (this.last_lit * Z_UNKNOWN)) + Z_ASCII] = (byte) dist;
        this.pending_buf[this.l_buf + this.last_lit] = (byte) lc;
        this.last_lit += Z_ASCII;
        short[] sArr;
        int i;
        if (dist == 0) {
            sArr = this.dyn_ltree;
            i = lc * Z_UNKNOWN;
            sArr[i] = (short) (sArr[i] + Z_ASCII);
        } else {
            this.matches += Z_ASCII;
            dist--;
            sArr = this.dyn_ltree;
            i = ((Tree._length_code[lc] + END_BLOCK) + Z_ASCII) * Z_UNKNOWN;
            sArr[i] = (short) (sArr[i] + Z_ASCII);
            sArr = this.dyn_dtree;
            i = Tree.d_code(dist) * Z_UNKNOWN;
            sArr[i] = (short) (sArr[i] + Z_ASCII);
        }
        if ((this.last_lit & 8191) == 0 && this.level > Z_UNKNOWN) {
            int out_length = this.last_lit * 8;
            int in_length = this.strstart - this.block_start;
            for (int dcode = Z_BINARY; dcode < 30; dcode += Z_ASCII) {
                out_length = (int) (((long) out_length) + (((long) this.dyn_dtree[dcode * Z_UNKNOWN]) * (5 + ((long) Tree.extra_dbits[dcode]))));
            }
            out_length >>>= MIN_MATCH;
            if (this.matches < this.last_lit / Z_UNKNOWN && out_length < in_length / Z_UNKNOWN) {
                return true;
            }
        }
        if (this.last_lit != this.lit_bufsize - 1) {
            return false;
        }
        return true;
    }

    private void compress_block(short[] ltree, short[] dtree) {
        int lx = Z_BINARY;
        if (this.last_lit != 0) {
            do {
                int dist = ((this.pending_buf[this.d_buf + (lx * Z_UNKNOWN)] << 8) & 65280) | (this.pending_buf[(this.d_buf + (lx * Z_UNKNOWN)) + Z_ASCII] & 255);
                int lc = this.pending_buf[this.l_buf + lx] & 255;
                lx += Z_ASCII;
                if (dist == 0) {
                    send_code(lc, ltree);
                } else {
                    int code = Tree._length_code[lc];
                    send_code((code + END_BLOCK) + Z_ASCII, ltree);
                    int extra = Tree.extra_lbits[code];
                    if (extra != 0) {
                        send_bits(lc - Tree.base_length[code], extra);
                    }
                    dist--;
                    code = Tree.d_code(dist);
                    send_code(code, dtree);
                    extra = Tree.extra_dbits[code];
                    if (extra != 0) {
                        send_bits(dist - Tree.base_dist[code], extra);
                    }
                }
            } while (lx < this.last_lit);
        }
        send_code(END_BLOCK, ltree);
        this.last_eob_len = ltree[513];
    }

    private void set_data_type() {
        int n = Z_BINARY;
        int ascii_freq = Z_BINARY;
        int bin_freq = Z_BINARY;
        while (n < 7) {
            bin_freq += this.dyn_ltree[n * Z_UNKNOWN];
            n += Z_ASCII;
        }
        while (n < ContentFilter.DOCTYPE) {
            ascii_freq += this.dyn_ltree[n * Z_UNKNOWN];
            n += Z_ASCII;
        }
        while (n < END_BLOCK) {
            bin_freq += this.dyn_ltree[n * Z_UNKNOWN];
            n += Z_ASCII;
        }
        this.data_type = (byte) (bin_freq > (ascii_freq >>> Z_UNKNOWN) ? Z_BINARY : Z_ASCII);
    }

    private void bi_flush() {
        if (this.bi_valid == REP_3_6) {
            put_short(this.bi_buf);
            this.bi_buf = (short) 0;
            this.bi_valid = Z_BINARY;
        } else if (this.bi_valid >= 8) {
            put_byte((byte) this.bi_buf);
            this.bi_buf = (short) (this.bi_buf >>> 8);
            this.bi_valid -= 8;
        }
    }

    private void bi_windup() {
        if (this.bi_valid > 8) {
            put_short(this.bi_buf);
        } else if (this.bi_valid > 0) {
            put_byte((byte) this.bi_buf);
        }
        this.bi_buf = (short) 0;
        this.bi_valid = Z_BINARY;
    }

    private void copy_block(int buf, int len, boolean header) {
        bi_windup();
        this.last_eob_len = 8;
        if (header) {
            put_short((short) len);
            put_short((short) (len ^ -1));
        }
        put_byte(this.window, buf, len);
    }

    private void flush_block_only(boolean eof) {
        _tr_flush_block(this.block_start >= 0 ? this.block_start : -1, this.strstart - this.block_start, eof);
        this.block_start = this.strstart;
        this.strm.flush_pending();
    }

    private int deflate_stored(int flush) {
        boolean z;
        int i = Z_ASCII;
        int max_block_size = 65535;
        if (65535 > this.pending_buf_size - 5) {
            max_block_size = this.pending_buf_size - 5;
        }
        while (true) {
            if (this.lookahead <= Z_ASCII) {
                fill_window();
                if (this.lookahead != 0 || flush != 0) {
                    if (this.lookahead == 0) {
                        break;
                    }
                }
                return Z_BINARY;
            }
            this.strstart += this.lookahead;
            this.lookahead = Z_BINARY;
            int max_start = this.block_start + max_block_size;
            if (this.strstart == 0 || this.strstart >= max_start) {
                this.lookahead = this.strstart - max_start;
                this.strstart = max_start;
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return Z_BINARY;
                }
            }
            if (this.strstart - this.block_start >= this.w_size - 262) {
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return Z_BINARY;
                }
            }
        }
        if (flush == 4) {
            z = true;
        } else {
            z = false;
        }
        flush_block_only(z);
        if (this.strm.avail_out != 0) {
            if (flush == 4) {
                i = MIN_MATCH;
            }
            return i;
        } else if (flush == 4) {
            return Z_UNKNOWN;
        } else {
            return Z_BINARY;
        }
    }

    private void _tr_stored_block(int buf, int stored_len, boolean eof) {
        send_bits((eof ? Z_ASCII : Z_BINARY) + Z_BINARY, MIN_MATCH);
        copy_block(buf, stored_len, true);
    }

    private void _tr_flush_block(int buf, int stored_len, boolean eof) {
        int opt_lenb;
        int static_lenb;
        int i = Z_ASCII;
        int max_blindex = Z_BINARY;
        if (this.level > 0) {
            if (this.data_type == (byte) 2) {
                set_data_type();
            }
            this.l_desc.build_tree(this);
            this.d_desc.build_tree(this);
            max_blindex = build_bl_tree();
            opt_lenb = ((this.opt_len + MIN_MATCH) + 7) >>> MIN_MATCH;
            static_lenb = ((this.static_len + MIN_MATCH) + 7) >>> MIN_MATCH;
            if (static_lenb <= opt_lenb) {
                opt_lenb = static_lenb;
            }
        } else {
            static_lenb = stored_len + 5;
            opt_lenb = static_lenb;
        }
        if (stored_len + 4 <= opt_lenb && buf != -1) {
            _tr_stored_block(buf, stored_len, eof);
        } else if (static_lenb == opt_lenb) {
            if (!eof) {
                i = Z_BINARY;
            }
            send_bits(i + Z_UNKNOWN, MIN_MATCH);
            compress_block(StaticTree.static_ltree, StaticTree.static_dtree);
        } else {
            if (!eof) {
                i = Z_BINARY;
            }
            send_bits(i + 4, MIN_MATCH);
            send_all_trees(this.l_desc.max_code + Z_ASCII, this.d_desc.max_code + Z_ASCII, max_blindex + Z_ASCII);
            compress_block(this.dyn_ltree, this.dyn_dtree);
        }
        init_block();
        if (eof) {
            bi_windup();
        }
    }

    private void fill_window() {
        do {
            int more = (this.window_size - this.lookahead) - this.strstart;
            if (more == 0 && this.strstart == 0 && this.lookahead == 0) {
                more = this.w_size;
            } else if (more == -1) {
                more--;
            } else if (this.strstart >= (this.w_size + this.w_size) - 262) {
                int m;
                System.arraycopy(this.window, this.w_size, this.window, Z_BINARY, this.w_size);
                this.match_start -= this.w_size;
                this.strstart -= this.w_size;
                this.block_start -= this.w_size;
                int n = this.hash_size;
                int p = n;
                do {
                    p--;
                    m = this.head[p] & 65535;
                    this.head[p] = m >= this.w_size ? (short) (m - this.w_size) : (short) 0;
                    n--;
                } while (n != 0);
                n = this.w_size;
                p = n;
                do {
                    short s;
                    p--;
                    m = this.prev[p] & 65535;
                    short[] sArr = this.prev;
                    if (m >= this.w_size) {
                        s = (short) (m - this.w_size);
                    } else {
                        s = (short) 0;
                    }
                    sArr[p] = s;
                    n--;
                } while (n != 0);
                more += this.w_size;
            }
            if (this.strm.avail_in != 0) {
                this.lookahead += this.strm.read_buf(this.window, this.strstart + this.lookahead, more);
                if (this.lookahead >= MIN_MATCH) {
                    this.ins_h = this.window[this.strstart] & 255;
                    this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[this.strstart + Z_ASCII] & 255)) & this.hash_mask;
                }
                if (this.lookahead >= MIN_LOOKAHEAD) {
                    return;
                }
            } else {
                return;
            }
        } while (this.strm.avail_in != 0);
    }

    private int deflate_fast(int flush) {
        boolean z;
        int i = Z_ASCII;
        int hash_head = Z_BINARY;
        while (true) {
            boolean bflush;
            if (this.lookahead < MIN_LOOKAHEAD) {
                fill_window();
                if (this.lookahead >= MIN_LOOKAHEAD || flush != 0) {
                    if (this.lookahead == 0) {
                        break;
                    }
                }
                return Z_BINARY;
            }
            if (this.lookahead >= MIN_MATCH) {
                this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + MIN_MATCH) - 1] & 255)) & this.hash_mask;
                hash_head = this.head[this.ins_h] & 65535;
                this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                this.head[this.ins_h] = (short) this.strstart;
            }
            if (!(((long) hash_head) == 0 || ((this.strstart - hash_head) & 65535) > this.w_size - 262 || this.strategy == Z_UNKNOWN)) {
                this.match_length = longest_match(hash_head);
            }
            if (this.match_length >= MIN_MATCH) {
                bflush = _tr_tally(this.strstart - this.match_start, this.match_length - 3);
                this.lookahead -= this.match_length;
                if (this.match_length > this.max_lazy_match || this.lookahead < MIN_MATCH) {
                    this.strstart += this.match_length;
                    this.match_length = Z_BINARY;
                    this.ins_h = this.window[this.strstart] & 255;
                    this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[this.strstart + Z_ASCII] & 255)) & this.hash_mask;
                } else {
                    this.match_length--;
                    int i2;
                    do {
                        this.strstart += Z_ASCII;
                        this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + MIN_MATCH) - 1] & 255)) & this.hash_mask;
                        hash_head = this.head[this.ins_h] & 65535;
                        this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                        this.head[this.ins_h] = (short) this.strstart;
                        i2 = this.match_length - 1;
                        this.match_length = i2;
                    } while (i2 != 0);
                    this.strstart += Z_ASCII;
                }
            } else {
                bflush = _tr_tally(Z_BINARY, this.window[this.strstart] & 255);
                this.lookahead--;
                this.strstart += Z_ASCII;
            }
            if (bflush) {
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return Z_BINARY;
                }
            }
        }
        if (flush == 4) {
            z = true;
        } else {
            z = false;
        }
        flush_block_only(z);
        if (this.strm.avail_out != 0) {
            if (flush == 4) {
                i = MIN_MATCH;
            }
            return i;
        } else if (flush == 4) {
            return Z_UNKNOWN;
        } else {
            return Z_BINARY;
        }
    }

    private int deflate_slow(int flush) {
        boolean z;
        int i = Z_ASCII;
        int hash_head = Z_BINARY;
        while (true) {
            if (this.lookahead < MIN_LOOKAHEAD) {
                fill_window();
                if (this.lookahead >= MIN_LOOKAHEAD || flush != 0) {
                    if (this.lookahead == 0) {
                        break;
                    }
                }
                return Z_BINARY;
            }
            if (this.lookahead >= MIN_MATCH) {
                this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + MIN_MATCH) - 1] & 255)) & this.hash_mask;
                hash_head = this.head[this.ins_h] & 65535;
                this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                this.head[this.ins_h] = (short) this.strstart;
            }
            this.prev_length = this.match_length;
            this.prev_match = this.match_start;
            this.match_length = Z_UNKNOWN;
            if (hash_head != 0 && this.prev_length < this.max_lazy_match && ((this.strstart - hash_head) & 65535) <= this.w_size - 262) {
                if (this.strategy != Z_UNKNOWN) {
                    this.match_length = longest_match(hash_head);
                }
                if (this.match_length <= 5 && (this.strategy == Z_ASCII || (this.match_length == MIN_MATCH && this.strstart - this.match_start > 4096))) {
                    this.match_length = Z_UNKNOWN;
                }
            }
            if (this.prev_length >= MIN_MATCH && this.match_length <= this.prev_length) {
                int max_insert = (this.strstart + this.lookahead) - 3;
                boolean bflush = _tr_tally((this.strstart - 1) - this.prev_match, this.prev_length - 3);
                this.lookahead -= this.prev_length - 1;
                this.prev_length -= 2;
                int i2;
                do {
                    i2 = this.strstart + Z_ASCII;
                    this.strstart = i2;
                    if (i2 <= max_insert) {
                        this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + MIN_MATCH) - 1] & 255)) & this.hash_mask;
                        hash_head = this.head[this.ins_h] & 65535;
                        this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                        this.head[this.ins_h] = (short) this.strstart;
                    }
                    i2 = this.prev_length - 1;
                    this.prev_length = i2;
                } while (i2 != 0);
                this.match_available = Z_BINARY;
                this.match_length = Z_UNKNOWN;
                this.strstart += Z_ASCII;
                if (bflush) {
                    flush_block_only(false);
                    if (this.strm.avail_out == 0) {
                        return Z_BINARY;
                    }
                } else {
                    continue;
                }
            } else if (this.match_available != 0) {
                if (_tr_tally(Z_BINARY, this.window[this.strstart - 1] & 255)) {
                    flush_block_only(false);
                }
                this.strstart += Z_ASCII;
                this.lookahead--;
                if (this.strm.avail_out == 0) {
                    return Z_BINARY;
                }
            } else {
                this.match_available = Z_ASCII;
                this.strstart += Z_ASCII;
                this.lookahead--;
            }
        }
        if (this.match_available != 0) {
            _tr_tally(Z_BINARY, this.window[this.strstart - 1] & 255);
            this.match_available = Z_BINARY;
        }
        if (flush == 4) {
            z = true;
        } else {
            z = false;
        }
        flush_block_only(z);
        if (this.strm.avail_out == 0) {
            return flush == 4 ? Z_UNKNOWN : Z_BINARY;
        } else {
            if (flush == 4) {
                i = MIN_MATCH;
            }
            return i;
        }
    }

    private int longest_match(int cur_match) {
        int chain_length = this.max_chain_length;
        int scan = this.strstart;
        int best_len = this.prev_length;
        int limit = this.strstart > this.w_size + -262 ? this.strstart - (this.w_size - 262) : Z_BINARY;
        int nice_match = this.nice_match;
        int wmask = this.w_mask;
        int strend = this.strstart + MAX_MATCH;
        byte scan_end1 = this.window[(scan + best_len) - 1];
        byte scan_end = this.window[scan + best_len];
        if (this.prev_length >= this.good_match) {
            chain_length >>= Z_UNKNOWN;
        }
        if (nice_match > this.lookahead) {
            nice_match = this.lookahead;
        }
        do {
            int match = cur_match;
            if (this.window[match + best_len] == scan_end && this.window[(match + best_len) - 1] == scan_end1 && this.window[match] == this.window[scan]) {
                match += Z_ASCII;
                if (this.window[match] == this.window[scan + Z_ASCII]) {
                    scan += Z_UNKNOWN;
                    match += Z_ASCII;
                    do {
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                        scan += Z_ASCII;
                        match += Z_ASCII;
                        if (this.window[scan] != this.window[match]) {
                            break;
                        }
                    } while (scan < strend);
                    int len = 258 - (strend - scan);
                    scan = strend - 258;
                    if (len > best_len) {
                        this.match_start = cur_match;
                        best_len = len;
                        if (len >= nice_match) {
                            break;
                        }
                        scan_end1 = this.window[(scan + best_len) - 1];
                        scan_end = this.window[scan + best_len];
                    }
                }
            }
            cur_match = this.prev[cur_match & wmask] & 65535;
            if (cur_match <= limit) {
                break;
            }
            chain_length--;
        } while (chain_length != 0);
        return best_len <= this.lookahead ? best_len : this.lookahead;
    }

    int deflateInit(ZStream strm, int level, int bits, WrapperType wrapperType) {
        return deflateInit2(strm, level, 8, bits, 8, Z_BINARY, wrapperType);
    }

    private int deflateInit2(ZStream strm, int level, int method, int windowBits, int memLevel, int strategy, WrapperType wrapperType) {
        strm.msg = null;
        if (level == -1) {
            level = 6;
        }
        if (windowBits < 0) {
            throw new IllegalArgumentException("windowBits: " + windowBits);
        } else if (memLevel < Z_ASCII || memLevel > 9 || method != 8 || windowBits < 9 || windowBits > 15 || level < 0 || level > 9 || strategy < 0 || strategy > Z_UNKNOWN) {
            return -2;
        } else {
            strm.dstate = this;
            this.wrapperType = wrapperType;
            this.w_bits = windowBits;
            this.w_size = Z_ASCII << this.w_bits;
            this.w_mask = this.w_size - 1;
            this.hash_bits = memLevel + 7;
            this.hash_size = Z_ASCII << this.hash_bits;
            this.hash_mask = this.hash_size - 1;
            this.hash_shift = ((this.hash_bits + MIN_MATCH) - 1) / MIN_MATCH;
            this.window = new byte[(this.w_size * Z_UNKNOWN)];
            this.prev = new short[this.w_size];
            this.head = new short[this.hash_size];
            this.lit_bufsize = Z_ASCII << (memLevel + 6);
            this.pending_buf = new byte[(this.lit_bufsize * 4)];
            this.pending_buf_size = this.lit_bufsize * 4;
            this.d_buf = this.lit_bufsize / Z_UNKNOWN;
            this.l_buf = this.lit_bufsize * MIN_MATCH;
            this.level = level;
            this.strategy = strategy;
            return deflateReset(strm);
        }
    }

    private int deflateReset(ZStream strm) {
        strm.total_out = 0;
        strm.total_in = 0;
        strm.msg = null;
        this.pending = Z_BINARY;
        this.pending_out = Z_BINARY;
        this.wroteTrailer = false;
        this.status = this.wrapperType == WrapperType.NONE ? BUSY_STATE : INIT_STATE;
        strm.adler = Adler32.adler32(0, null, Z_BINARY, Z_BINARY);
        strm.crc32 = Z_BINARY;
        this.gzipUncompressedBytes = Z_BINARY;
        this.last_flush = Z_BINARY;
        tr_init();
        lm_init();
        return Z_BINARY;
    }

    int deflateEnd() {
        if (this.status != INIT_STATE && this.status != BUSY_STATE && this.status != FINISH_STATE) {
            return -2;
        }
        this.pending_buf = null;
        this.head = null;
        this.prev = null;
        this.window = null;
        return this.status == BUSY_STATE ? -3 : Z_BINARY;
    }

    int deflateParams(ZStream strm, int _level, int _strategy) {
        int err = Z_BINARY;
        if (_level == -1) {
            _level = 6;
        }
        if (_level < 0 || _level > 9 || _strategy < 0 || _strategy > Z_UNKNOWN) {
            return -2;
        }
        if (!(config_table[this.level].func == config_table[_level].func || strm.total_in == 0)) {
            err = strm.deflate(Z_ASCII);
        }
        if (this.level != _level) {
            this.level = _level;
            this.max_lazy_match = config_table[this.level].max_lazy;
            this.good_match = config_table[this.level].good_length;
            this.nice_match = config_table[this.level].nice_length;
            this.max_chain_length = config_table[this.level].max_chain;
        }
        this.strategy = _strategy;
        return err;
    }

    int deflateSetDictionary(ZStream strm, byte[] dictionary, int dictLength) {
        int length = dictLength;
        int index = Z_BINARY;
        if (dictionary == null || this.status != INIT_STATE) {
            return -2;
        }
        strm.adler = Adler32.adler32(strm.adler, dictionary, Z_BINARY, dictLength);
        if (length < MIN_MATCH) {
            return Z_BINARY;
        }
        if (length > this.w_size - 262) {
            length = this.w_size - 262;
            index = dictLength - length;
        }
        System.arraycopy(dictionary, index, this.window, Z_BINARY, length);
        this.strstart = length;
        this.block_start = length;
        this.ins_h = this.window[Z_BINARY] & 255;
        this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[Z_ASCII] & 255)) & this.hash_mask;
        for (int n = Z_BINARY; n <= length - 3; n += Z_ASCII) {
            this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(n + MIN_MATCH) - 1] & 255)) & this.hash_mask;
            this.prev[this.w_mask & n] = this.head[this.ins_h];
            this.head[this.ins_h] = (short) n;
        }
        return Z_BINARY;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    int deflate(org.jboss.netty.util.internal.jzlib.ZStream r12, int r13) {
        /*
        r11 = this;
        r6 = 4;
        if (r13 > r6) goto L_0x0005;
    L_0x0003:
        if (r13 >= 0) goto L_0x0007;
    L_0x0005:
        r6 = -2;
    L_0x0006:
        return r6;
    L_0x0007:
        r6 = r12.next_out;
        if (r6 == 0) goto L_0x001c;
    L_0x000b:
        r6 = r12.next_in;
        if (r6 != 0) goto L_0x0013;
    L_0x000f:
        r6 = r12.avail_in;
        if (r6 != 0) goto L_0x001c;
    L_0x0013:
        r6 = r11.status;
        r7 = 666; // 0x29a float:9.33E-43 double:3.29E-321;
        if (r6 != r7) goto L_0x0025;
    L_0x0019:
        r6 = 4;
        if (r13 == r6) goto L_0x0025;
    L_0x001c:
        r6 = z_errmsg;
        r7 = 4;
        r6 = r6[r7];
        r12.msg = r6;
        r6 = -2;
        goto L_0x0006;
    L_0x0025:
        r6 = r12.avail_out;
        if (r6 != 0) goto L_0x0032;
    L_0x0029:
        r6 = z_errmsg;
        r7 = 7;
        r6 = r6[r7];
        r12.msg = r6;
        r6 = -5;
        goto L_0x0006;
    L_0x0032:
        r11.strm = r12;
        r4 = r11.last_flush;
        r11.last_flush = r13;
        r6 = r11.status;
        r7 = 42;
        if (r6 != r7) goto L_0x004f;
    L_0x003e:
        r6 = org.jboss.netty.util.internal.jzlib.Deflate.AnonymousClass1.$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType;
        r7 = r11.wrapperType;
        r7 = r7.ordinal();
        r6 = r6[r7];
        switch(r6) {
            case 1: goto L_0x005f;
            case 2: goto L_0x00a9;
            default: goto L_0x004b;
        };
    L_0x004b:
        r6 = 113; // 0x71 float:1.58E-43 double:5.6E-322;
        r11.status = r6;
    L_0x004f:
        r6 = r11.pending;
        if (r6 == 0) goto L_0x00ee;
    L_0x0053:
        r12.flush_pending();
        r6 = r12.avail_out;
        if (r6 != 0) goto L_0x0101;
    L_0x005a:
        r6 = -1;
        r11.last_flush = r6;
        r6 = 0;
        goto L_0x0006;
    L_0x005f:
        r6 = r11.w_bits;
        r6 = r6 + -8;
        r6 = r6 << 4;
        r6 = r6 + 8;
        r1 = r6 << 8;
        r6 = r11.level;
        r6 = r6 + -1;
        r6 = r6 & 255;
        r3 = r6 >> 1;
        r6 = 3;
        if (r3 <= r6) goto L_0x0075;
    L_0x0074:
        r3 = 3;
    L_0x0075:
        r6 = r3 << 6;
        r1 = r1 | r6;
        r6 = r11.strstart;
        if (r6 == 0) goto L_0x007e;
    L_0x007c:
        r1 = r1 | 32;
    L_0x007e:
        r6 = r1 % 31;
        r6 = 31 - r6;
        r1 = r1 + r6;
        r11.putShortMSB(r1);
        r6 = r11.strstart;
        if (r6 == 0) goto L_0x009d;
    L_0x008a:
        r6 = r12.adler;
        r8 = 16;
        r6 = r6 >>> r8;
        r6 = (int) r6;
        r11.putShortMSB(r6);
        r6 = r12.adler;
        r8 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r6 = r6 & r8;
        r6 = (int) r6;
        r11.putShortMSB(r6);
    L_0x009d:
        r6 = 0;
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r6 = org.jboss.netty.util.internal.jzlib.Adler32.adler32(r6, r8, r9, r10);
        r12.adler = r6;
        goto L_0x004b;
    L_0x00a9:
        r6 = 31;
        r11.put_byte(r6);
        r6 = -117; // 0xffffffffffffff8b float:NaN double:NaN;
        r11.put_byte(r6);
        r6 = 8;
        r11.put_byte(r6);
        r6 = 0;
        r11.put_byte(r6);
        r6 = 0;
        r11.put_byte(r6);
        r6 = 0;
        r11.put_byte(r6);
        r6 = 0;
        r11.put_byte(r6);
        r6 = 0;
        r11.put_byte(r6);
        r6 = config_table;
        r7 = r11.level;
        r6 = r6[r7];
        r6 = r6.func;
        switch(r6) {
            case 1: goto L_0x00e4;
            case 2: goto L_0x00e9;
            default: goto L_0x00d7;
        };
    L_0x00d7:
        r6 = 0;
        r11.put_byte(r6);
    L_0x00db:
        r6 = -1;
        r11.put_byte(r6);
        r6 = 0;
        r12.crc32 = r6;
        goto L_0x004b;
    L_0x00e4:
        r6 = 4;
        r11.put_byte(r6);
        goto L_0x00db;
    L_0x00e9:
        r6 = 2;
        r11.put_byte(r6);
        goto L_0x00db;
    L_0x00ee:
        r6 = r12.avail_in;
        if (r6 != 0) goto L_0x0101;
    L_0x00f2:
        if (r13 > r4) goto L_0x0101;
    L_0x00f4:
        r6 = 4;
        if (r13 == r6) goto L_0x0101;
    L_0x00f7:
        r6 = z_errmsg;
        r7 = 7;
        r6 = r6[r7];
        r12.msg = r6;
        r6 = -5;
        goto L_0x0006;
    L_0x0101:
        r6 = r11.status;
        r7 = 666; // 0x29a float:9.33E-43 double:3.29E-321;
        if (r6 != r7) goto L_0x0115;
    L_0x0107:
        r6 = r12.avail_in;
        if (r6 == 0) goto L_0x0115;
    L_0x010b:
        r6 = z_errmsg;
        r7 = 7;
        r6 = r6[r7];
        r12.msg = r6;
        r6 = -5;
        goto L_0x0006;
    L_0x0115:
        r5 = r12.next_in_index;
        r6 = r12.avail_in;	 Catch:{ all -> 0x01a5 }
        if (r6 != 0) goto L_0x0127;
    L_0x011b:
        r6 = r11.lookahead;	 Catch:{ all -> 0x01a5 }
        if (r6 != 0) goto L_0x0127;
    L_0x011f:
        if (r13 == 0) goto L_0x0197;
    L_0x0121:
        r6 = r11.status;	 Catch:{ all -> 0x01a5 }
        r7 = 666; // 0x29a float:9.33E-43 double:3.29E-321;
        if (r6 == r7) goto L_0x0197;
    L_0x0127:
        r0 = -1;
        r6 = config_table;	 Catch:{ all -> 0x01a5 }
        r7 = r11.level;	 Catch:{ all -> 0x01a5 }
        r6 = r6[r7];	 Catch:{ all -> 0x01a5 }
        r6 = r6.func;	 Catch:{ all -> 0x01a5 }
        switch(r6) {
            case 0: goto L_0x0154;
            case 1: goto L_0x0159;
            case 2: goto L_0x015e;
            default: goto L_0x0133;
        };	 Catch:{ all -> 0x01a5 }
    L_0x0133:
        r6 = 2;
        if (r0 == r6) goto L_0x0139;
    L_0x0136:
        r6 = 3;
        if (r0 != r6) goto L_0x013d;
    L_0x0139:
        r6 = 666; // 0x29a float:9.33E-43 double:3.29E-321;
        r11.status = r6;	 Catch:{ all -> 0x01a5 }
    L_0x013d:
        if (r0 == 0) goto L_0x0142;
    L_0x013f:
        r6 = 2;
        if (r0 != r6) goto L_0x0163;
    L_0x0142:
        r6 = r12.avail_out;	 Catch:{ all -> 0x01a5 }
        if (r6 != 0) goto L_0x0149;
    L_0x0146:
        r6 = -1;
        r11.last_flush = r6;	 Catch:{ all -> 0x01a5 }
    L_0x0149:
        r6 = 0;
        r7 = r11.gzipUncompressedBytes;
        r8 = r12.next_in_index;
        r8 = r8 - r5;
        r7 = r7 + r8;
        r11.gzipUncompressedBytes = r7;
        goto L_0x0006;
    L_0x0154:
        r0 = r11.deflate_stored(r13);	 Catch:{ all -> 0x01a5 }
        goto L_0x0133;
    L_0x0159:
        r0 = r11.deflate_fast(r13);	 Catch:{ all -> 0x01a5 }
        goto L_0x0133;
    L_0x015e:
        r0 = r11.deflate_slow(r13);	 Catch:{ all -> 0x01a5 }
        goto L_0x0133;
    L_0x0163:
        r6 = 1;
        if (r0 != r6) goto L_0x0197;
    L_0x0166:
        r6 = 1;
        if (r13 != r6) goto L_0x0181;
    L_0x0169:
        r11._tr_align();	 Catch:{ all -> 0x01a5 }
    L_0x016c:
        r12.flush_pending();	 Catch:{ all -> 0x01a5 }
        r6 = r12.avail_out;	 Catch:{ all -> 0x01a5 }
        if (r6 != 0) goto L_0x0197;
    L_0x0173:
        r6 = -1;
        r11.last_flush = r6;	 Catch:{ all -> 0x01a5 }
        r6 = 0;
        r7 = r11.gzipUncompressedBytes;
        r8 = r12.next_in_index;
        r8 = r8 - r5;
        r7 = r7 + r8;
        r11.gzipUncompressedBytes = r7;
        goto L_0x0006;
    L_0x0181:
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r11._tr_stored_block(r6, r7, r8);	 Catch:{ all -> 0x01a5 }
        r6 = 3;
        if (r13 != r6) goto L_0x016c;
    L_0x018a:
        r2 = 0;
    L_0x018b:
        r6 = r11.hash_size;	 Catch:{ all -> 0x01a5 }
        if (r2 >= r6) goto L_0x016c;
    L_0x018f:
        r6 = r11.head;	 Catch:{ all -> 0x01a5 }
        r7 = 0;
        r6[r2] = r7;	 Catch:{ all -> 0x01a5 }
        r2 = r2 + 1;
        goto L_0x018b;
    L_0x0197:
        r6 = r11.gzipUncompressedBytes;
        r7 = r12.next_in_index;
        r7 = r7 - r5;
        r6 = r6 + r7;
        r11.gzipUncompressedBytes = r6;
        r6 = 4;
        if (r13 == r6) goto L_0x01af;
    L_0x01a2:
        r6 = 0;
        goto L_0x0006;
    L_0x01a5:
        r6 = move-exception;
        r7 = r11.gzipUncompressedBytes;
        r8 = r12.next_in_index;
        r8 = r8 - r5;
        r7 = r7 + r8;
        r11.gzipUncompressedBytes = r7;
        throw r6;
    L_0x01af:
        r6 = r11.wrapperType;
        r7 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.NONE;
        if (r6 == r7) goto L_0x01b9;
    L_0x01b5:
        r6 = r11.wroteTrailer;
        if (r6 == 0) goto L_0x01bc;
    L_0x01b9:
        r6 = 1;
        goto L_0x0006;
    L_0x01bc:
        r6 = org.jboss.netty.util.internal.jzlib.Deflate.AnonymousClass1.$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType;
        r7 = r11.wrapperType;
        r7 = r7.ordinal();
        r6 = r6[r7];
        switch(r6) {
            case 1: goto L_0x01d6;
            case 2: goto L_0x01ea;
            default: goto L_0x01c9;
        };
    L_0x01c9:
        r12.flush_pending();
        r6 = 1;
        r11.wroteTrailer = r6;
        r6 = r11.pending;
        if (r6 == 0) goto L_0x0237;
    L_0x01d3:
        r6 = 0;
        goto L_0x0006;
    L_0x01d6:
        r6 = r12.adler;
        r8 = 16;
        r6 = r6 >>> r8;
        r6 = (int) r6;
        r11.putShortMSB(r6);
        r6 = r12.adler;
        r8 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r6 = r6 & r8;
        r6 = (int) r6;
        r11.putShortMSB(r6);
        goto L_0x01c9;
    L_0x01ea:
        r6 = r12.crc32;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r12.crc32;
        r6 = r6 >>> 8;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r12.crc32;
        r6 = r6 >>> 16;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r12.crc32;
        r6 = r6 >>> 24;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r11.gzipUncompressedBytes;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r11.gzipUncompressedBytes;
        r6 = r6 >>> 8;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r11.gzipUncompressedBytes;
        r6 = r6 >>> 16;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        r6 = r11.gzipUncompressedBytes;
        r6 = r6 >>> 24;
        r6 = r6 & 255;
        r6 = (byte) r6;
        r11.put_byte(r6);
        goto L_0x01c9;
    L_0x0237:
        r6 = 1;
        goto L_0x0006;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.Deflate.deflate(org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }
}
