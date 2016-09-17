package com.helpshift.support;

import android.content.Context;
import com.helpshift.support.constants.ErrorReportTypes;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.support.storage.ErrorReportsDataSource;

public class UncaughtExceptionHandler {
    private static final CharSequence HELPSHIFT_BASE_PACKAGE_NAME = "com.helpshift";

    public static void init(final Context context) {
        final java.lang.Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new java.lang.Thread.UncaughtExceptionHandler() {
            public void uncaughtException(Thread thread, Throwable ex) {
                if (UncaughtExceptionHandler.isCausedByHelpshift(ex)) {
                    ErrorReportsDataSource.storeErrorReport(new ErrorReport(context, new HSApiData(context), ErrorReportTypes.RUNTIME_ERROR, thread, ex));
                }
                if (defaultUncaughtExceptionHandler != null) {
                    defaultUncaughtExceptionHandler.uncaughtException(thread, ex);
                }
            }
        });
    }

    private static boolean isCausedByHelpshift(Throwable throwable) {
        if (throwable == null) {
            return false;
        }
        for (Throwable ex = new Throwable(throwable); ex != null; ex = ex.getCause()) {
            for (StackTraceElement stackTraceElement : ex.getStackTrace()) {
                if (stackTraceElement.getClassName().contains(HELPSHIFT_BASE_PACKAGE_NAME)) {
                    return true;
                }
            }
        }
        return false;
    }
}
