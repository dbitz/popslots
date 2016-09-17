package com.helpshift.support.external;

public interface StringEncoder extends Encoder {
    String encode(String str) throws EncoderException;
}
