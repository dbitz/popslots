package com.helpshift.support.webkit;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.helpshift.support.util.FileUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;

public class CustomWebViewClient extends WebViewClient {
    public static final String TAG = CustomWebViewClient.class.getSimpleName();
    private Context context;
    private final CustomWebViewClientListeners customWebViewClientListeners;

    public interface CustomWebViewClientListeners {
        void onPageFinished();

        void onPageStarted();
    }

    public CustomWebViewClient(Context context, CustomWebViewClientListeners customWebViewClientListeners) {
        this.customWebViewClientListeners = customWebViewClientListeners;
        this.context = context;
    }

    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        Context context = view.getContext();
        if (!TextUtils.isEmpty(url)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            if (intent.resolveActivity(context.getPackageManager()) != null) {
                context.startActivity(intent);
                return true;
            }
        }
        return super.shouldOverrideUrlLoading(view, url);
    }

    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        this.customWebViewClientListeners.onPageStarted();
    }

    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        this.customWebViewClientListeners.onPageFinished();
    }

    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView view, String inputUrl) {
        URL url = null;
        File storagePath = this.context.getExternalCacheDir();
        try {
            url = new URL(inputUrl);
        } catch (MalformedURLException e) {
            Log.d(TAG, "MalformedURLException", e);
        }
        if (url != null) {
            File saveFile = new File(storagePath, inputUrl.replace("/", "_"));
            if (saveFile.exists()) {
                try {
                    return new WebResourceResponse("", "", new FileInputStream(saveFile));
                } catch (FileNotFoundException e2) {
                    Log.d(TAG, "FileNotFoundException", e2);
                }
            } else if (FileUtil.isImage(url)) {
                FileUtil.saveFile(url, saveFile);
            }
        }
        return super.shouldInterceptRequest(view, inputUrl);
    }
}
