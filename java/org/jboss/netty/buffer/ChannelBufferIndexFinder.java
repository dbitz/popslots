package org.jboss.netty.buffer;

public interface ChannelBufferIndexFinder {
    public static final ChannelBufferIndexFinder CR = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            return buffer.getByte(guessedIndex) == (byte) 13;
        }
    };
    public static final ChannelBufferIndexFinder CRLF = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            byte b = buffer.getByte(guessedIndex);
            return b == (byte) 13 || b == (byte) 10;
        }
    };
    public static final ChannelBufferIndexFinder LF = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            return buffer.getByte(guessedIndex) == (byte) 10;
        }
    };
    public static final ChannelBufferIndexFinder LINEAR_WHITESPACE = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            byte b = buffer.getByte(guessedIndex);
            return b == (byte) 32 || b == (byte) 9;
        }
    };
    public static final ChannelBufferIndexFinder NOT_CR = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            return buffer.getByte(guessedIndex) != (byte) 13;
        }
    };
    public static final ChannelBufferIndexFinder NOT_CRLF = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            byte b = buffer.getByte(guessedIndex);
            return (b == (byte) 13 || b == (byte) 10) ? false : true;
        }
    };
    public static final ChannelBufferIndexFinder NOT_LF = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            return buffer.getByte(guessedIndex) != (byte) 10;
        }
    };
    public static final ChannelBufferIndexFinder NOT_LINEAR_WHITESPACE = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            byte b = buffer.getByte(guessedIndex);
            return (b == (byte) 32 || b == (byte) 9) ? false : true;
        }
    };
    public static final ChannelBufferIndexFinder NOT_NUL = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            return buffer.getByte(guessedIndex) != (byte) 0;
        }
    };
    public static final ChannelBufferIndexFinder NUL = new ChannelBufferIndexFinder() {
        public boolean find(ChannelBuffer buffer, int guessedIndex) {
            return buffer.getByte(guessedIndex) == (byte) 0;
        }
    };

    boolean find(ChannelBuffer channelBuffer, int i);
}
