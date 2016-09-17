package com.helpshift.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class HSPattern {
    private static Pattern customPropertyPattern = Pattern.compile("^[A-Za-z0-9_]+$");
    private static Pattern domainNamePattern = Pattern.compile("^[A-Za-z0-9][A-Za-z0-9-]*[A-Za-z0-9]\\.helpshift\\.(com|mobi)$");
    private static Pattern emailPattern = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
    private static Pattern ipPattern = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)$");
    private static Pattern propertyKeyPattern = Pattern.compile("^[\\p{L}\\p{N}][\\p{L}\\p{N}\\p{Pd}\\p{Pc}]*[\\p{L}\\p{N}]$");
    private static Pattern specialCharPattern = Pattern.compile("\\W+");
    private static Pattern timeStampPattern = Pattern.compile("^\\d+.\\d{3}$");

    public static boolean checkEmail(String email) {
        return emailPattern.matcher(email.trim()).matches();
    }

    public static boolean checkSpecialCharacters(String issueText) {
        return specialCharPattern.matcher(issueText.trim()).matches();
    }

    public static String sanitiseCustomPropertyKey(String key) {
        String sanitisedKey = key.trim().replace("-", "_").replace(" ", "_");
        if (customPropertyPattern.matcher(sanitisedKey).matches()) {
            return sanitisedKey;
        }
        return null;
    }

    public static boolean checkIpv4Address(String ipAddress) {
        if (ipAddress == null || ipAddress.trim().length() == 0) {
            return false;
        }
        Matcher m = ipPattern.matcher(ipAddress.trim());
        if (!m.matches()) {
            return false;
        }
        for (int i = 1; i < m.groupCount(); i++) {
            Integer component = Integer.valueOf(Integer.parseInt(m.group(i)));
            if (component.intValue() < 0 || component.intValue() > 255) {
                return false;
            }
        }
        return true;
    }

    public static Pattern getComponentPlaceHolderPattern(String component) {
        return Pattern.compile("^[\\p{L}\\p{N}-]+_" + component + "_\\d{17}-[0-9a-z]{15}$");
    }

    public static Pattern getTimeStampPattern() {
        return timeStampPattern;
    }

    public static Pattern getDomainNamePattern() {
        return domainNamePattern;
    }

    public static Pattern getPropertyKeyPattern() {
        return propertyKeyPattern;
    }
}
