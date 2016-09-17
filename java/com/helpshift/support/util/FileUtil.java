package com.helpshift.support.util;

import android.util.Log;
import com.helpshift.network.HttpStatus;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;

public class FileUtil {
    public static final String TAG = FileUtil.class.getSimpleName();

    public static boolean isImage(URL url) {
        boolean z = false;
        try {
            z = new HashSet(Arrays.asList(new String[]{"image/jpeg", "image/png", "image/gif", "image/x-png", "image/x-citrix-pjpeg", "image/x-citrix-gif", "image/pjpeg"})).contains(url.openConnection().getContentType());
        } catch (Exception e) {
            Log.d(TAG, "openConnection() Exception :", e);
        }
        return z;
    }

    public static void saveFile(URL url, File saveFile) {
        OutputStream output;
        InputStream input;
        try {
            input = url.openStream();
            output = new FileOutputStream(saveFile);
            byte[] buffer = new byte[HttpStatus.SC_INTERNAL_SERVER_ERROR];
            while (true) {
                int bytesRead = input.read(buffer, 0, buffer.length);
                if (bytesRead >= 0) {
                    output.write(buffer, 0, bytesRead);
                } else {
                    output.close();
                    input.close();
                    return;
                }
            }
        } catch (Exception e) {
            Log.d(TAG, "saveFile Exception :", e);
        } catch (Throwable th) {
            output.close();
            input.close();
        }
    }
}
