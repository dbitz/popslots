package sfs2x.client.util;

import com.adjust.sdk.Constants;
import com.smartfoxserver.v2.exceptions.SFSRuntimeException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordUtil {
    public static String MD5Password(String pass) {
        try {
            MessageDigest m = MessageDigest.getInstance(Constants.MD5);
            byte[] data = pass.getBytes();
            m.update(data, 0, data.length);
            BigInteger i = new BigInteger(1, m.digest());
            return String.format("%1$032x", new Object[]{i});
        } catch (NoSuchAlgorithmException e) {
            throw new SFSRuntimeException("Unexpected: No MD5 hash algorithm found. Is this running on an a proper Sun/Oracle JRE?!");
        }
    }
}
