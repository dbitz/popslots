package com.helpshift.support.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.helpshift.constants.Tables;
import com.helpshift.support.constants.ErrorReportColumns;
import com.helpshift.support.model.ErrorReport;
import com.helpshift.util.DatabaseUtils;
import com.helpshift.util.HelpshiftContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ErrorReportsDataSource {
    private static SQLiteDatabase database;
    private static final ErrorReportsDBHelper helper = new ErrorReportsDBHelper(HelpshiftContext.getApplicationContext());

    private ErrorReportsDataSource() {
    }

    private static void write() {
        database = helper.getWritableDatabase();
    }

    private static void read() {
        database = helper.getReadableDatabase();
    }

    private static void close() {
        database.close();
    }

    private static ContentValues reportToContentValues(ErrorReport errorReport) {
        ContentValues values = new ContentValues();
        values.put(ErrorReportColumns.REPORT_ID, errorReport.getReportId());
        values.put(ErrorReport.KEY_REPORT_TYPE, errorReport.getReportType());
        values.put(ErrorReport.KEY_DEVICE_INFO, errorReport.getDeviceInfo().toString());
        values.put(ErrorReportColumns.HS_FUNNEL, (String) errorReport.getHelpshiftContext().get(ErrorReport.KEY_FUNNEL));
        values.put(ErrorReport.KEY_BREAD_CRUMBS, (String) errorReport.getHelpshiftContext().get(ErrorReport.KEY_BREAD_CRUMBS));
        values.put(ProfilesDBHelper.COLUMN_PROFILE_ID, (String) errorReport.getConversationContext().get(ProfilesDBHelper.COLUMN_PROFILE_ID));
        values.put(ErrorReport.KEY_ACTIVE_CONVERSATION_ID, (String) errorReport.getConversationContext().get(ErrorReport.KEY_ACTIVE_CONVERSATION_ID));
        values.put(ErrorReport.KEY_ACTIVE_MESSAGE_IDS, (String) errorReport.getConversationContext().get(ErrorReport.KEY_ACTIVE_MESSAGE_IDS));
        values.put(ErrorReport.KEY_THREAD_INFO, errorReport.getErrorData().get(ErrorReport.KEY_THREAD_INFO).toString());
        values.put(ErrorReport.KEY_TIMESTAMP, errorReport.getErrorData().get(ErrorReport.KEY_TIMESTAMP).toString());
        values.put(ErrorReport.KEY_EXCEPTION_DETAIL, ErrorReport.throwableToBytes((Throwable) errorReport.getErrorData().get(ErrorReport.KEY_EXCEPTION_DETAIL)));
        return values;
    }

    private static ErrorReport cursorToErrorReport(Cursor cursor) {
        ErrorReport errorReport = new ErrorReport();
        errorReport.setReportId(cursor.getString(cursor.getColumnIndex(ErrorReportColumns.REPORT_ID)));
        errorReport.setReportType(cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_REPORT_TYPE)));
        errorReport.setDeviceInfo(cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_DEVICE_INFO)));
        Map<String, String> mapHelpshiftContext = new HashMap();
        mapHelpshiftContext.put(ErrorReport.KEY_FUNNEL, cursor.getString(cursor.getColumnIndex(ErrorReportColumns.HS_FUNNEL)));
        mapHelpshiftContext.put(ErrorReport.KEY_BREAD_CRUMBS, cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_BREAD_CRUMBS)));
        errorReport.setHelpshiftContext(mapHelpshiftContext);
        Map<String, String> mapConversationContext = new HashMap();
        mapConversationContext.put(ProfilesDBHelper.COLUMN_PROFILE_ID, cursor.getString(cursor.getColumnIndex(ProfilesDBHelper.COLUMN_PROFILE_ID)));
        mapConversationContext.put(ErrorReport.KEY_ACTIVE_CONVERSATION_ID, cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_ACTIVE_CONVERSATION_ID)));
        mapConversationContext.put(ErrorReport.KEY_ACTIVE_MESSAGE_IDS, cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_ACTIVE_MESSAGE_IDS)));
        errorReport.setConversationContext(mapConversationContext);
        Map<String, Object> mapErrorData = new HashMap();
        mapErrorData.put(ErrorReport.KEY_THREAD_INFO, cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_THREAD_INFO)));
        mapErrorData.put(ErrorReport.KEY_TIMESTAMP, cursor.getString(cursor.getColumnIndex(ErrorReport.KEY_TIMESTAMP)));
        mapErrorData.put(ErrorReport.KEY_EXCEPTION_DETAIL, ErrorReport.bytesToThrowable(cursor.getBlob(cursor.getColumnIndex(ErrorReport.KEY_EXCEPTION_DETAIL))));
        errorReport.setErrorData(mapErrorData);
        return errorReport;
    }

    private static void storeReportUnsafe(ErrorReport errorReport) {
        if (errorReport != null) {
            String whereClause = "report_id=?";
            String[] whereArgs = new String[]{errorReport.getReportId()};
            if (DatabaseUtils.exists(database, Tables.ERROR_REPORTS, whereClause, whereArgs)) {
                database.update(Tables.ERROR_REPORTS, reportToContentValues(errorReport), whereClause, whereArgs);
            } else {
                database.insert(Tables.ERROR_REPORTS, null, reportToContentValues(errorReport));
            }
        }
    }

    public static void storeErrorReport(ErrorReport errorReport) {
        if (errorReport != null) {
            synchronized (helper) {
                write();
                storeReportUnsafe(errorReport);
                close();
            }
        }
    }

    public static List<ErrorReport> getErrorReportsByType(String reportType) {
        List<ErrorReport> errorReports = new ArrayList();
        if (!TextUtils.isEmpty(reportType)) {
            String whereClause = "report_type=?";
            String[] whereArgs = new String[]{reportType};
            synchronized (helper) {
                read();
                Cursor cursor = database.query(Tables.ERROR_REPORTS, null, whereClause, whereArgs, null, null, null);
                if (cursor.moveToFirst()) {
                    while (!cursor.isAfterLast()) {
                        errorReports.add(cursorToErrorReport(cursor));
                        cursor.moveToNext();
                    }
                }
                cursor.close();
                close();
            }
        }
        return errorReports;
    }

    public static boolean hasReports() {
        long rows;
        synchronized (helper) {
            read();
            rows = android.database.DatabaseUtils.queryNumEntries(database, Tables.ERROR_REPORTS);
            close();
        }
        return rows != 0;
    }

    public static void deleteErrorReports(List<String> reportIds) {
        if (reportIds != null && !reportIds.isEmpty()) {
            synchronized (helper) {
                write();
                database.beginTransaction();
                for (String reportId : reportIds) {
                    deleteErrorReportUnsafe(reportId);
                }
                database.setTransactionSuccessful();
                database.endTransaction();
                close();
            }
        }
    }

    private static void deleteErrorReportUnsafe(String reportId) {
        if (!TextUtils.isEmpty(reportId)) {
            String[] whereArgs = new String[]{reportId};
            database.delete(Tables.ERROR_REPORTS, "report_id=?", whereArgs);
        }
    }
}
