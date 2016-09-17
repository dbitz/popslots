package com.helpshift.util;

import android.text.TextUtils;

public class SchemaUtil {
    private static boolean validateInputForComponent(String input, String component) {
        return !TextUtils.isEmpty(input) && HSPattern.getComponentPlaceHolderPattern(component).matcher(input.trim()).matches();
    }

    public static boolean validatePlatformId(String platformId) {
        return !TextUtils.isEmpty(platformId) && validateInputForComponent(platformId, "platform");
    }

    public static boolean validateTimestamp(String timeStamp) {
        return HSPattern.getTimeStampPattern().matcher(timeStamp.trim()).matches();
    }

    public static boolean validateDomainName(String domainName) {
        return HSPattern.getDomainNamePattern().matcher(domainName.trim()).matches();
    }

    public static boolean validatePropertyKey(String propertyKey) {
        return HSPattern.getPropertyKeyPattern().matcher(propertyKey.trim()).matches();
    }
}
