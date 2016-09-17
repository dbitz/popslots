package org.jboss.netty.util.internal.jzlib;

import com.helpshift.network.HttpStatus;
import com.playstudios.popslots.R;
import org.jdom.filter.ContentFilter;
import sfs2x.client.requests.BaseRequest;

final class InfTree {
    static final int BMAX = 15;
    static final int[] cpdext = new int[]{0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, fixed_bd, fixed_bd, 6, 6, 7, 7, 8, 8, fixed_bl, fixed_bl, 10, 10, 11, 11, 12, 12, 13, 13};
    static final int[] cpdist = new int[]{1, 2, 3, 4, fixed_bd, 7, fixed_bl, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513, 769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577};
    static final int[] cplens = new int[]{3, 4, fixed_bd, 6, 7, 8, fixed_bl, 10, 11, 13, BMAX, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258, 0, 0};
    static final int[] cplext = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, fixed_bd, fixed_bd, fixed_bd, fixed_bd, 0, 112, 112};
    static final int fixed_bd = 5;
    static final int fixed_bl = 9;
    static final int[] fixed_td = new int[]{80, fixed_bd, 1, 87, fixed_bd, 257, 83, fixed_bd, 17, 91, fixed_bd, 4097, 81, fixed_bd, fixed_bd, 89, fixed_bd, 1025, 85, fixed_bd, 65, 93, fixed_bd, 16385, 80, fixed_bd, 3, 88, fixed_bd, 513, 84, fixed_bd, 33, 92, fixed_bd, 8193, 82, fixed_bd, fixed_bl, 90, fixed_bd, 2049, 86, fixed_bd, 129, 192, fixed_bd, 24577, 80, fixed_bd, 2, 87, fixed_bd, 385, 83, fixed_bd, 25, 91, fixed_bd, 6145, 81, fixed_bd, 7, 89, fixed_bd, 1537, 85, fixed_bd, 97, 93, fixed_bd, 24577, 80, fixed_bd, 4, 88, fixed_bd, 769, 84, fixed_bd, 49, 92, fixed_bd, 12289, 82, fixed_bd, 13, 90, fixed_bd, 3073, 86, fixed_bd, 193, 192, fixed_bd, 24577};
    static final int[] fixed_tl = new int[]{96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, fixed_bl, 192, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, fixed_bl, 160, 0, 8, 0, 0, 8, ContentFilter.DOCTYPE, 0, 8, 64, 0, fixed_bl, 224, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, fixed_bl, 144, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, fixed_bl, 208, 81, 7, 17, 0, 8, R.styleable.Theme_editTextStyle, 0, 8, 40, 0, fixed_bl, 176, 0, 8, 8, 0, 8, 136, 0, 8, 72, 0, fixed_bl, 240, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, 116, 0, 8, 52, 0, fixed_bl, BaseRequest.InitBuddyList, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, fixed_bl, 168, 0, 8, 4, 0, 8, 132, 0, 8, 68, 0, fixed_bl, 232, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, fixed_bl, 152, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, fixed_bl, 216, 82, 7, 23, 0, 8, R.styleable.Theme_spinnerStyle, 0, 8, 44, 0, fixed_bl, 184, 0, 8, 12, 0, 8, 140, 0, 8, 76, 0, fixed_bl, 248, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, 163, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, fixed_bl, 196, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, fixed_bl, 164, 0, 8, 2, 0, 8, 130, 0, 8, 66, 0, fixed_bl, 228, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, fixed_bl, 148, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, fixed_bl, 212, 82, 7, 19, 0, 8, R.styleable.Theme_ratingBarStyle, 0, 8, 42, 0, fixed_bl, 180, 0, 8, 10, 0, 8, 138, 0, 8, 74, 0, fixed_bl, 244, 80, 7, fixed_bd, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, fixed_bl, BaseRequest.SetBuddyVariables, 81, 7, BMAX, 0, 8, R.styleable.Theme_checkboxStyle, 0, 8, 38, 0, fixed_bl, 172, 0, 8, 6, 0, 8, 134, 0, 8, 70, 0, fixed_bl, 236, 80, 7, fixed_bl, 0, 8, 94, 0, 8, 30, 0, fixed_bl, 156, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, fixed_bl, 220, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, fixed_bl, 188, 0, 8, 14, 0, 8, 142, 0, 8, 78, 0, fixed_bl, 252, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, 131, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, fixed_bl, 194, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, fixed_bl, 162, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, fixed_bl, 226, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, fixed_bl, 146, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, fixed_bl, 210, 81, 7, 17, 0, 8, R.styleable.Theme_radioButtonStyle, 0, 8, 41, 0, fixed_bl, 178, 0, 8, fixed_bl, 0, 8, 137, 0, 8, 73, 0, fixed_bl, 242, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, 117, 0, 8, 53, 0, fixed_bl, BaseRequest.BlockBuddy, 81, 7, 13, 0, 8, R.styleable.Theme_buttonStyleSmall, 0, 8, 37, 0, fixed_bl, 170, 0, 8, fixed_bd, 0, 8, 133, 0, 8, 69, 0, fixed_bl, 234, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, fixed_bl, 154, 84, 7, 83, 0, 8, 125, 0, 8, 61, 0, fixed_bl, 218, 82, 7, 23, 0, 8, R.styleable.Theme_switchStyle, 0, 8, 45, 0, fixed_bl, 186, 0, 8, 13, 0, 8, 141, 0, 8, 77, 0, fixed_bl, 250, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, 195, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, fixed_bl, 198, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, fixed_bl, 166, 0, 8, 3, 0, 8, 131, 0, 8, 67, 0, fixed_bl, 230, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, fixed_bl, 150, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, fixed_bl, 214, 82, 7, 19, 0, 8, R.styleable.Theme_seekBarStyle, 0, 8, 43, 0, fixed_bl, 182, 0, 8, 11, 0, 8, 139, 0, 8, 75, 0, fixed_bl, 246, 80, 7, fixed_bd, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, fixed_bl, HttpStatus.SC_PARTIAL_CONTENT, 81, 7, BMAX, 0, 8, R.styleable.Theme_checkedTextViewStyle, 0, 8, 39, 0, fixed_bl, 174, 0, 8, 7, 0, 8, 135, 0, 8, 71, 0, fixed_bl, 238, 80, 7, fixed_bl, 0, 8, 95, 0, 8, 31, 0, fixed_bl, 158, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, fixed_bl, 222, 82, 7, 27, 0, 8, 111, 0, 8, 47, 0, fixed_bl, 190, 0, 8, BMAX, 0, 8, 143, 0, 8, 79, 0, fixed_bl, 254, 96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, fixed_bl, 193, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, fixed_bl, 161, 0, 8, 0, 0, 8, ContentFilter.DOCTYPE, 0, 8, 64, 0, fixed_bl, 225, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, fixed_bl, 145, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, fixed_bl, 209, 81, 7, 17, 0, 8, R.styleable.Theme_editTextStyle, 0, 8, 40, 0, fixed_bl, 177, 0, 8, 8, 0, 8, 136, 0, 8, 72, 0, fixed_bl, 241, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, 116, 0, 8, 52, 0, fixed_bl, BaseRequest.AddBuddy, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, fixed_bl, 169, 0, 8, 4, 0, 8, 132, 0, 8, 68, 0, fixed_bl, 233, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, fixed_bl, 153, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, fixed_bl, 217, 82, 7, 23, 0, 8, R.styleable.Theme_spinnerStyle, 0, 8, 44, 0, fixed_bl, 185, 0, 8, 12, 0, 8, 140, 0, 8, 76, 0, fixed_bl, 249, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, 163, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, fixed_bl, 197, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, fixed_bl, 165, 0, 8, 2, 0, 8, 130, 0, 8, 66, 0, fixed_bl, 229, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, fixed_bl, 149, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, fixed_bl, 213, 82, 7, 19, 0, 8, R.styleable.Theme_ratingBarStyle, 0, 8, 42, 0, fixed_bl, 181, 0, 8, 10, 0, 8, 138, 0, 8, 74, 0, fixed_bl, 245, 80, 7, fixed_bd, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, fixed_bl, BaseRequest.GoOnline, 81, 7, BMAX, 0, 8, R.styleable.Theme_checkboxStyle, 0, 8, 38, 0, fixed_bl, 173, 0, 8, 6, 0, 8, 134, 0, 8, 70, 0, fixed_bl, 237, 80, 7, fixed_bl, 0, 8, 94, 0, 8, 30, 0, fixed_bl, 157, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, fixed_bl, 221, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, fixed_bl, 189, 0, 8, 14, 0, 8, 142, 0, 8, 78, 0, fixed_bl, 253, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, 131, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, fixed_bl, 195, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, fixed_bl, 163, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, fixed_bl, 227, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, fixed_bl, 147, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, fixed_bl, 211, 81, 7, 17, 0, 8, R.styleable.Theme_radioButtonStyle, 0, 8, 41, 0, fixed_bl, 179, 0, 8, fixed_bl, 0, 8, 137, 0, 8, 73, 0, fixed_bl, 243, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, 117, 0, 8, 53, 0, fixed_bl, BaseRequest.RemoveBuddy, 81, 7, 13, 0, 8, R.styleable.Theme_buttonStyleSmall, 0, 8, 37, 0, fixed_bl, 171, 0, 8, fixed_bd, 0, 8, 133, 0, 8, 69, 0, fixed_bl, 235, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, fixed_bl, 155, 84, 7, 83, 0, 8, 125, 0, 8, 61, 0, fixed_bl, 219, 82, 7, 23, 0, 8, R.styleable.Theme_switchStyle, 0, 8, 45, 0, fixed_bl, 187, 0, 8, 13, 0, 8, 141, 0, 8, 77, 0, fixed_bl, 251, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, 195, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, fixed_bl, 199, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, fixed_bl, 167, 0, 8, 3, 0, 8, 131, 0, 8, 67, 0, fixed_bl, 231, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, fixed_bl, 151, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, fixed_bl, 215, 82, 7, 19, 0, 8, R.styleable.Theme_seekBarStyle, 0, 8, 43, 0, fixed_bl, 183, 0, 8, 11, 0, 8, 139, 0, 8, 75, 0, fixed_bl, 247, 80, 7, fixed_bd, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, fixed_bl, HttpStatus.SC_MULTI_STATUS, 81, 7, BMAX, 0, 8, R.styleable.Theme_checkedTextViewStyle, 0, 8, 39, 0, fixed_bl, 175, 0, 8, 7, 0, 8, 135, 0, 8, 71, 0, fixed_bl, 239, 80, 7, fixed_bl, 0, 8, 95, 0, 8, 31, 0, fixed_bl, 159, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, fixed_bl, 223, 82, 7, 27, 0, 8, 111, 0, 8, 47, 0, fixed_bl, 191, 0, 8, BMAX, 0, 8, 143, 0, 8, 79, 0, fixed_bl, 255};
    private int[] c;
    private int[] hn;
    private int[] r;
    private int[] u;
    private int[] v;
    private int[] x;

    InfTree() {
    }

    private int huft_build(int[] b, int bindex, int n, int s, int[] d, int[] e, int[] t, int[] m, int[] hp, int[] hn, int[] v) {
        int p = 0;
        int i = n;
        do {
            int[] iArr = this.c;
            int i2 = b[bindex + p];
            iArr[i2] = iArr[i2] + 1;
            p++;
            i--;
        } while (i != 0);
        if (this.c[0] == n) {
            t[0] = -1;
            m[0] = 0;
            return 0;
        }
        int l = m[0];
        int j = 1;
        while (j <= BMAX && this.c[j] == 0) {
            j++;
        }
        int k = j;
        if (l < j) {
            l = j;
        }
        i = BMAX;
        while (i != 0 && this.c[i] == 0) {
            i--;
        }
        int g = i;
        if (l > i) {
            l = i;
        }
        m[0] = l;
        int y = 1 << j;
        while (j < i) {
            y -= this.c[j];
            if (y < 0) {
                return -3;
            }
            j++;
            y <<= 1;
        }
        y -= this.c[i];
        if (y < 0) {
            return -3;
        }
        iArr = this.c;
        iArr[i] = iArr[i] + y;
        j = 0;
        this.x[1] = 0;
        p = 1;
        int xp = 2;
        while (true) {
            i--;
            if (i == 0) {
                break;
            }
            j += this.c[p];
            this.x[xp] = j;
            xp++;
            p++;
        }
        i = 0;
        p = 0;
        do {
            j = b[bindex + p];
            if (j != 0) {
                iArr = this.x;
                i2 = iArr[j];
                iArr[j] = i2 + 1;
                v[i2] = i;
            }
            p++;
            i++;
        } while (i < n);
        n = this.x[g];
        i = 0;
        this.x[0] = 0;
        p = 0;
        int h = -1;
        int w = -l;
        this.u[0] = 0;
        int q = 0;
        int z = 0;
        while (k <= g) {
            int p2 = p;
            int a = this.c[k];
            while (true) {
                int a2 = a - 1;
                if (a == 0) {
                    break;
                }
                int f;
                while (k > w + l) {
                    h++;
                    w += l;
                    z = g - w;
                    if (z > l) {
                        z = l;
                    }
                    j = k - w;
                    f = 1 << j;
                    if (f > a2 + 1) {
                        f -= a2 + 1;
                        xp = k;
                        if (j < z) {
                            while (true) {
                                j++;
                                if (j >= z) {
                                    break;
                                }
                                f <<= 1;
                                xp++;
                                if (f <= this.c[xp]) {
                                    break;
                                }
                                f -= this.c[xp];
                            }
                        }
                    }
                    z = 1 << j;
                    if (hn[0] + z > 1440) {
                        p = p2;
                        return -3;
                    }
                    iArr = this.u;
                    q = hn[0];
                    iArr[h] = q;
                    hn[0] = hn[0] + z;
                    if (h != 0) {
                        this.x[h] = i;
                        this.r[0] = (byte) j;
                        this.r[1] = (byte) l;
                        j = i >>> (w - l);
                        this.r[2] = (q - this.u[h - 1]) - j;
                        System.arraycopy(this.r, 0, hp, (this.u[h - 1] + j) * 3, 3);
                    } else {
                        t[0] = q;
                    }
                }
                this.r[1] = (byte) (k - w);
                if (p2 >= n) {
                    this.r[0] = 192;
                    p = p2;
                } else if (v[p2] < s) {
                    this.r[0] = (byte) (v[p2] < 256 ? 0 : 96);
                    p = p2 + 1;
                    this.r[2] = v[p2];
                } else {
                    this.r[0] = (byte) ((e[v[p2] - s] + 16) + 64);
                    p = p2 + 1;
                    this.r[2] = d[v[p2] - s];
                }
                f = 1 << (k - w);
                for (j = i >>> w; j < z; j += f) {
                    System.arraycopy(this.r, 0, hp, (q + j) * 3, 3);
                }
                j = 1 << (k - 1);
                while ((i & j) != 0) {
                    i ^= j;
                    j >>>= 1;
                }
                i ^= j;
                int mask = (1 << w) - 1;
                while ((i & mask) != this.x[h]) {
                    h--;
                    w -= l;
                    mask = (1 << w) - 1;
                }
                p2 = p;
                a = a2;
            }
            k++;
            p = p2;
        }
        return (y == 0 || g == 1) ? 0 : -5;
    }

    int inflate_trees_bits(int[] c, int[] bb, int[] tb, int[] hp, ZStream z) {
        initWorkArea(19);
        this.hn[0] = 0;
        int result = huft_build(c, 0, 19, 19, null, null, tb, bb, hp, this.hn, this.v);
        if (result == -3) {
            z.msg = "oversubscribed dynamic bit lengths tree";
            return result;
        } else if (result != -5 && bb[0] != 0) {
            return result;
        } else {
            z.msg = "incomplete dynamic bit lengths tree";
            return -3;
        }
    }

    int inflate_trees_dynamic(int nl, int nd, int[] c, int[] bl, int[] bd, int[] tl, int[] td, int[] hp, ZStream z) {
        initWorkArea(288);
        this.hn[0] = 0;
        int result = huft_build(c, 0, nl, 257, cplens, cplext, tl, bl, hp, this.hn, this.v);
        if (result != 0 || bl[0] == 0) {
            if (result == -3) {
                z.msg = "oversubscribed literal/length tree";
            } else if (result != -4) {
                z.msg = "incomplete literal/length tree";
                result = -3;
            }
            return result;
        }
        initWorkArea(288);
        result = huft_build(c, nl, nd, 0, cpdist, cpdext, td, bd, hp, this.hn, this.v);
        if (result == 0 && (bd[0] != 0 || nl <= 257)) {
            return 0;
        }
        if (result == -3) {
            z.msg = "oversubscribed distance tree";
        } else if (result == -5) {
            z.msg = "incomplete distance tree";
            result = -3;
        } else if (result != -4) {
            z.msg = "empty distance tree with lengths";
            result = -3;
        }
        return result;
    }

    static int inflate_trees_fixed(int[] bl, int[] bd, int[][] tl, int[][] td) {
        bl[0] = fixed_bl;
        bd[0] = fixed_bd;
        tl[0] = fixed_tl;
        td[0] = fixed_td;
        return 0;
    }

    private void initWorkArea(int vsize) {
        if (this.hn == null) {
            this.hn = new int[1];
            this.v = new int[vsize];
            this.c = new int[16];
            this.r = new int[3];
            this.u = new int[BMAX];
            this.x = new int[16];
            return;
        }
        int i;
        if (this.v.length < vsize) {
            this.v = new int[vsize];
        } else {
            for (i = 0; i < vsize; i++) {
                this.v[i] = 0;
            }
        }
        for (i = 0; i < 16; i++) {
            this.c[i] = 0;
        }
        for (i = 0; i < 3; i++) {
            this.r[i] = 0;
        }
        System.arraycopy(this.c, 0, this.u, 0, BMAX);
        System.arraycopy(this.c, 0, this.x, 0, 16);
    }
}
