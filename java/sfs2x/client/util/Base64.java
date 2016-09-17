package sfs2x.client.util;

import com.helpshift.network.HttpStatus;
import com.playstudios.popslots.R;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.jdom.filter.ContentFilter;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;

public class Base64 {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = (byte) 61;
    private static final byte EQUALS_SIGN_ENC = (byte) -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = (byte) 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte WHITE_SPACE_ENC = (byte) -5;
    private static final byte[] _ORDERED_ALPHABET = new byte[]{(byte) 45, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 95, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122};
    private static final byte[] _ORDERED_DECODABET;
    private static final byte[] _STANDARD_ALPHABET = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
    private static final byte[] _STANDARD_DECODABET;
    private static final byte[] _URL_SAFE_ALPHABET = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 45, (byte) 95};
    private static final byte[] _URL_SAFE_DECODABET;

    class AnonymousClass1 extends ObjectInputStream {
        private final /* synthetic */ ClassLoader val$loader;

        AnonymousClass1(java.io.InputStream $anonymous0, ClassLoader classLoader) throws IOException {
            this.val$loader = classLoader;
            super($anonymous0);
        }

        public Class<?> resolveClass(ObjectStreamClass streamClass) throws IOException, ClassNotFoundException {
            Class c = Class.forName(streamClass.getName(), Base64.$assertionsDisabled, this.val$loader);
            if (c == null) {
                return super.resolveClass(streamClass);
            }
            return c;
        }
    }

    public static class InputStream extends FilterInputStream {
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream in) {
            this(in, Base64.NO_OPTIONS);
        }

        public InputStream(java.io.InputStream in, int options) {
            boolean z = true;
            super(in);
            this.options = options;
            this.breakLines = (options & Base64.DO_BREAK_LINES) > 0 ? true : Base64.$assertionsDisabled;
            if ((options & Base64.ENCODE) <= 0) {
                z = Base64.$assertionsDisabled;
            }
            this.encode = z;
            this.bufferLength = this.encode ? Base64.DONT_GUNZIP : 3;
            this.buffer = new byte[this.bufferLength];
            this.position = -1;
            this.lineLength = Base64.NO_OPTIONS;
            this.decodabet = Base64.getDecodabet(options);
        }

        public int read() throws IOException {
            int b;
            if (this.position < 0) {
                int i;
                if (this.encode) {
                    byte[] b3 = new byte[3];
                    int numBinaryBytes = Base64.NO_OPTIONS;
                    for (i = Base64.NO_OPTIONS; i < 3; i += Base64.ENCODE) {
                        b = this.in.read();
                        if (b < 0) {
                            break;
                        }
                        b3[i] = (byte) b;
                        numBinaryBytes += Base64.ENCODE;
                    }
                    if (numBinaryBytes <= 0) {
                        return -1;
                    }
                    Base64.encode3to4(b3, Base64.NO_OPTIONS, numBinaryBytes, this.buffer, Base64.NO_OPTIONS, this.options);
                    this.position = Base64.NO_OPTIONS;
                    this.numSigBytes = Base64.DONT_GUNZIP;
                } else {
                    byte[] b4 = new byte[Base64.DONT_GUNZIP];
                    i = Base64.NO_OPTIONS;
                    while (i < Base64.DONT_GUNZIP) {
                        do {
                            b = this.in.read();
                            if (b < 0) {
                                break;
                            }
                        } while (this.decodabet[b & 127] <= Base64.WHITE_SPACE_ENC);
                        if (b < 0) {
                            break;
                        }
                        b4[i] = (byte) b;
                        i += Base64.ENCODE;
                    }
                    if (i == Base64.DONT_GUNZIP) {
                        this.numSigBytes = Base64.decode4to3(b4, Base64.NO_OPTIONS, this.buffer, Base64.NO_OPTIONS, this.options);
                        this.position = Base64.NO_OPTIONS;
                    } else if (i == 0) {
                        return -1;
                    } else {
                        throw new IOException("Improperly padded Base64 input.");
                    }
                }
            }
            if (this.position < 0) {
                throw new IOException("Error in Base64 code reading stream.");
            } else if (this.position >= this.numSigBytes) {
                return -1;
            } else {
                if (this.encode && this.breakLines && this.lineLength >= Base64.MAX_LINE_LENGTH) {
                    this.lineLength = Base64.NO_OPTIONS;
                    return 10;
                }
                this.lineLength += Base64.ENCODE;
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + Base64.ENCODE;
                b = bArr[i2];
                if (this.position >= this.bufferLength) {
                    this.position = -1;
                }
                return b & 255;
            }
        }

        public int read(byte[] dest, int off, int len) throws IOException {
            int i = Base64.NO_OPTIONS;
            while (i < len) {
                int b = read();
                if (b >= 0) {
                    dest[off + i] = (byte) b;
                    i += Base64.ENCODE;
                } else if (i == 0) {
                    return -1;
                } else {
                    return i;
                }
            }
            return i;
        }
    }

    public static class OutputStream extends FilterOutputStream {
        private byte[] b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream out) {
            this(out, Base64.ENCODE);
        }

        public OutputStream(java.io.OutputStream out, int options) {
            boolean z = true;
            super(out);
            this.breakLines = (options & Base64.DO_BREAK_LINES) != 0 ? true : Base64.$assertionsDisabled;
            if ((options & Base64.ENCODE) == 0) {
                z = Base64.$assertionsDisabled;
            }
            this.encode = z;
            this.bufferLength = this.encode ? 3 : Base64.DONT_GUNZIP;
            this.buffer = new byte[this.bufferLength];
            this.position = Base64.NO_OPTIONS;
            this.lineLength = Base64.NO_OPTIONS;
            this.suspendEncoding = Base64.$assertionsDisabled;
            this.b4 = new byte[Base64.DONT_GUNZIP];
            this.options = options;
            this.decodabet = Base64.getDecodabet(options);
        }

        public void write(int theByte) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(theByte);
            } else if (this.encode) {
                r1 = this.buffer;
                r2 = this.position;
                this.position = r2 + Base64.ENCODE;
                r1[r2] = (byte) theByte;
                if (this.position >= this.bufferLength) {
                    this.out.write(Base64.encode3to4(this.b4, this.buffer, this.bufferLength, this.options));
                    this.lineLength += Base64.DONT_GUNZIP;
                    if (this.breakLines && this.lineLength >= Base64.MAX_LINE_LENGTH) {
                        this.out.write(10);
                        this.lineLength = Base64.NO_OPTIONS;
                    }
                    this.position = Base64.NO_OPTIONS;
                }
            } else if (this.decodabet[theByte & 127] > Base64.WHITE_SPACE_ENC) {
                r1 = this.buffer;
                r2 = this.position;
                this.position = r2 + Base64.ENCODE;
                r1[r2] = (byte) theByte;
                if (this.position >= this.bufferLength) {
                    this.out.write(this.b4, Base64.NO_OPTIONS, Base64.decode4to3(this.buffer, Base64.NO_OPTIONS, this.b4, Base64.NO_OPTIONS, this.options));
                    this.position = Base64.NO_OPTIONS;
                }
            } else if (this.decodabet[theByte & 127] != Base64.WHITE_SPACE_ENC) {
                throw new IOException("Invalid character in Base64 data.");
            }
        }

        public void write(byte[] theBytes, int off, int len) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(theBytes, off, len);
                return;
            }
            for (int i = Base64.NO_OPTIONS; i < len; i += Base64.ENCODE) {
                write(theBytes[off + i]);
            }
        }

        public void flushBase64() throws IOException {
            if (this.position <= 0) {
                return;
            }
            if (this.encode) {
                this.out.write(Base64.encode3to4(this.b4, this.buffer, this.position, this.options));
                this.position = Base64.NO_OPTIONS;
                return;
            }
            throw new IOException("Base64 input not properly padded.");
        }

        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            this.out = null;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        public void resumeEncoding() {
            this.suspendEncoding = Base64.$assertionsDisabled;
        }
    }

    static {
        boolean z;
        if (Base64.class.desiredAssertionStatus()) {
            z = $assertionsDisabled;
        } else {
            z = true;
        }
        $assertionsDisabled = z;
        byte[] bArr = new byte[256];
        bArr[NO_OPTIONS] = (byte) -9;
        bArr[ENCODE] = (byte) -9;
        bArr[GZIP] = (byte) -9;
        bArr[3] = (byte) -9;
        bArr[DONT_GUNZIP] = (byte) -9;
        bArr[5] = (byte) -9;
        bArr[6] = (byte) -9;
        bArr[7] = (byte) -9;
        bArr[DO_BREAK_LINES] = (byte) -9;
        bArr[9] = WHITE_SPACE_ENC;
        bArr[10] = WHITE_SPACE_ENC;
        bArr[11] = (byte) -9;
        bArr[12] = (byte) -9;
        bArr[13] = WHITE_SPACE_ENC;
        bArr[14] = (byte) -9;
        bArr[15] = (byte) -9;
        bArr[URL_SAFE] = (byte) -9;
        bArr[17] = (byte) -9;
        bArr[18] = (byte) -9;
        bArr[19] = (byte) -9;
        bArr[20] = (byte) -9;
        bArr[21] = (byte) -9;
        bArr[22] = (byte) -9;
        bArr[23] = (byte) -9;
        bArr[24] = (byte) -9;
        bArr[25] = (byte) -9;
        bArr[26] = (byte) -9;
        bArr[27] = (byte) -9;
        bArr[28] = (byte) -9;
        bArr[29] = (byte) -9;
        bArr[30] = (byte) -9;
        bArr[31] = (byte) -9;
        bArr[ORDERED] = WHITE_SPACE_ENC;
        bArr[33] = (byte) -9;
        bArr[34] = (byte) -9;
        bArr[35] = (byte) -9;
        bArr[36] = (byte) -9;
        bArr[37] = (byte) -9;
        bArr[38] = (byte) -9;
        bArr[39] = (byte) -9;
        bArr[40] = (byte) -9;
        bArr[41] = (byte) -9;
        bArr[42] = (byte) -9;
        bArr[43] = (byte) 62;
        bArr[44] = (byte) -9;
        bArr[45] = (byte) -9;
        bArr[46] = (byte) -9;
        bArr[47] = (byte) 63;
        bArr[48] = (byte) 52;
        bArr[49] = (byte) 53;
        bArr[50] = (byte) 54;
        bArr[51] = (byte) 55;
        bArr[52] = (byte) 56;
        bArr[53] = (byte) 57;
        bArr[54] = (byte) 58;
        bArr[55] = (byte) 59;
        bArr[56] = (byte) 60;
        bArr[57] = EQUALS_SIGN;
        bArr[58] = (byte) -9;
        bArr[59] = (byte) -9;
        bArr[60] = (byte) -9;
        bArr[61] = EQUALS_SIGN_ENC;
        bArr[62] = (byte) -9;
        bArr[63] = (byte) -9;
        bArr[64] = (byte) -9;
        bArr[66] = (byte) 1;
        bArr[67] = (byte) 2;
        bArr[68] = (byte) 3;
        bArr[69] = (byte) 4;
        bArr[70] = (byte) 5;
        bArr[71] = (byte) 6;
        bArr[72] = (byte) 7;
        bArr[73] = (byte) 8;
        bArr[74] = (byte) 9;
        bArr[75] = NEW_LINE;
        bArr[MAX_LINE_LENGTH] = (byte) 11;
        bArr[77] = (byte) 12;
        bArr[78] = (byte) 13;
        bArr[79] = (byte) 14;
        bArr[80] = (byte) 15;
        bArr[81] = (byte) 16;
        bArr[82] = (byte) 17;
        bArr[83] = (byte) 18;
        bArr[84] = (byte) 19;
        bArr[85] = (byte) 20;
        bArr[86] = (byte) 21;
        bArr[87] = (byte) 22;
        bArr[88] = (byte) 23;
        bArr[89] = (byte) 24;
        bArr[90] = (byte) 25;
        bArr[91] = (byte) -9;
        bArr[92] = (byte) -9;
        bArr[93] = (byte) -9;
        bArr[94] = (byte) -9;
        bArr[95] = (byte) -9;
        bArr[96] = (byte) -9;
        bArr[97] = (byte) 26;
        bArr[98] = (byte) 27;
        bArr[99] = (byte) 28;
        bArr[100] = (byte) 29;
        bArr[R.styleable.Theme_buttonStyleSmall] = (byte) 30;
        bArr[R.styleable.Theme_checkboxStyle] = (byte) 31;
        bArr[R.styleable.Theme_checkedTextViewStyle] = (byte) 32;
        bArr[R.styleable.Theme_editTextStyle] = (byte) 33;
        bArr[R.styleable.Theme_radioButtonStyle] = (byte) 34;
        bArr[R.styleable.Theme_ratingBarStyle] = (byte) 35;
        bArr[R.styleable.Theme_seekBarStyle] = (byte) 36;
        bArr[R.styleable.Theme_spinnerStyle] = (byte) 37;
        bArr[R.styleable.Theme_switchStyle] = (byte) 38;
        bArr[110] = (byte) 39;
        bArr[111] = (byte) 40;
        bArr[112] = (byte) 41;
        bArr[113] = (byte) 42;
        bArr[114] = (byte) 43;
        bArr[115] = (byte) 44;
        bArr[116] = (byte) 45;
        bArr[117] = (byte) 46;
        bArr[118] = (byte) 47;
        bArr[119] = (byte) 48;
        bArr[120] = (byte) 49;
        bArr[121] = (byte) 50;
        bArr[122] = (byte) 51;
        bArr[123] = (byte) -9;
        bArr[124] = (byte) -9;
        bArr[125] = (byte) -9;
        bArr[126] = (byte) -9;
        bArr[127] = (byte) -9;
        bArr[ContentFilter.DOCTYPE] = (byte) -9;
        bArr[129] = (byte) -9;
        bArr[130] = (byte) -9;
        bArr[131] = (byte) -9;
        bArr[132] = (byte) -9;
        bArr[133] = (byte) -9;
        bArr[134] = (byte) -9;
        bArr[135] = (byte) -9;
        bArr[136] = (byte) -9;
        bArr[137] = (byte) -9;
        bArr[138] = (byte) -9;
        bArr[139] = (byte) -9;
        bArr[140] = (byte) -9;
        bArr[141] = (byte) -9;
        bArr[142] = (byte) -9;
        bArr[143] = (byte) -9;
        bArr[144] = (byte) -9;
        bArr[145] = (byte) -9;
        bArr[146] = (byte) -9;
        bArr[147] = (byte) -9;
        bArr[148] = (byte) -9;
        bArr[149] = (byte) -9;
        bArr[150] = (byte) -9;
        bArr[151] = (byte) -9;
        bArr[152] = (byte) -9;
        bArr[153] = (byte) -9;
        bArr[154] = (byte) -9;
        bArr[155] = (byte) -9;
        bArr[156] = (byte) -9;
        bArr[157] = (byte) -9;
        bArr[158] = (byte) -9;
        bArr[159] = (byte) -9;
        bArr[160] = (byte) -9;
        bArr[161] = (byte) -9;
        bArr[162] = (byte) -9;
        bArr[163] = (byte) -9;
        bArr[164] = (byte) -9;
        bArr[165] = (byte) -9;
        bArr[166] = (byte) -9;
        bArr[167] = (byte) -9;
        bArr[168] = (byte) -9;
        bArr[169] = (byte) -9;
        bArr[170] = (byte) -9;
        bArr[171] = (byte) -9;
        bArr[172] = (byte) -9;
        bArr[173] = (byte) -9;
        bArr[174] = (byte) -9;
        bArr[175] = (byte) -9;
        bArr[176] = (byte) -9;
        bArr[177] = (byte) -9;
        bArr[178] = (byte) -9;
        bArr[179] = (byte) -9;
        bArr[180] = (byte) -9;
        bArr[181] = (byte) -9;
        bArr[182] = (byte) -9;
        bArr[183] = (byte) -9;
        bArr[184] = (byte) -9;
        bArr[185] = (byte) -9;
        bArr[186] = (byte) -9;
        bArr[187] = (byte) -9;
        bArr[188] = (byte) -9;
        bArr[189] = (byte) -9;
        bArr[190] = (byte) -9;
        bArr[191] = (byte) -9;
        bArr[192] = (byte) -9;
        bArr[193] = (byte) -9;
        bArr[194] = (byte) -9;
        bArr[195] = (byte) -9;
        bArr[196] = (byte) -9;
        bArr[197] = (byte) -9;
        bArr[198] = (byte) -9;
        bArr[199] = (byte) -9;
        bArr[BaseRequest.InitBuddyList] = (byte) -9;
        bArr[BaseRequest.AddBuddy] = (byte) -9;
        bArr[BaseRequest.BlockBuddy] = (byte) -9;
        bArr[BaseRequest.RemoveBuddy] = (byte) -9;
        bArr[BaseRequest.SetBuddyVariables] = (byte) -9;
        bArr[BaseRequest.GoOnline] = (byte) -9;
        bArr[HttpStatus.SC_PARTIAL_CONTENT] = (byte) -9;
        bArr[HttpStatus.SC_MULTI_STATUS] = (byte) -9;
        bArr[208] = (byte) -9;
        bArr[209] = (byte) -9;
        bArr[210] = (byte) -9;
        bArr[211] = (byte) -9;
        bArr[212] = (byte) -9;
        bArr[213] = (byte) -9;
        bArr[214] = (byte) -9;
        bArr[215] = (byte) -9;
        bArr[216] = (byte) -9;
        bArr[217] = (byte) -9;
        bArr[218] = (byte) -9;
        bArr[219] = (byte) -9;
        bArr[220] = (byte) -9;
        bArr[221] = (byte) -9;
        bArr[222] = (byte) -9;
        bArr[223] = (byte) -9;
        bArr[224] = (byte) -9;
        bArr[225] = (byte) -9;
        bArr[226] = (byte) -9;
        bArr[227] = (byte) -9;
        bArr[228] = (byte) -9;
        bArr[229] = (byte) -9;
        bArr[230] = (byte) -9;
        bArr[231] = (byte) -9;
        bArr[232] = (byte) -9;
        bArr[233] = (byte) -9;
        bArr[234] = (byte) -9;
        bArr[235] = (byte) -9;
        bArr[236] = (byte) -9;
        bArr[237] = (byte) -9;
        bArr[238] = (byte) -9;
        bArr[239] = (byte) -9;
        bArr[240] = (byte) -9;
        bArr[241] = (byte) -9;
        bArr[242] = (byte) -9;
        bArr[243] = (byte) -9;
        bArr[244] = (byte) -9;
        bArr[245] = (byte) -9;
        bArr[246] = (byte) -9;
        bArr[247] = (byte) -9;
        bArr[248] = (byte) -9;
        bArr[249] = (byte) -9;
        bArr[250] = (byte) -9;
        bArr[251] = (byte) -9;
        bArr[252] = (byte) -9;
        bArr[253] = (byte) -9;
        bArr[254] = (byte) -9;
        bArr[255] = (byte) -9;
        _STANDARD_DECODABET = bArr;
        bArr = new byte[256];
        bArr[NO_OPTIONS] = (byte) -9;
        bArr[ENCODE] = (byte) -9;
        bArr[GZIP] = (byte) -9;
        bArr[3] = (byte) -9;
        bArr[DONT_GUNZIP] = (byte) -9;
        bArr[5] = (byte) -9;
        bArr[6] = (byte) -9;
        bArr[7] = (byte) -9;
        bArr[DO_BREAK_LINES] = (byte) -9;
        bArr[9] = WHITE_SPACE_ENC;
        bArr[10] = WHITE_SPACE_ENC;
        bArr[11] = (byte) -9;
        bArr[12] = (byte) -9;
        bArr[13] = WHITE_SPACE_ENC;
        bArr[14] = (byte) -9;
        bArr[15] = (byte) -9;
        bArr[URL_SAFE] = (byte) -9;
        bArr[17] = (byte) -9;
        bArr[18] = (byte) -9;
        bArr[19] = (byte) -9;
        bArr[20] = (byte) -9;
        bArr[21] = (byte) -9;
        bArr[22] = (byte) -9;
        bArr[23] = (byte) -9;
        bArr[24] = (byte) -9;
        bArr[25] = (byte) -9;
        bArr[26] = (byte) -9;
        bArr[27] = (byte) -9;
        bArr[28] = (byte) -9;
        bArr[29] = (byte) -9;
        bArr[30] = (byte) -9;
        bArr[31] = (byte) -9;
        bArr[ORDERED] = WHITE_SPACE_ENC;
        bArr[33] = (byte) -9;
        bArr[34] = (byte) -9;
        bArr[35] = (byte) -9;
        bArr[36] = (byte) -9;
        bArr[37] = (byte) -9;
        bArr[38] = (byte) -9;
        bArr[39] = (byte) -9;
        bArr[40] = (byte) -9;
        bArr[41] = (byte) -9;
        bArr[42] = (byte) -9;
        bArr[43] = (byte) -9;
        bArr[44] = (byte) -9;
        bArr[45] = (byte) 62;
        bArr[46] = (byte) -9;
        bArr[47] = (byte) -9;
        bArr[48] = (byte) 52;
        bArr[49] = (byte) 53;
        bArr[50] = (byte) 54;
        bArr[51] = (byte) 55;
        bArr[52] = (byte) 56;
        bArr[53] = (byte) 57;
        bArr[54] = (byte) 58;
        bArr[55] = (byte) 59;
        bArr[56] = (byte) 60;
        bArr[57] = EQUALS_SIGN;
        bArr[58] = (byte) -9;
        bArr[59] = (byte) -9;
        bArr[60] = (byte) -9;
        bArr[61] = EQUALS_SIGN_ENC;
        bArr[62] = (byte) -9;
        bArr[63] = (byte) -9;
        bArr[64] = (byte) -9;
        bArr[66] = (byte) 1;
        bArr[67] = (byte) 2;
        bArr[68] = (byte) 3;
        bArr[69] = (byte) 4;
        bArr[70] = (byte) 5;
        bArr[71] = (byte) 6;
        bArr[72] = (byte) 7;
        bArr[73] = (byte) 8;
        bArr[74] = (byte) 9;
        bArr[75] = NEW_LINE;
        bArr[MAX_LINE_LENGTH] = (byte) 11;
        bArr[77] = (byte) 12;
        bArr[78] = (byte) 13;
        bArr[79] = (byte) 14;
        bArr[80] = (byte) 15;
        bArr[81] = (byte) 16;
        bArr[82] = (byte) 17;
        bArr[83] = (byte) 18;
        bArr[84] = (byte) 19;
        bArr[85] = (byte) 20;
        bArr[86] = (byte) 21;
        bArr[87] = (byte) 22;
        bArr[88] = (byte) 23;
        bArr[89] = (byte) 24;
        bArr[90] = (byte) 25;
        bArr[91] = (byte) -9;
        bArr[92] = (byte) -9;
        bArr[93] = (byte) -9;
        bArr[94] = (byte) -9;
        bArr[95] = (byte) 63;
        bArr[96] = (byte) -9;
        bArr[97] = (byte) 26;
        bArr[98] = (byte) 27;
        bArr[99] = (byte) 28;
        bArr[100] = (byte) 29;
        bArr[R.styleable.Theme_buttonStyleSmall] = (byte) 30;
        bArr[R.styleable.Theme_checkboxStyle] = (byte) 31;
        bArr[R.styleable.Theme_checkedTextViewStyle] = (byte) 32;
        bArr[R.styleable.Theme_editTextStyle] = (byte) 33;
        bArr[R.styleable.Theme_radioButtonStyle] = (byte) 34;
        bArr[R.styleable.Theme_ratingBarStyle] = (byte) 35;
        bArr[R.styleable.Theme_seekBarStyle] = (byte) 36;
        bArr[R.styleable.Theme_spinnerStyle] = (byte) 37;
        bArr[R.styleable.Theme_switchStyle] = (byte) 38;
        bArr[110] = (byte) 39;
        bArr[111] = (byte) 40;
        bArr[112] = (byte) 41;
        bArr[113] = (byte) 42;
        bArr[114] = (byte) 43;
        bArr[115] = (byte) 44;
        bArr[116] = (byte) 45;
        bArr[117] = (byte) 46;
        bArr[118] = (byte) 47;
        bArr[119] = (byte) 48;
        bArr[120] = (byte) 49;
        bArr[121] = (byte) 50;
        bArr[122] = (byte) 51;
        bArr[123] = (byte) -9;
        bArr[124] = (byte) -9;
        bArr[125] = (byte) -9;
        bArr[126] = (byte) -9;
        bArr[127] = (byte) -9;
        bArr[ContentFilter.DOCTYPE] = (byte) -9;
        bArr[129] = (byte) -9;
        bArr[130] = (byte) -9;
        bArr[131] = (byte) -9;
        bArr[132] = (byte) -9;
        bArr[133] = (byte) -9;
        bArr[134] = (byte) -9;
        bArr[135] = (byte) -9;
        bArr[136] = (byte) -9;
        bArr[137] = (byte) -9;
        bArr[138] = (byte) -9;
        bArr[139] = (byte) -9;
        bArr[140] = (byte) -9;
        bArr[141] = (byte) -9;
        bArr[142] = (byte) -9;
        bArr[143] = (byte) -9;
        bArr[144] = (byte) -9;
        bArr[145] = (byte) -9;
        bArr[146] = (byte) -9;
        bArr[147] = (byte) -9;
        bArr[148] = (byte) -9;
        bArr[149] = (byte) -9;
        bArr[150] = (byte) -9;
        bArr[151] = (byte) -9;
        bArr[152] = (byte) -9;
        bArr[153] = (byte) -9;
        bArr[154] = (byte) -9;
        bArr[155] = (byte) -9;
        bArr[156] = (byte) -9;
        bArr[157] = (byte) -9;
        bArr[158] = (byte) -9;
        bArr[159] = (byte) -9;
        bArr[160] = (byte) -9;
        bArr[161] = (byte) -9;
        bArr[162] = (byte) -9;
        bArr[163] = (byte) -9;
        bArr[164] = (byte) -9;
        bArr[165] = (byte) -9;
        bArr[166] = (byte) -9;
        bArr[167] = (byte) -9;
        bArr[168] = (byte) -9;
        bArr[169] = (byte) -9;
        bArr[170] = (byte) -9;
        bArr[171] = (byte) -9;
        bArr[172] = (byte) -9;
        bArr[173] = (byte) -9;
        bArr[174] = (byte) -9;
        bArr[175] = (byte) -9;
        bArr[176] = (byte) -9;
        bArr[177] = (byte) -9;
        bArr[178] = (byte) -9;
        bArr[179] = (byte) -9;
        bArr[180] = (byte) -9;
        bArr[181] = (byte) -9;
        bArr[182] = (byte) -9;
        bArr[183] = (byte) -9;
        bArr[184] = (byte) -9;
        bArr[185] = (byte) -9;
        bArr[186] = (byte) -9;
        bArr[187] = (byte) -9;
        bArr[188] = (byte) -9;
        bArr[189] = (byte) -9;
        bArr[190] = (byte) -9;
        bArr[191] = (byte) -9;
        bArr[192] = (byte) -9;
        bArr[193] = (byte) -9;
        bArr[194] = (byte) -9;
        bArr[195] = (byte) -9;
        bArr[196] = (byte) -9;
        bArr[197] = (byte) -9;
        bArr[198] = (byte) -9;
        bArr[199] = (byte) -9;
        bArr[BaseRequest.InitBuddyList] = (byte) -9;
        bArr[BaseRequest.AddBuddy] = (byte) -9;
        bArr[BaseRequest.BlockBuddy] = (byte) -9;
        bArr[BaseRequest.RemoveBuddy] = (byte) -9;
        bArr[BaseRequest.SetBuddyVariables] = (byte) -9;
        bArr[BaseRequest.GoOnline] = (byte) -9;
        bArr[HttpStatus.SC_PARTIAL_CONTENT] = (byte) -9;
        bArr[HttpStatus.SC_MULTI_STATUS] = (byte) -9;
        bArr[208] = (byte) -9;
        bArr[209] = (byte) -9;
        bArr[210] = (byte) -9;
        bArr[211] = (byte) -9;
        bArr[212] = (byte) -9;
        bArr[213] = (byte) -9;
        bArr[214] = (byte) -9;
        bArr[215] = (byte) -9;
        bArr[216] = (byte) -9;
        bArr[217] = (byte) -9;
        bArr[218] = (byte) -9;
        bArr[219] = (byte) -9;
        bArr[220] = (byte) -9;
        bArr[221] = (byte) -9;
        bArr[222] = (byte) -9;
        bArr[223] = (byte) -9;
        bArr[224] = (byte) -9;
        bArr[225] = (byte) -9;
        bArr[226] = (byte) -9;
        bArr[227] = (byte) -9;
        bArr[228] = (byte) -9;
        bArr[229] = (byte) -9;
        bArr[230] = (byte) -9;
        bArr[231] = (byte) -9;
        bArr[232] = (byte) -9;
        bArr[233] = (byte) -9;
        bArr[234] = (byte) -9;
        bArr[235] = (byte) -9;
        bArr[236] = (byte) -9;
        bArr[237] = (byte) -9;
        bArr[238] = (byte) -9;
        bArr[239] = (byte) -9;
        bArr[240] = (byte) -9;
        bArr[241] = (byte) -9;
        bArr[242] = (byte) -9;
        bArr[243] = (byte) -9;
        bArr[244] = (byte) -9;
        bArr[245] = (byte) -9;
        bArr[246] = (byte) -9;
        bArr[247] = (byte) -9;
        bArr[248] = (byte) -9;
        bArr[249] = (byte) -9;
        bArr[250] = (byte) -9;
        bArr[251] = (byte) -9;
        bArr[252] = (byte) -9;
        bArr[253] = (byte) -9;
        bArr[254] = (byte) -9;
        bArr[255] = (byte) -9;
        _URL_SAFE_DECODABET = bArr;
        bArr = new byte[257];
        bArr[NO_OPTIONS] = (byte) -9;
        bArr[ENCODE] = (byte) -9;
        bArr[GZIP] = (byte) -9;
        bArr[3] = (byte) -9;
        bArr[DONT_GUNZIP] = (byte) -9;
        bArr[5] = (byte) -9;
        bArr[6] = (byte) -9;
        bArr[7] = (byte) -9;
        bArr[DO_BREAK_LINES] = (byte) -9;
        bArr[9] = WHITE_SPACE_ENC;
        bArr[10] = WHITE_SPACE_ENC;
        bArr[11] = (byte) -9;
        bArr[12] = (byte) -9;
        bArr[13] = WHITE_SPACE_ENC;
        bArr[14] = (byte) -9;
        bArr[15] = (byte) -9;
        bArr[URL_SAFE] = (byte) -9;
        bArr[17] = (byte) -9;
        bArr[18] = (byte) -9;
        bArr[19] = (byte) -9;
        bArr[20] = (byte) -9;
        bArr[21] = (byte) -9;
        bArr[22] = (byte) -9;
        bArr[23] = (byte) -9;
        bArr[24] = (byte) -9;
        bArr[25] = (byte) -9;
        bArr[26] = (byte) -9;
        bArr[27] = (byte) -9;
        bArr[28] = (byte) -9;
        bArr[29] = (byte) -9;
        bArr[30] = (byte) -9;
        bArr[31] = (byte) -9;
        bArr[ORDERED] = WHITE_SPACE_ENC;
        bArr[33] = (byte) -9;
        bArr[34] = (byte) -9;
        bArr[35] = (byte) -9;
        bArr[36] = (byte) -9;
        bArr[37] = (byte) -9;
        bArr[38] = (byte) -9;
        bArr[39] = (byte) -9;
        bArr[40] = (byte) -9;
        bArr[41] = (byte) -9;
        bArr[42] = (byte) -9;
        bArr[43] = (byte) -9;
        bArr[44] = (byte) -9;
        bArr[46] = (byte) -9;
        bArr[47] = (byte) -9;
        bArr[48] = (byte) 1;
        bArr[49] = (byte) 2;
        bArr[50] = (byte) 3;
        bArr[51] = (byte) 4;
        bArr[52] = (byte) 5;
        bArr[53] = (byte) 6;
        bArr[54] = (byte) 7;
        bArr[55] = (byte) 8;
        bArr[56] = (byte) 9;
        bArr[57] = NEW_LINE;
        bArr[58] = (byte) -9;
        bArr[59] = (byte) -9;
        bArr[60] = (byte) -9;
        bArr[61] = EQUALS_SIGN_ENC;
        bArr[62] = (byte) -9;
        bArr[63] = (byte) -9;
        bArr[64] = (byte) -9;
        bArr[65] = (byte) 11;
        bArr[66] = (byte) 12;
        bArr[67] = (byte) 13;
        bArr[68] = (byte) 14;
        bArr[69] = (byte) 15;
        bArr[70] = (byte) 16;
        bArr[71] = (byte) 17;
        bArr[72] = (byte) 18;
        bArr[73] = (byte) 19;
        bArr[74] = (byte) 20;
        bArr[75] = (byte) 21;
        bArr[MAX_LINE_LENGTH] = (byte) 22;
        bArr[77] = (byte) 23;
        bArr[78] = (byte) 24;
        bArr[79] = (byte) 25;
        bArr[80] = (byte) 26;
        bArr[81] = (byte) 27;
        bArr[82] = (byte) 28;
        bArr[83] = (byte) 29;
        bArr[84] = (byte) 30;
        bArr[85] = (byte) 31;
        bArr[86] = (byte) 32;
        bArr[87] = (byte) 33;
        bArr[88] = (byte) 34;
        bArr[89] = (byte) 35;
        bArr[90] = (byte) 36;
        bArr[91] = (byte) -9;
        bArr[92] = (byte) -9;
        bArr[93] = (byte) -9;
        bArr[94] = (byte) -9;
        bArr[95] = (byte) 37;
        bArr[96] = (byte) -9;
        bArr[97] = (byte) 38;
        bArr[98] = (byte) 39;
        bArr[99] = (byte) 40;
        bArr[100] = (byte) 41;
        bArr[R.styleable.Theme_buttonStyleSmall] = (byte) 42;
        bArr[R.styleable.Theme_checkboxStyle] = (byte) 43;
        bArr[R.styleable.Theme_checkedTextViewStyle] = (byte) 44;
        bArr[R.styleable.Theme_editTextStyle] = (byte) 45;
        bArr[R.styleable.Theme_radioButtonStyle] = (byte) 46;
        bArr[R.styleable.Theme_ratingBarStyle] = (byte) 47;
        bArr[R.styleable.Theme_seekBarStyle] = (byte) 48;
        bArr[R.styleable.Theme_spinnerStyle] = (byte) 49;
        bArr[R.styleable.Theme_switchStyle] = (byte) 50;
        bArr[110] = (byte) 51;
        bArr[111] = (byte) 52;
        bArr[112] = (byte) 53;
        bArr[113] = (byte) 54;
        bArr[114] = (byte) 55;
        bArr[115] = (byte) 56;
        bArr[116] = (byte) 57;
        bArr[117] = (byte) 58;
        bArr[118] = (byte) 59;
        bArr[119] = (byte) 60;
        bArr[120] = EQUALS_SIGN;
        bArr[121] = (byte) 62;
        bArr[122] = (byte) 63;
        bArr[123] = (byte) -9;
        bArr[124] = (byte) -9;
        bArr[125] = (byte) -9;
        bArr[126] = (byte) -9;
        bArr[127] = (byte) -9;
        bArr[ContentFilter.DOCTYPE] = (byte) -9;
        bArr[129] = (byte) -9;
        bArr[130] = (byte) -9;
        bArr[131] = (byte) -9;
        bArr[132] = (byte) -9;
        bArr[133] = (byte) -9;
        bArr[134] = (byte) -9;
        bArr[135] = (byte) -9;
        bArr[136] = (byte) -9;
        bArr[137] = (byte) -9;
        bArr[138] = (byte) -9;
        bArr[139] = (byte) -9;
        bArr[140] = (byte) -9;
        bArr[141] = (byte) -9;
        bArr[142] = (byte) -9;
        bArr[143] = (byte) -9;
        bArr[144] = (byte) -9;
        bArr[145] = (byte) -9;
        bArr[146] = (byte) -9;
        bArr[147] = (byte) -9;
        bArr[148] = (byte) -9;
        bArr[149] = (byte) -9;
        bArr[150] = (byte) -9;
        bArr[151] = (byte) -9;
        bArr[152] = (byte) -9;
        bArr[153] = (byte) -9;
        bArr[154] = (byte) -9;
        bArr[155] = (byte) -9;
        bArr[156] = (byte) -9;
        bArr[157] = (byte) -9;
        bArr[158] = (byte) -9;
        bArr[159] = (byte) -9;
        bArr[160] = (byte) -9;
        bArr[161] = (byte) -9;
        bArr[162] = (byte) -9;
        bArr[163] = (byte) -9;
        bArr[164] = (byte) -9;
        bArr[165] = (byte) -9;
        bArr[166] = (byte) -9;
        bArr[167] = (byte) -9;
        bArr[168] = (byte) -9;
        bArr[169] = (byte) -9;
        bArr[170] = (byte) -9;
        bArr[171] = (byte) -9;
        bArr[172] = (byte) -9;
        bArr[173] = (byte) -9;
        bArr[174] = (byte) -9;
        bArr[175] = (byte) -9;
        bArr[176] = (byte) -9;
        bArr[177] = (byte) -9;
        bArr[178] = (byte) -9;
        bArr[179] = (byte) -9;
        bArr[180] = (byte) -9;
        bArr[181] = (byte) -9;
        bArr[182] = (byte) -9;
        bArr[183] = (byte) -9;
        bArr[184] = (byte) -9;
        bArr[185] = (byte) -9;
        bArr[186] = (byte) -9;
        bArr[187] = (byte) -9;
        bArr[188] = (byte) -9;
        bArr[189] = (byte) -9;
        bArr[190] = (byte) -9;
        bArr[191] = (byte) -9;
        bArr[192] = (byte) -9;
        bArr[193] = (byte) -9;
        bArr[194] = (byte) -9;
        bArr[195] = (byte) -9;
        bArr[196] = (byte) -9;
        bArr[197] = (byte) -9;
        bArr[198] = (byte) -9;
        bArr[199] = (byte) -9;
        bArr[BaseRequest.InitBuddyList] = (byte) -9;
        bArr[BaseRequest.AddBuddy] = (byte) -9;
        bArr[BaseRequest.BlockBuddy] = (byte) -9;
        bArr[BaseRequest.RemoveBuddy] = (byte) -9;
        bArr[BaseRequest.SetBuddyVariables] = (byte) -9;
        bArr[BaseRequest.GoOnline] = (byte) -9;
        bArr[HttpStatus.SC_PARTIAL_CONTENT] = (byte) -9;
        bArr[HttpStatus.SC_MULTI_STATUS] = (byte) -9;
        bArr[208] = (byte) -9;
        bArr[209] = (byte) -9;
        bArr[210] = (byte) -9;
        bArr[211] = (byte) -9;
        bArr[212] = (byte) -9;
        bArr[213] = (byte) -9;
        bArr[214] = (byte) -9;
        bArr[215] = (byte) -9;
        bArr[216] = (byte) -9;
        bArr[217] = (byte) -9;
        bArr[218] = (byte) -9;
        bArr[219] = (byte) -9;
        bArr[220] = (byte) -9;
        bArr[221] = (byte) -9;
        bArr[222] = (byte) -9;
        bArr[223] = (byte) -9;
        bArr[224] = (byte) -9;
        bArr[225] = (byte) -9;
        bArr[226] = (byte) -9;
        bArr[227] = (byte) -9;
        bArr[228] = (byte) -9;
        bArr[229] = (byte) -9;
        bArr[230] = (byte) -9;
        bArr[231] = (byte) -9;
        bArr[232] = (byte) -9;
        bArr[233] = (byte) -9;
        bArr[234] = (byte) -9;
        bArr[235] = (byte) -9;
        bArr[236] = (byte) -9;
        bArr[237] = (byte) -9;
        bArr[238] = (byte) -9;
        bArr[239] = (byte) -9;
        bArr[240] = (byte) -9;
        bArr[241] = (byte) -9;
        bArr[242] = (byte) -9;
        bArr[243] = (byte) -9;
        bArr[244] = (byte) -9;
        bArr[245] = (byte) -9;
        bArr[246] = (byte) -9;
        bArr[247] = (byte) -9;
        bArr[248] = (byte) -9;
        bArr[249] = (byte) -9;
        bArr[250] = (byte) -9;
        bArr[251] = (byte) -9;
        bArr[252] = (byte) -9;
        bArr[253] = (byte) -9;
        bArr[254] = (byte) -9;
        bArr[255] = (byte) -9;
        bArr[256] = (byte) -9;
        _ORDERED_DECODABET = bArr;
    }

    private static final byte[] getAlphabet(int options) {
        if ((options & URL_SAFE) == URL_SAFE) {
            return _URL_SAFE_ALPHABET;
        }
        if ((options & ORDERED) == ORDERED) {
            return _ORDERED_ALPHABET;
        }
        return _STANDARD_ALPHABET;
    }

    private static final byte[] getDecodabet(int options) {
        if ((options & URL_SAFE) == URL_SAFE) {
            return _URL_SAFE_DECODABET;
        }
        if ((options & ORDERED) == ORDERED) {
            return _ORDERED_DECODABET;
        }
        return _STANDARD_DECODABET;
    }

    private Base64() {
    }

    private static byte[] encode3to4(byte[] b4, byte[] threeBytes, int numSigBytes, int options) {
        encode3to4(threeBytes, NO_OPTIONS, numSigBytes, b4, NO_OPTIONS, options);
        return b4;
    }

    private static byte[] encode3to4(byte[] source, int srcOffset, int numSigBytes, byte[] destination, int destOffset, int options) {
        int i = NO_OPTIONS;
        byte[] ALPHABET = getAlphabet(options);
        int i2 = (numSigBytes > ENCODE ? (source[srcOffset + ENCODE] << 24) >>> URL_SAFE : NO_OPTIONS) | (numSigBytes > 0 ? (source[srcOffset] << 24) >>> DO_BREAK_LINES : NO_OPTIONS);
        if (numSigBytes > GZIP) {
            i = (source[srcOffset + GZIP] << 24) >>> 24;
        }
        int inBuff = i2 | i;
        switch (numSigBytes) {
            case ENCODE /*1*/:
                destination[destOffset] = ALPHABET[inBuff >>> 18];
                destination[destOffset + ENCODE] = ALPHABET[(inBuff >>> 12) & 63];
                destination[destOffset + GZIP] = EQUALS_SIGN;
                destination[destOffset + 3] = EQUALS_SIGN;
                break;
            case GZIP /*2*/:
                destination[destOffset] = ALPHABET[inBuff >>> 18];
                destination[destOffset + ENCODE] = ALPHABET[(inBuff >>> 12) & 63];
                destination[destOffset + GZIP] = ALPHABET[(inBuff >>> 6) & 63];
                destination[destOffset + 3] = EQUALS_SIGN;
                break;
            case MessageRecipientMode.TO_ZONE /*3*/:
                destination[destOffset] = ALPHABET[inBuff >>> 18];
                destination[destOffset + ENCODE] = ALPHABET[(inBuff >>> 12) & 63];
                destination[destOffset + GZIP] = ALPHABET[(inBuff >>> 6) & 63];
                destination[destOffset + 3] = ALPHABET[inBuff & 63];
                break;
        }
        return destination;
    }

    public static void encode(ByteBuffer raw, ByteBuffer encoded) {
        byte[] raw3 = new byte[3];
        byte[] enc4 = new byte[DONT_GUNZIP];
        while (raw.hasRemaining()) {
            int rem = Math.min(3, raw.remaining());
            raw.get(raw3, NO_OPTIONS, rem);
            encode3to4(enc4, raw3, rem, NO_OPTIONS);
            encoded.put(enc4);
        }
    }

    public static void encode(ByteBuffer raw, CharBuffer encoded) {
        byte[] raw3 = new byte[3];
        byte[] enc4 = new byte[DONT_GUNZIP];
        while (raw.hasRemaining()) {
            int rem = Math.min(3, raw.remaining());
            raw.get(raw3, NO_OPTIONS, rem);
            encode3to4(enc4, raw3, rem, NO_OPTIONS);
            for (int i = NO_OPTIONS; i < DONT_GUNZIP; i += ENCODE) {
                encoded.put((char) (enc4[i] & 255));
            }
        }
    }

    public static String encodeObject(Serializable serializableObject) throws IOException {
        return encodeObject(serializableObject, NO_OPTIONS);
    }

    public static String encodeObject(Serializable serializableObject, int options) throws IOException {
        GZIPOutputStream gzos;
        IOException e;
        Throwable th;
        if (serializableObject == null) {
            throw new NullPointerException("Cannot serialize a null object.");
        }
        ByteArrayOutputStream baos = null;
        java.io.OutputStream b64os = null;
        GZIPOutputStream gzos2 = null;
        ObjectOutputStream oos = null;
        try {
            ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
            try {
                java.io.OutputStream b64os2 = new OutputStream(baos2, options | ENCODE);
                if ((options & GZIP) != 0) {
                    try {
                        gzos = new GZIPOutputStream(b64os2);
                    } catch (IOException e2) {
                        e = e2;
                        b64os = b64os2;
                        baos = baos2;
                        try {
                            throw e;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        b64os = b64os2;
                        baos = baos2;
                        try {
                            oos.close();
                        } catch (Exception e3) {
                        }
                        try {
                            gzos2.close();
                        } catch (Exception e4) {
                        }
                        try {
                            b64os.close();
                        } catch (Exception e5) {
                        }
                        try {
                            baos.close();
                        } catch (Exception e6) {
                        }
                        throw th;
                    }
                    try {
                        oos = new ObjectOutputStream(gzos);
                        gzos2 = gzos;
                    } catch (IOException e7) {
                        e = e7;
                        gzos2 = gzos;
                        b64os = b64os2;
                        baos = baos2;
                        throw e;
                    } catch (Throwable th4) {
                        th = th4;
                        gzos2 = gzos;
                        b64os = b64os2;
                        baos = baos2;
                        oos.close();
                        gzos2.close();
                        b64os.close();
                        baos.close();
                        throw th;
                    }
                }
                oos = new ObjectOutputStream(b64os2);
                oos.writeObject(serializableObject);
                try {
                    oos.close();
                } catch (Exception e8) {
                }
                try {
                    gzos2.close();
                } catch (Exception e9) {
                }
                try {
                    b64os2.close();
                } catch (Exception e10) {
                }
                try {
                    baos2.close();
                } catch (Exception e11) {
                }
                try {
                    return new String(baos2.toByteArray(), PREFERRED_ENCODING);
                } catch (UnsupportedEncodingException e12) {
                    return new String(baos2.toByteArray());
                }
            } catch (IOException e13) {
                e = e13;
                baos = baos2;
                throw e;
            } catch (Throwable th5) {
                th = th5;
                baos = baos2;
                oos.close();
                gzos2.close();
                b64os.close();
                baos.close();
                throw th;
            }
        } catch (IOException e14) {
            e = e14;
            throw e;
        }
    }

    public static String encodeBytes(byte[] source) {
        String encoded = null;
        try {
            encoded = encodeBytes(source, NO_OPTIONS, source.length, NO_OPTIONS);
        } catch (IOException ex) {
            if (!$assertionsDisabled) {
                throw new AssertionError(ex.getMessage());
            }
        }
        if ($assertionsDisabled || encoded != null) {
            return encoded;
        }
        throw new AssertionError();
    }

    public static String encodeBytes(byte[] source, int options) throws IOException {
        return encodeBytes(source, NO_OPTIONS, source.length, options);
    }

    public static String encodeBytes(byte[] source, int off, int len) {
        String encoded = null;
        try {
            encoded = encodeBytes(source, off, len, NO_OPTIONS);
        } catch (IOException ex) {
            if (!$assertionsDisabled) {
                throw new AssertionError(ex.getMessage());
            }
        }
        if ($assertionsDisabled || encoded != null) {
            return encoded;
        }
        throw new AssertionError();
    }

    public static String encodeBytes(byte[] source, int off, int len, int options) throws IOException {
        byte[] encoded = encodeBytesToBytes(source, off, len, options);
        try {
            return new String(encoded, PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return new String(encoded);
        }
    }

    public static byte[] encodeBytesToBytes(byte[] source) {
        byte[] encoded = null;
        try {
            encoded = encodeBytesToBytes(source, NO_OPTIONS, source.length, NO_OPTIONS);
        } catch (IOException ex) {
            if (!$assertionsDisabled) {
                throw new AssertionError("IOExceptions only come from GZipping, which is turned off: " + ex.getMessage());
            }
        }
        return encoded;
    }

    public static byte[] encodeBytesToBytes(byte[] source, int off, int len, int options) throws IOException {
        OutputStream b64os;
        IOException e;
        Throwable th;
        if (source == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        } else if (off < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + off);
        } else if (len < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + len);
        } else if (off + len > source.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", new Object[]{Integer.valueOf(off), Integer.valueOf(len), Integer.valueOf(source.length)}));
        } else if ((options & GZIP) != 0) {
            ByteArrayOutputStream baos = null;
            GZIPOutputStream gzos = null;
            OutputStream b64os2 = null;
            try {
                GZIPOutputStream gZIPOutputStream;
                ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
                try {
                    b64os = new OutputStream(baos2, options | ENCODE);
                    try {
                        gZIPOutputStream = new GZIPOutputStream(b64os);
                    } catch (IOException e2) {
                        e = e2;
                        b64os2 = b64os;
                        baos = baos2;
                        try {
                            throw e;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        b64os2 = b64os;
                        baos = baos2;
                        try {
                            gzos.close();
                        } catch (Exception e3) {
                        }
                        try {
                            b64os2.close();
                        } catch (Exception e4) {
                        }
                        try {
                            baos.close();
                        } catch (Exception e5) {
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    baos = baos2;
                    throw e;
                } catch (Throwable th4) {
                    th = th4;
                    baos = baos2;
                    gzos.close();
                    b64os2.close();
                    baos.close();
                    throw th;
                }
                try {
                    gZIPOutputStream.write(source, off, len);
                    gZIPOutputStream.close();
                    try {
                        gZIPOutputStream.close();
                    } catch (Exception e7) {
                    }
                    try {
                        b64os.close();
                    } catch (Exception e8) {
                    }
                    try {
                        baos2.close();
                    } catch (Exception e9) {
                    }
                    return baos2.toByteArray();
                } catch (IOException e10) {
                    e = e10;
                    b64os2 = b64os;
                    gzos = gZIPOutputStream;
                    baos = baos2;
                    throw e;
                } catch (Throwable th5) {
                    th = th5;
                    b64os2 = b64os;
                    gzos = gZIPOutputStream;
                    baos = baos2;
                    gzos.close();
                    b64os2.close();
                    baos.close();
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                throw e;
            }
        } else {
            boolean breakLines = (options & DO_BREAK_LINES) != 0 ? true : $assertionsDisabled;
            int encLen = ((len / 3) * DONT_GUNZIP) + (len % 3 > 0 ? DONT_GUNZIP : NO_OPTIONS);
            if (breakLines) {
                encLen += encLen / MAX_LINE_LENGTH;
            }
            byte[] outBuff = new byte[encLen];
            int d = NO_OPTIONS;
            int e12 = NO_OPTIONS;
            int len2 = len - 2;
            int lineLength = NO_OPTIONS;
            while (d < len2) {
                encode3to4(source, d + off, 3, outBuff, e12, options);
                lineLength += DONT_GUNZIP;
                if (breakLines && lineLength >= MAX_LINE_LENGTH) {
                    outBuff[e12 + DONT_GUNZIP] = NEW_LINE;
                    e12 += ENCODE;
                    lineLength = NO_OPTIONS;
                }
                d += 3;
                e12 += DONT_GUNZIP;
            }
            if (d < len) {
                encode3to4(source, d + off, len - d, outBuff, e12, options);
                e12 += DONT_GUNZIP;
            }
            if (e12 > outBuff.length - 1) {
                return outBuff;
            }
            Object finalOut = new byte[e12];
            System.arraycopy(outBuff, NO_OPTIONS, finalOut, NO_OPTIONS, e12);
            return finalOut;
        }
    }

    private static int decode4to3(byte[] source, int srcOffset, byte[] destination, int destOffset, int options) {
        if (source == null) {
            throw new NullPointerException("Source array was null.");
        } else if (destination == null) {
            throw new NullPointerException("Destination array was null.");
        } else if (srcOffset < 0 || srcOffset + 3 >= source.length) {
            r3 = new Object[GZIP];
            r3[NO_OPTIONS] = Integer.valueOf(source.length);
            r3[ENCODE] = Integer.valueOf(srcOffset);
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", r3));
        } else if (destOffset < 0 || destOffset + GZIP >= destination.length) {
            r3 = new Object[GZIP];
            r3[NO_OPTIONS] = Integer.valueOf(destination.length);
            r3[ENCODE] = Integer.valueOf(destOffset);
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", r3));
        } else {
            byte[] DECODABET = getDecodabet(options);
            if (source[srcOffset + GZIP] == EQUALS_SIGN) {
                destination[destOffset] = (byte) ((((DECODABET[source[srcOffset]] & 255) << 18) | ((DECODABET[source[srcOffset + ENCODE]] & 255) << 12)) >>> URL_SAFE);
                return ENCODE;
            } else if (source[srcOffset + 3] == EQUALS_SIGN) {
                outBuff = (((DECODABET[source[srcOffset]] & 255) << 18) | ((DECODABET[source[srcOffset + ENCODE]] & 255) << 12)) | ((DECODABET[source[srcOffset + GZIP]] & 255) << 6);
                destination[destOffset] = (byte) (outBuff >>> URL_SAFE);
                destination[destOffset + ENCODE] = (byte) (outBuff >>> DO_BREAK_LINES);
                return GZIP;
            } else {
                outBuff = ((((DECODABET[source[srcOffset]] & 255) << 18) | ((DECODABET[source[srcOffset + ENCODE]] & 255) << 12)) | ((DECODABET[source[srcOffset + GZIP]] & 255) << 6)) | (DECODABET[source[srcOffset + 3]] & 255);
                destination[destOffset] = (byte) (outBuff >> URL_SAFE);
                destination[destOffset + ENCODE] = (byte) (outBuff >> DO_BREAK_LINES);
                destination[destOffset + GZIP] = (byte) outBuff;
                return 3;
            }
        }
    }

    public static byte[] decode(byte[] source) throws IOException {
        return decode(source, NO_OPTIONS, source.length, NO_OPTIONS);
    }

    public static byte[] decode(byte[] source, int off, int len, int options) throws IOException {
        if (source == null) {
            throw new NullPointerException("Cannot decode null source array.");
        } else if (off < 0 || off + len > source.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", new Object[]{Integer.valueOf(source.length), Integer.valueOf(off), Integer.valueOf(len)}));
        } else if (len == 0) {
            return new byte[NO_OPTIONS];
        } else {
            if (len < DONT_GUNZIP) {
                throw new IllegalArgumentException("Base64-encoded string must have at least four characters, but length specified was " + len);
            }
            int b4Posn;
            byte[] DECODABET = getDecodabet(options);
            byte[] outBuff = new byte[((len * 3) / DONT_GUNZIP)];
            int outBuffPosn = NO_OPTIONS;
            byte[] b4 = new byte[DONT_GUNZIP];
            int i = off;
            int b4Posn2 = NO_OPTIONS;
            while (i < off + len) {
                byte sbiDecode = DECODABET[source[i] & 255];
                if (sbiDecode >= WHITE_SPACE_ENC) {
                    if (sbiDecode >= EQUALS_SIGN_ENC) {
                        b4Posn = b4Posn2 + ENCODE;
                        b4[b4Posn2] = source[i];
                        if (b4Posn > 3) {
                            outBuffPosn += decode4to3(b4, NO_OPTIONS, outBuff, outBuffPosn, options);
                            b4Posn = NO_OPTIONS;
                            if (source[i] == EQUALS_SIGN) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        b4Posn = b4Posn2;
                    }
                    i += ENCODE;
                    b4Posn2 = b4Posn;
                } else {
                    Object[] objArr = new Object[GZIP];
                    objArr[NO_OPTIONS] = Integer.valueOf(source[i] & 255);
                    objArr[ENCODE] = Integer.valueOf(i);
                    throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", objArr));
                }
            }
            b4Posn = b4Posn2;
            byte[] out = new byte[outBuffPosn];
            System.arraycopy(outBuff, NO_OPTIONS, out, NO_OPTIONS, outBuffPosn);
            return out;
        }
    }

    public static byte[] decode(String s) throws IOException {
        return decode(s, NO_OPTIONS);
    }

    public static byte[] decode(String s, int options) throws IOException {
        IOException e;
        Throwable th;
        if (s == null) {
            throw new NullPointerException("Input string was null.");
        }
        byte[] bytes;
        try {
            bytes = s.getBytes(PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e2) {
            bytes = s.getBytes();
        }
        bytes = decode(bytes, NO_OPTIONS, bytes.length, options);
        boolean dontGunzip = (options & DONT_GUNZIP) != 0 ? true : $assertionsDisabled;
        if (bytes != null && bytes.length >= DONT_GUNZIP && !dontGunzip && 35615 == ((bytes[NO_OPTIONS] & 255) | ((bytes[ENCODE] << DO_BREAK_LINES) & 65280))) {
            ByteArrayInputStream bais = null;
            GZIPInputStream gzis = null;
            ByteArrayOutputStream baos = null;
            byte[] buffer = new byte[2048];
            try {
                ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
                try {
                    ByteArrayInputStream bais2 = new ByteArrayInputStream(bytes);
                    try {
                        GZIPInputStream gzis2 = new GZIPInputStream(bais2);
                        while (true) {
                            try {
                                int length = gzis2.read(buffer);
                                if (length < 0) {
                                    break;
                                }
                                baos2.write(buffer, NO_OPTIONS, length);
                            } catch (IOException e3) {
                                e = e3;
                                baos = baos2;
                                gzis = gzis2;
                                bais = bais2;
                            } catch (Throwable th2) {
                                th = th2;
                                baos = baos2;
                                gzis = gzis2;
                                bais = bais2;
                            }
                        }
                        bytes = baos2.toByteArray();
                        try {
                            baos2.close();
                        } catch (Exception e4) {
                        }
                        try {
                            gzis2.close();
                        } catch (Exception e5) {
                        }
                        try {
                            bais2.close();
                        } catch (Exception e6) {
                        }
                    } catch (IOException e7) {
                        e = e7;
                        baos = baos2;
                        bais = bais2;
                        try {
                            e.printStackTrace();
                            try {
                                baos.close();
                            } catch (Exception e8) {
                            }
                            try {
                                gzis.close();
                            } catch (Exception e9) {
                            }
                            try {
                                bais.close();
                            } catch (Exception e10) {
                            }
                            return bytes;
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                baos.close();
                            } catch (Exception e11) {
                            }
                            try {
                                gzis.close();
                            } catch (Exception e12) {
                            }
                            try {
                                bais.close();
                            } catch (Exception e13) {
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        baos = baos2;
                        bais = bais2;
                        baos.close();
                        gzis.close();
                        bais.close();
                        throw th;
                    }
                } catch (IOException e14) {
                    e = e14;
                    baos = baos2;
                    e.printStackTrace();
                    baos.close();
                    gzis.close();
                    bais.close();
                    return bytes;
                } catch (Throwable th5) {
                    th = th5;
                    baos = baos2;
                    baos.close();
                    gzis.close();
                    bais.close();
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
                e.printStackTrace();
                baos.close();
                gzis.close();
                bais.close();
                return bytes;
            }
        }
        return bytes;
    }

    public static Object decodeToObject(String encodedObject) throws IOException, ClassNotFoundException {
        return decodeToObject(encodedObject, NO_OPTIONS, null);
    }

    public static Object decodeToObject(String encodedObject, int options, ClassLoader loader) throws IOException, ClassNotFoundException {
        IOException e;
        Throwable th;
        ClassNotFoundException e2;
        ByteArrayInputStream byteArrayInputStream = null;
        ObjectInputStream ois = null;
        try {
            ByteArrayInputStream bais = new ByteArrayInputStream(decode(encodedObject, options));
            if (loader == null) {
                try {
                    ois = new ObjectInputStream(bais);
                } catch (IOException e3) {
                    e = e3;
                    byteArrayInputStream = bais;
                    try {
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (ClassNotFoundException e4) {
                    e2 = e4;
                    byteArrayInputStream = bais;
                    throw e2;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayInputStream = bais;
                    try {
                        byteArrayInputStream.close();
                    } catch (Exception e5) {
                    }
                    try {
                        ois.close();
                    } catch (Exception e6) {
                    }
                    throw th;
                }
            }
            ois = new AnonymousClass1(bais, loader);
            Object obj = ois.readObject();
            try {
                bais.close();
            } catch (Exception e7) {
            }
            try {
                ois.close();
            } catch (Exception e8) {
            }
            return obj;
        } catch (IOException e9) {
            e = e9;
            throw e;
        } catch (ClassNotFoundException e10) {
            e2 = e10;
            throw e2;
        }
    }

    public static void encodeToFile(byte[] dataToEncode, String filename) throws IOException {
        IOException e;
        Throwable th;
        if (dataToEncode == null) {
            throw new NullPointerException("Data to encode was null.");
        }
        OutputStream bos = null;
        try {
            OutputStream bos2 = new OutputStream(new FileOutputStream(filename), ENCODE);
            try {
                bos2.write(dataToEncode);
                try {
                    bos2.close();
                } catch (Exception e2) {
                }
            } catch (IOException e3) {
                e = e3;
                bos = bos2;
                try {
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                bos = bos2;
                try {
                    bos.close();
                } catch (Exception e4) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            throw e;
        }
    }

    public static void decodeToFile(String dataToDecode, String filename) throws IOException {
        IOException e;
        Throwable th;
        OutputStream bos = null;
        try {
            OutputStream bos2 = new OutputStream(new FileOutputStream(filename), NO_OPTIONS);
            try {
                bos2.write(dataToDecode.getBytes(PREFERRED_ENCODING));
                try {
                    bos2.close();
                } catch (Exception e2) {
                }
            } catch (IOException e3) {
                e = e3;
                bos = bos2;
                try {
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                bos = bos2;
                try {
                    bos.close();
                } catch (Exception e4) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            throw e;
        }
    }

    public static byte[] decodeFromFile(String filename) throws IOException {
        IOException e;
        InputStream bis = null;
        Throwable th;
        try {
            File file = new File(filename);
            int length = NO_OPTIONS;
            if (file.length() > 2147483647L) {
                throw new IOException("File is too big for this convenience method (" + file.length() + " bytes).");
            }
            byte[] buffer = new byte[((int) file.length())];
            InputStream bis2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), NO_OPTIONS);
            while (true) {
                try {
                    int numBytes = bis2.read(buffer, length, 4096);
                    if (numBytes < 0) {
                        break;
                    }
                    length += numBytes;
                } catch (IOException e2) {
                    e = e2;
                    bis = bis2;
                } catch (Throwable th2) {
                    th = th2;
                    bis = bis2;
                }
            }
            byte[] decodedData = new byte[length];
            System.arraycopy(buffer, NO_OPTIONS, decodedData, NO_OPTIONS, length);
            try {
                bis2.close();
            } catch (Exception e3) {
            }
            return decodedData;
            throw th;
            try {
                bis.close();
            } catch (Exception e4) {
            }
            throw th;
        } catch (IOException e5) {
            e = e5;
            try {
                throw e;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public static String encodeFromFile(String filename) throws IOException {
        IOException e;
        InputStream inputStream = null;
        Throwable th;
        try {
            File file = new File(filename);
            byte[] buffer = new byte[Math.max((int) ((((double) file.length()) * 1.4d) + 1.0d), 40)];
            int length = NO_OPTIONS;
            InputStream bis = new InputStream(new BufferedInputStream(new FileInputStream(file)), ENCODE);
            while (true) {
                try {
                    int numBytes = bis.read(buffer, length, 4096);
                    if (numBytes < 0) {
                        break;
                    }
                    length += numBytes;
                } catch (IOException e2) {
                    e = e2;
                    inputStream = bis;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = bis;
                }
            }
            String encodedData = new String(buffer, NO_OPTIONS, length, PREFERRED_ENCODING);
            try {
                bis.close();
            } catch (Exception e3) {
            }
            return encodedData;
            try {
                inputStream.close();
            } catch (Exception e4) {
            }
            throw th;
            throw th;
        } catch (IOException e5) {
            e = e5;
            try {
                throw e;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public static void encodeFileToFile(String infile, String outfile) throws IOException {
        IOException e;
        Throwable th;
        String encoded = encodeFromFile(infile);
        java.io.OutputStream out = null;
        try {
            java.io.OutputStream out2 = new BufferedOutputStream(new FileOutputStream(outfile));
            try {
                out2.write(encoded.getBytes(PREFERRED_ENCODING));
                try {
                    out2.close();
                } catch (Exception e2) {
                }
            } catch (IOException e3) {
                e = e3;
                out = out2;
                try {
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                out = out2;
                try {
                    out.close();
                } catch (Exception e4) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            throw e;
        }
    }

    public static void decodeFileToFile(String infile, String outfile) throws IOException {
        IOException e;
        Throwable th;
        byte[] decoded = decodeFromFile(infile);
        java.io.OutputStream out = null;
        try {
            java.io.OutputStream out2 = new BufferedOutputStream(new FileOutputStream(outfile));
            try {
                out2.write(decoded);
                try {
                    out2.close();
                } catch (Exception e2) {
                }
            } catch (IOException e3) {
                e = e3;
                out = out2;
                try {
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                out = out2;
                try {
                    out.close();
                } catch (Exception e4) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            throw e;
        }
    }
}
