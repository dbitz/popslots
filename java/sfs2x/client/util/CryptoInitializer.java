package sfs2x.client.util;

import com.adjust.sdk.Constants;
import com.facebook.Response;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import sfs2x.client.ISmartFox;
import sfs2x.client.core.SFSEvent;

public class CryptoInitializer {
    private static final String KEY_SESSION_TOKEN = "SessToken";
    private static final String TARGET_SERVLET = "/BlueBox/CryptoManager";
    private final ISmartFox sfs;
    private ICryptoStorage storage;
    private final Thread thread;

    private final class CryptoInitRunner implements Runnable {
        private CryptoInitRunner() {
        }

        public void run() {
            try {
                String targetUrl = "https://" + CryptoInitializer.this.storage.getHttpHost() + ":" + CryptoInitializer.this.storage.getHttpPort() + CryptoInitializer.TARGET_SERVLET;
                String query = "SessToken=" + URLEncoder.encode(CryptoInitializer.this.sfs.getSessionToken(), Constants.ENCODING);
                HttpURLConnection con = (HttpURLConnection) new URL(targetUrl).openConnection();
                con.setRequestProperty("Content-length", String.valueOf(query.length()));
                con.setRequestProperty(Names.CONTENT_TYPE, "application/x-www-form-urlencoded");
                con.setDoOutput(true);
                con.setDoInput(true);
                DataOutputStream output = new DataOutputStream(con.getOutputStream());
                output.writeBytes(query);
                output.close();
                DataInputStream input = new DataInputStream(con.getInputStream());
                StringBuilder buff = new StringBuilder();
                for (int ch = input.read(); ch != -1; ch = input.read()) {
                    buff.append((char) ch);
                }
                input.close();
                CryptoInitializer.this.onHttpResponse(buff.toString());
            } catch (Exception e) {
                e.printStackTrace();
                CryptoInitializer.this.onHttpError(e.getMessage());
            }
        }
    }

    private final class DefaultCryptoKeyStorage implements ICryptoStorage {
        private DefaultCryptoKeyStorage() {
        }

        public CryptoKey getKey() {
            return CryptoInitializer.this.sfs.getSocketEngine().getCryptoKey();
        }

        public void setKey(CryptoKey key) {
            CryptoInitializer.this.sfs.getSocketEngine().setCryptoKey(key);
        }

        public String getHttpHost() {
            return CryptoInitializer.this.sfs.getConfig().getHost();
        }

        public int getHttpPort() {
            return CryptoInitializer.this.sfs.getConfig().getHttpsPort();
        }
    }

    public CryptoInitializer(ISmartFox sfs) {
        this(sfs, null);
    }

    public CryptoInitializer(ISmartFox sfs, ICryptoStorage wrapper) {
        this.storage = new DefaultCryptoKeyStorage();
        this.sfs = sfs;
        if (sfs.isConnected()) {
            if (wrapper != null) {
                this.storage = wrapper;
            }
            if (this.storage.getKey() != null) {
                throw new IllegalStateException("Cryptography is already initialized!");
            }
            this.thread = new Thread(new CryptoInitRunner(), "CryptoInitThread");
            this.thread.start();
            return;
        }
        throw new IllegalStateException("Cryptography cannot be initialized before connecting to SmartFoxServer!");
    }

    void setCryptoStorageWrapper(ICryptoStorage wrapper) {
        this.storage = wrapper;
    }

    private void onHttpResponse(String response) {
        try {
            this.storage.setKey(new CryptoKey(Base64.decode(response)));
            Map<String, Object> params = new HashMap();
            params.put(Response.SUCCESS_KEY, Boolean.valueOf(true));
            this.sfs.getDispatcher().dispatchEvent(new SFSEvent(SFSEvent.CRYPTO_INIT, params));
        } catch (IOException e) {
            onHttpError(e.getMessage());
        }
    }

    private void onHttpError(String message) {
        this.sfs.getLogger().warn("Cryptography Init Error: " + message);
        Map<String, Object> params = new HashMap();
        params.put(Response.SUCCESS_KEY, Boolean.valueOf(false));
        params.put("errorMsg", message);
        this.sfs.getDispatcher().dispatchEvent(new SFSEvent(SFSEvent.CRYPTO_INIT, params));
    }
}
