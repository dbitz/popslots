package com.helpshift.support.contracts;

public interface ScreenshotPreviewListener {
    void add(String str);

    void change();

    void remove();

    void send(String str);
}
