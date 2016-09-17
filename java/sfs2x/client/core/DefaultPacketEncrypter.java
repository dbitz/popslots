package sfs2x.client.core;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.util.CryptoKey;

public class DefaultPacketEncrypter implements IPacketEncrypter {
    private final String ALGORITHM = "AES";
    private final String ALGORITHM_MODE = "AES/CBC/PKCS5PADDING";
    private final BitSwarmClient bitSwarm;

    public DefaultPacketEncrypter(BitSwarmClient bitSwarmClient) {
        this.bitSwarm = bitSwarmClient;
    }

    public byte[] encrypt(byte[] data) throws Exception {
        return execute(1, data);
    }

    public byte[] decrypt(byte[] data) throws Exception {
        return execute(2, data);
    }

    private byte[] execute(int mode, byte[] data) throws Exception {
        CryptoKey ck = this.bitSwarm.getCryptoKey();
        IvParameterSpec iv = new IvParameterSpec(ck.getInitVector());
        SecretKeySpec skeySpec = new SecretKeySpec(ck.getSecretKey(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
        cipher.init(mode, skeySpec, iv);
        return cipher.doFinal(data);
    }
}
