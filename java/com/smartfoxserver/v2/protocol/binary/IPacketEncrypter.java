package com.smartfoxserver.v2.protocol.binary;

import com.smartfoxserver.bitswarm.sessions.ISession;

public interface IPacketEncrypter {
    byte[] decrypt(ISession iSession, byte[] bArr);

    byte[] encrypt(ISession iSession, byte[] bArr);
}
