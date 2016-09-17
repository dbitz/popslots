package org.jboss.netty.handler.codec.http;

import com.facebook.internal.Utility;
import com.helpshift.network.HttpStatus;
import com.smartfoxserver.v2.protocol.serialization.DefaultObjectDumpFormatter;
import java.util.List;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import sfs2x.client.requests.BaseRequest;

public abstract class HttpMessageDecoder extends ReplayingDecoder<State> {
    static final /* synthetic */ boolean $assertionsDisabled = (!HttpMessageDecoder.class.desiredAssertionStatus());
    private long chunkSize;
    private ChannelBuffer content;
    private int headerSize;
    private final int maxChunkSize;
    private final int maxHeaderSize;
    private final int maxInitialLineLength;
    private HttpMessage message;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State = new int[State.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_FIXED_LENGTH_CONTENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_VARIABLE_LENGTH_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.SKIP_CONTROL_CHARS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_INITIAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_HEADER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_FIXED_LENGTH_CONTENT_AS_CHUNKS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_CHUNK_SIZE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_CHUNKED_CONTENT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_CHUNKED_CONTENT_AS_CHUNKS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_CHUNK_DELIMITER.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State[State.READ_CHUNK_FOOTER.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    protected enum State {
        SKIP_CONTROL_CHARS,
        READ_INITIAL,
        READ_HEADER,
        READ_VARIABLE_LENGTH_CONTENT,
        READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS,
        READ_FIXED_LENGTH_CONTENT,
        READ_FIXED_LENGTH_CONTENT_AS_CHUNKS,
        READ_CHUNK_SIZE,
        READ_CHUNKED_CONTENT,
        READ_CHUNKED_CONTENT_AS_CHUNKS,
        READ_CHUNK_DELIMITER,
        READ_CHUNK_FOOTER
    }

    protected abstract HttpMessage createMessage(String[] strArr) throws Exception;

    protected abstract boolean isDecodingRequest();

    protected HttpMessageDecoder() {
        this(4096, Utility.DEFAULT_STREAM_BUFFER_SIZE, Utility.DEFAULT_STREAM_BUFFER_SIZE);
    }

    protected HttpMessageDecoder(int maxInitialLineLength, int maxHeaderSize, int maxChunkSize) {
        super(State.SKIP_CONTROL_CHARS, true);
        if (maxInitialLineLength <= 0) {
            throw new IllegalArgumentException("maxInitialLineLength must be a positive integer: " + maxInitialLineLength);
        } else if (maxHeaderSize <= 0) {
            throw new IllegalArgumentException("maxHeaderSize must be a positive integer: " + maxHeaderSize);
        } else if (maxChunkSize < 0) {
            throw new IllegalArgumentException("maxChunkSize must be a positive integer: " + maxChunkSize);
        } else {
            this.maxInitialLineLength = maxInitialLineLength;
            this.maxHeaderSize = maxHeaderSize;
            this.maxChunkSize = maxChunkSize;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected java.lang.Object decode(org.jboss.netty.channel.ChannelHandlerContext r17, org.jboss.netty.channel.Channel r18, org.jboss.netty.buffer.ChannelBuffer r19, org.jboss.netty.handler.codec.http.HttpMessageDecoder.State r20) throws java.lang.Exception {
        /*
        r16 = this;
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State;
        r13 = r20.ordinal();
        r12 = r12[r13];
        switch(r12) {
            case 1: goto L_0x016b;
            case 2: goto L_0x010a;
            case 3: goto L_0x0014;
            case 4: goto L_0x0025;
            case 5: goto L_0x005a;
            case 6: goto L_0x0137;
            case 7: goto L_0x0178;
            case 8: goto L_0x01db;
            case 9: goto L_0x020b;
            case 10: goto L_0x0241;
            case 11: goto L_0x027a;
            case 12: goto L_0x02c2;
            default: goto L_0x000b;
        };
    L_0x000b:
        r12 = new java.lang.Error;
        r13 = "Shouldn't reach here.";
        r12.<init>(r13);
        throw r12;
    L_0x0014:
        r0 = r16;
        r1 = r19;
        r0.skipControlCharacters(r1);	 Catch:{ all -> 0x0044 }
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_INITIAL;	 Catch:{ all -> 0x0044 }
        r0 = r16;
        r0.checkpoint(r12);	 Catch:{ all -> 0x0044 }
        r16.checkpoint();
    L_0x0025:
        r0 = r16;
        r12 = r0.maxInitialLineLength;
        r0 = r16;
        r1 = r19;
        r12 = r0.readLine(r1, r12);
        r0 = r16;
        r3 = r0.splitInitialLine(r12);
        r12 = r3.length;
        r13 = 3;
        if (r12 >= r13) goto L_0x0049;
    L_0x003b:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.SKIP_CONTROL_CHARS;
        r0 = r16;
        r0.checkpoint(r12);
        r2 = 0;
    L_0x0043:
        return r2;
    L_0x0044:
        r12 = move-exception;
        r16.checkpoint();
        throw r12;
    L_0x0049:
        r0 = r16;
        r12 = r0.createMessage(r3);
        r0 = r16;
        r0.message = r12;
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_HEADER;
        r0 = r16;
        r0.checkpoint(r12);
    L_0x005a:
        r0 = r16;
        r1 = r19;
        r10 = r0.readHeaders(r1);
        r0 = r16;
        r0.checkpoint(r10);
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE;
        if (r10 != r12) goto L_0x0078;
    L_0x006b:
        r0 = r16;
        r12 = r0.message;
        r13 = 1;
        r12.setChunked(r13);
        r0 = r16;
        r2 = r0.message;
        goto L_0x0043;
    L_0x0078:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.SKIP_CONTROL_CHARS;
        if (r10 != r12) goto L_0x008b;
    L_0x007c:
        r0 = r16;
        r12 = r0.message;
        r13 = "Transfer-Encoding";
        r12.removeHeader(r13);
        r0 = r16;
        r2 = r0.message;
        goto L_0x0043;
    L_0x008b:
        r0 = r16;
        r12 = r0.message;
        r14 = -1;
        r6 = org.jboss.netty.handler.codec.http.HttpHeaders.getContentLength(r12, r14);
        r12 = 0;
        r12 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
        if (r12 == 0) goto L_0x00a7;
    L_0x009b:
        r12 = -1;
        r12 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
        if (r12 != 0) goto L_0x00b2;
    L_0x00a1:
        r12 = r16.isDecodingRequest();
        if (r12 == 0) goto L_0x00b2;
    L_0x00a7:
        r12 = org.jboss.netty.buffer.ChannelBuffers.EMPTY_BUFFER;
        r0 = r16;
        r0.content = r12;
        r2 = r16.reset();
        goto L_0x0043;
    L_0x00b2:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State;
        r13 = r10.ordinal();
        r12 = r12[r13];
        switch(r12) {
            case 1: goto L_0x00bf;
            case 2: goto L_0x00eb;
            default: goto L_0x00bd;
        };
    L_0x00bd:
        r2 = 0;
        goto L_0x0043;
    L_0x00bf:
        r0 = r16;
        r12 = r0.maxChunkSize;
        r12 = (long) r12;
        r12 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
        if (r12 <= 0) goto L_0x00bd;
    L_0x00c8:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_FIXED_LENGTH_CONTENT_AS_CHUNKS;
        r0 = r16;
        r0.checkpoint(r12);
        r0 = r16;
        r12 = r0.message;
        r13 = 1;
        r12.setChunked(r13);
        r0 = r16;
        r12 = r0.message;
        r14 = -1;
        r12 = org.jboss.netty.handler.codec.http.HttpHeaders.getContentLength(r12, r14);
        r0 = r16;
        r0.chunkSize = r12;
        r0 = r16;
        r2 = r0.message;
        goto L_0x0043;
    L_0x00eb:
        r12 = r19.readableBytes();
        r0 = r16;
        r13 = r0.maxChunkSize;
        if (r12 <= r13) goto L_0x00bd;
    L_0x00f5:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS;
        r0 = r16;
        r0.checkpoint(r12);
        r0 = r16;
        r12 = r0.message;
        r13 = 1;
        r12.setChunked(r13);
        r0 = r16;
        r2 = r0.message;
        goto L_0x0043;
    L_0x010a:
        r0 = r16;
        r12 = r0.content;
        if (r12 != 0) goto L_0x0120;
    L_0x0110:
        r12 = r18.getConfig();
        r12 = r12.getBufferFactory();
        r12 = org.jboss.netty.buffer.ChannelBuffers.dynamicBuffer(r12);
        r0 = r16;
        r0.content = r12;
    L_0x0120:
        r0 = r16;
        r12 = r0.content;
        r13 = r19.readableBytes();
        r0 = r19;
        r13 = r0.readBytes(r13);
        r12.writeBytes(r13);
        r2 = r16.reset();
        goto L_0x0043;
    L_0x0137:
        r0 = r16;
        r12 = r0.maxChunkSize;
        r13 = r19.readableBytes();
        r4 = java.lang.Math.min(r12, r13);
        r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk;
        r0 = r19;
        r12 = r0.readBytes(r4);
        r2.<init>(r12);
        r12 = r19.readable();
        if (r12 != 0) goto L_0x0043;
    L_0x0154:
        r16.reset();
        r12 = r2.isLast();
        if (r12 != 0) goto L_0x0043;
    L_0x015d:
        r12 = 2;
        r11 = new java.lang.Object[r12];
        r12 = 0;
        r11[r12] = r2;
        r12 = 1;
        r13 = org.jboss.netty.handler.codec.http.HttpChunk.LAST_CHUNK;
        r11[r12] = r13;
        r2 = r11;
        goto L_0x0043;
    L_0x016b:
        r0 = r16;
        r1 = r19;
        r0.readFixedLengthContent(r1);
        r2 = r16.reset();
        goto L_0x0043;
    L_0x0178:
        r0 = r16;
        r4 = r0.chunkSize;
        r0 = r16;
        r12 = r0.maxChunkSize;
        r12 = (long) r12;
        r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r12 <= 0) goto L_0x01bb;
    L_0x0185:
        r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk;
        r0 = r16;
        r12 = r0.maxChunkSize;
        r0 = r19;
        r12 = r0.readBytes(r12);
        r2.<init>(r12);
        r0 = r16;
        r12 = r0.maxChunkSize;
        r12 = (long) r12;
        r4 = r4 - r12;
    L_0x019a:
        r0 = r16;
        r0.chunkSize = r4;
        r12 = 0;
        r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r12 != 0) goto L_0x0043;
    L_0x01a4:
        r16.reset();
        r12 = r2.isLast();
        if (r12 != 0) goto L_0x0043;
    L_0x01ad:
        r12 = 2;
        r11 = new java.lang.Object[r12];
        r12 = 0;
        r11[r12] = r2;
        r12 = 1;
        r13 = org.jboss.netty.handler.codec.http.HttpChunk.LAST_CHUNK;
        r11[r12] = r13;
        r2 = r11;
        goto L_0x0043;
    L_0x01bb:
        r12 = $assertionsDisabled;
        if (r12 != 0) goto L_0x01cc;
    L_0x01bf:
        r12 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r12 <= 0) goto L_0x01cc;
    L_0x01c6:
        r12 = new java.lang.AssertionError;
        r12.<init>();
        throw r12;
    L_0x01cc:
        r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk;
        r12 = (int) r4;
        r0 = r19;
        r12 = r0.readBytes(r12);
        r2.<init>(r12);
        r4 = 0;
        goto L_0x019a;
    L_0x01db:
        r0 = r16;
        r12 = r0.maxInitialLineLength;
        r0 = r16;
        r1 = r19;
        r8 = r0.readLine(r1, r12);
        r0 = r16;
        r4 = r0.getChunkSize(r8);
        r12 = (long) r4;
        r0 = r16;
        r0.chunkSize = r12;
        if (r4 != 0) goto L_0x01fe;
    L_0x01f4:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_FOOTER;
        r0 = r16;
        r0.checkpoint(r12);
        r2 = 0;
        goto L_0x0043;
    L_0x01fe:
        r0 = r16;
        r12 = r0.maxChunkSize;
        if (r4 <= r12) goto L_0x0220;
    L_0x0204:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNKED_CONTENT_AS_CHUNKS;
        r0 = r16;
        r0.checkpoint(r12);
    L_0x020b:
        r12 = $assertionsDisabled;
        if (r12 != 0) goto L_0x0228;
    L_0x020f:
        r0 = r16;
        r12 = r0.chunkSize;
        r14 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r12 <= 0) goto L_0x0228;
    L_0x021a:
        r12 = new java.lang.AssertionError;
        r12.<init>();
        throw r12;
    L_0x0220:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNKED_CONTENT;
        r0 = r16;
        r0.checkpoint(r12);
        goto L_0x020b;
    L_0x0228:
        r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk;
        r0 = r16;
        r12 = r0.chunkSize;
        r12 = (int) r12;
        r0 = r19;
        r12 = r0.readBytes(r12);
        r2.<init>(r12);
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_DELIMITER;
        r0 = r16;
        r0.checkpoint(r12);
        goto L_0x0043;
    L_0x0241:
        r0 = r16;
        r4 = r0.chunkSize;
        r0 = r16;
        r12 = r0.maxChunkSize;
        r12 = (long) r12;
        r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r12 <= 0) goto L_0x0294;
    L_0x024e:
        r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk;
        r0 = r16;
        r12 = r0.maxChunkSize;
        r0 = r19;
        r12 = r0.readBytes(r12);
        r2.<init>(r12);
        r0 = r16;
        r12 = r0.maxChunkSize;
        r12 = (long) r12;
        r4 = r4 - r12;
    L_0x0263:
        r0 = r16;
        r0.chunkSize = r4;
        r12 = 0;
        r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r12 != 0) goto L_0x0274;
    L_0x026d:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_DELIMITER;
        r0 = r16;
        r0.checkpoint(r12);
    L_0x0274:
        r12 = r2.isLast();
        if (r12 == 0) goto L_0x0043;
    L_0x027a:
        r9 = r19.readByte();
        r12 = 13;
        if (r9 != r12) goto L_0x02b4;
    L_0x0282:
        r12 = r19.readByte();
        r13 = 10;
        if (r12 != r13) goto L_0x027a;
    L_0x028a:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE;
        r0 = r16;
        r0.checkpoint(r12);
        r2 = 0;
        goto L_0x0043;
    L_0x0294:
        r12 = $assertionsDisabled;
        if (r12 != 0) goto L_0x02a5;
    L_0x0298:
        r12 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r12 <= 0) goto L_0x02a5;
    L_0x029f:
        r12 = new java.lang.AssertionError;
        r12.<init>();
        throw r12;
    L_0x02a5:
        r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk;
        r12 = (int) r4;
        r0 = r19;
        r12 = r0.readBytes(r12);
        r2.<init>(r12);
        r4 = 0;
        goto L_0x0263;
    L_0x02b4:
        r12 = 10;
        if (r9 != r12) goto L_0x027a;
    L_0x02b8:
        r12 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE;
        r0 = r16;
        r0.checkpoint(r12);
        r2 = 0;
        goto L_0x0043;
    L_0x02c2:
        r0 = r16;
        r1 = r19;
        r11 = r0.readTrailingHeaders(r1);
        r0 = r16;
        r12 = r0.maxChunkSize;
        if (r12 != 0) goto L_0x02d6;
    L_0x02d0:
        r2 = r16.reset();
        goto L_0x0043;
    L_0x02d6:
        r16.reset();
        r2 = r11;
        goto L_0x0043;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.http.HttpMessageDecoder.decode(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, org.jboss.netty.buffer.ChannelBuffer, org.jboss.netty.handler.codec.http.HttpMessageDecoder$State):java.lang.Object");
    }

    protected boolean isContentAlwaysEmpty(HttpMessage msg) {
        if (msg instanceof HttpResponse) {
            int code = ((HttpResponse) msg).getStatus().getCode();
            if (code < BaseRequest.InitBuddyList) {
                return true;
            }
            switch (code) {
                case BaseRequest.SetBuddyVariables /*204*/:
                case BaseRequest.GoOnline /*205*/:
                case HttpStatus.SC_NOT_MODIFIED /*304*/:
                    return true;
            }
        }
        return false;
    }

    private Object reset() {
        HttpMessage message = this.message;
        ChannelBuffer content = this.content;
        if (content != null) {
            message.setContent(content);
            this.content = null;
        }
        this.message = null;
        checkpoint(State.SKIP_CONTROL_CHARS);
        return message;
    }

    private void skipControlCharacters(ChannelBuffer buffer) {
        while (true) {
            char c = (char) buffer.readUnsignedByte();
            if (!Character.isISOControl(c) && !Character.isWhitespace(c)) {
                buffer.readerIndex(buffer.readerIndex() - 1);
                return;
            }
        }
    }

    private void readFixedLengthContent(ChannelBuffer buffer) {
        long length = HttpHeaders.getContentLength(this.message, -1);
        if (!$assertionsDisabled && length > 2147483647L) {
            throw new AssertionError();
        } else if (this.content == null) {
            this.content = buffer.readBytes((int) length);
        } else {
            this.content.writeBytes(buffer.readBytes((int) length));
        }
    }

    private State readHeaders(ChannelBuffer buffer) throws TooLongFrameException {
        this.headerSize = 0;
        HttpMessage message = this.message;
        String line = readHeader(buffer);
        String name = null;
        String value = null;
        if (line.length() != 0) {
            message.clearHeaders();
            do {
                char firstChar = line.charAt(0);
                if (name == null || !(firstChar == ' ' || firstChar == '\t')) {
                    if (name != null) {
                        message.addHeader(name, value);
                    }
                    String[] header = splitHeader(line);
                    name = header[0];
                    value = header[1];
                } else {
                    value = value + ' ' + line.trim();
                }
                line = readHeader(buffer);
            } while (line.length() != 0);
            if (name != null) {
                message.addHeader(name, value);
            }
        }
        if (isContentAlwaysEmpty(message)) {
            return State.SKIP_CONTROL_CHARS;
        }
        if (message.isChunked()) {
            return State.READ_CHUNK_SIZE;
        }
        if (HttpHeaders.getContentLength(message, -1) >= 0) {
            return State.READ_FIXED_LENGTH_CONTENT;
        }
        return State.READ_VARIABLE_LENGTH_CONTENT;
    }

    private HttpChunkTrailer readTrailingHeaders(ChannelBuffer buffer) throws TooLongFrameException {
        this.headerSize = 0;
        String line = readHeader(buffer);
        String lastHeader = null;
        if (line.length() == 0) {
            return HttpChunk.LAST_CHUNK;
        }
        HttpChunkTrailer trailer = new DefaultHttpChunkTrailer();
        do {
            char firstChar = line.charAt(0);
            if (lastHeader == null || !(firstChar == ' ' || firstChar == '\t')) {
                String[] header = splitHeader(line);
                String name = header[0];
                if (!(name.equalsIgnoreCase(Names.CONTENT_LENGTH) || name.equalsIgnoreCase(HttpHeaders.Names.TRANSFER_ENCODING) || name.equalsIgnoreCase(HttpHeaders.Names.TRAILER))) {
                    trailer.addHeader(name, header[1]);
                }
                lastHeader = name;
            } else {
                List<String> current = trailer.getHeaders(lastHeader);
                if (current.size() != 0) {
                    int lastPos = current.size() - 1;
                    current.set(lastPos, ((String) current.get(lastPos)) + line.trim());
                }
            }
            line = readHeader(buffer);
        } while (line.length() != 0);
        return trailer;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String readHeader(org.jboss.netty.buffer.ChannelBuffer r7) throws org.jboss.netty.handler.codec.frame.TooLongFrameException {
        /*
        r6 = this;
        r2 = new java.lang.StringBuilder;
        r3 = 64;
        r2.<init>(r3);
        r0 = r6.headerSize;
    L_0x0009:
        r3 = r7.readByte();
        r1 = (char) r3;
        r0 = r0 + 1;
        switch(r1) {
            case 10: goto L_0x0045;
            case 11: goto L_0x0013;
            case 12: goto L_0x0013;
            case 13: goto L_0x003a;
            default: goto L_0x0013;
        };
    L_0x0013:
        r3 = r6.maxHeaderSize;
        if (r0 < r3) goto L_0x004c;
    L_0x0017:
        r3 = new org.jboss.netty.handler.codec.frame.TooLongFrameException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "HTTP header is larger than ";
        r4 = r4.append(r5);
        r5 = r6.maxHeaderSize;
        r4 = r4.append(r5);
        r5 = " bytes.";
        r4 = r4.append(r5);
        r4 = r4.toString();
        r3.<init>(r4);
        throw r3;
    L_0x003a:
        r3 = r7.readByte();
        r1 = (char) r3;
        r0 = r0 + 1;
        r3 = 10;
        if (r1 != r3) goto L_0x0013;
    L_0x0045:
        r6.headerSize = r0;
        r3 = r2.toString();
        return r3;
    L_0x004c:
        r2.append(r1);
        goto L_0x0009;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.http.HttpMessageDecoder.readHeader(org.jboss.netty.buffer.ChannelBuffer):java.lang.String");
    }

    private int getChunkSize(String hex) {
        hex = hex.trim();
        for (int i = 0; i < hex.length(); i++) {
            char c = hex.charAt(i);
            if (c == DefaultObjectDumpFormatter.TOKEN_DIVIDER || Character.isWhitespace(c) || Character.isISOControl(c)) {
                hex = hex.substring(0, i);
                break;
            }
        }
        return Integer.parseInt(hex, 16);
    }

    private String readLine(ChannelBuffer buffer, int maxLineLength) throws TooLongFrameException {
        StringBuilder sb = new StringBuilder(64);
        int lineLength = 0;
        while (true) {
            byte nextByte = buffer.readByte();
            if (nextByte == (byte) 13) {
                if (buffer.readByte() == (byte) 10) {
                    return sb.toString();
                }
            } else if (nextByte == (byte) 10) {
                return sb.toString();
            } else {
                if (lineLength >= maxLineLength) {
                    throw new TooLongFrameException("An HTTP line is larger than " + maxLineLength + " bytes.");
                }
                lineLength++;
                sb.append((char) nextByte);
            }
        }
    }

    private String[] splitInitialLine(String sb) {
        int aStart = findNonWhitespace(sb, 0);
        int aEnd = findWhitespace(sb, aStart);
        int bStart = findNonWhitespace(sb, aEnd);
        int bEnd = findWhitespace(sb, bStart);
        int cStart = findNonWhitespace(sb, bEnd);
        int cEnd = findEndOfString(sb);
        String[] strArr = new String[3];
        strArr[0] = sb.substring(aStart, aEnd);
        strArr[1] = sb.substring(bStart, bEnd);
        strArr[2] = cStart < cEnd ? sb.substring(cStart, cEnd) : "";
        return strArr;
    }

    private String[] splitHeader(String sb) {
        int length = sb.length();
        int nameEnd = findNonWhitespace(sb, 0);
        while (nameEnd < length) {
            char ch = sb.charAt(nameEnd);
            if (ch == ':' || Character.isWhitespace(ch)) {
                break;
            }
            nameEnd++;
        }
        int colonEnd = nameEnd;
        while (colonEnd < length) {
            if (sb.charAt(colonEnd) == ':') {
                colonEnd++;
                break;
            }
            colonEnd++;
        }
        if (findNonWhitespace(sb, colonEnd) == length) {
            return new String[]{sb.substring(nameStart, nameEnd), ""};
        }
        int valueEnd = findEndOfString(sb);
        return new String[]{sb.substring(nameStart, nameEnd), sb.substring(valueStart, valueEnd)};
    }

    private int findNonWhitespace(String sb, int offset) {
        int result = offset;
        while (result < sb.length() && Character.isWhitespace(sb.charAt(result))) {
            result++;
        }
        return result;
    }

    private int findWhitespace(String sb, int offset) {
        int result = offset;
        while (result < sb.length() && !Character.isWhitespace(sb.charAt(result))) {
            result++;
        }
        return result;
    }

    private int findEndOfString(String sb) {
        int result = sb.length();
        while (result > 0 && Character.isWhitespace(sb.charAt(result - 1))) {
            result--;
        }
        return result;
    }
}
