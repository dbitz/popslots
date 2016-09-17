package com.smartfoxserver.v2.protocol.binary;

import com.smartfoxserver.bitswarm.sessions.ISession;

public class DefaultPacketEncrypter implements IPacketEncrypter {
    public byte[] decrypt(ISession session, byte[] data) {
        return null;
    }

    public byte[] encrypt(ISession session, byte[] data) {
        return null;
    }
}
