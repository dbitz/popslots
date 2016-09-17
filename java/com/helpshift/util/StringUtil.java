package com.helpshift.util;

import java.util.ArrayList;
import org.json.JSONArray;

public class StringUtil {
    public static String toString(Object value) {
        if (value instanceof String) {
            return (String) value;
        }
        if (value instanceof ArrayList) {
            return new JSONArray((ArrayList) value).toString();
        }
        return null;
    }

    public static String escapeForSql(String value) {
        return "'" + value + "'";
    }
}
