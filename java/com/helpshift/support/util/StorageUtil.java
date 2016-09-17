package com.helpshift.support.util;

import com.helpshift.support.HSStorage;
import com.helpshift.util.HelpshiftContext;

public class StorageUtil {
    public static void clearFAQEtag() {
        clearEtag("/faqs/");
    }

    private static void clearEtag(String route) {
        new HSStorage(HelpshiftContext.getApplicationContext()).setEtag(route, null);
    }
}
