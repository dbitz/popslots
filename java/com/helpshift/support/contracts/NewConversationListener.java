package com.helpshift.support.contracts;

import com.helpshift.support.Faq;
import java.util.ArrayList;

public interface NewConversationListener {
    void clear();

    void exitSdkSession();

    void reloadMenu();

    void reportingIssue();

    void showConversationOnReportIssue();

    void showSearchResultFragment(ArrayList<Faq> arrayList);

    void startScreenshotPreviewFragment(String str, int i);
}
