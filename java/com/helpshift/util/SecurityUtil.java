package com.helpshift.util;

import com.adjust.sdk.Constants;
import com.helpshift.exceptions.InstallException;
import com.helpshift.model.InfoModelFactory;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class SecurityUtil {
    public static String getSignature(String sigString) throws GeneralSecurityException, InstallException {
        String data = sigString;
        String key = InfoModelFactory.getInstance().appInfoModel.getApiKey();
        if (InfoModelFactory.getInstance().appInfoModel.isInstalled()) {
            try {
                SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(Constants.ENCODING), "HmacSHA256");
                Mac mac = Mac.getInstance("HmacSHA256");
                mac.init(secretKey);
                return ByteArrayUtil.toHex(mac.doFinal(data.getBytes(Constants.ENCODING)));
            } catch (UnsupportedEncodingException e) {
                throw new GeneralSecurityException(e);
            }
        }
        throw new InstallException("Install information missing");
    }
}
