package com.helpshift.support.util;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class InputUtil {
    public static void hideKeyboard(Context context, View v) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(v.getWindowToken(), 0);
    }

    public static void showKeyboard(Context context, View v) {
        ((InputMethodManager) context.getSystemService("input_method")).showSoftInput(v, 1);
    }
}
