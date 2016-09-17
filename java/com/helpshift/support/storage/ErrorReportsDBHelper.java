package com.helpshift.support.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class ErrorReportsDBHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "__hs__db_error_reports";
    private static final Integer DATABASE_VERSION = Integer.valueOf(1);

    public ErrorReportsDBHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION.intValue());
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE error_reports(_id INTEGER PRIMARY KEY AUTOINCREMENT, report_id TEXT NOT NULL UNIQUE, report_type TEXT NOT NULL, device_info TEXT, hs_funnel TEXT, bread_crumbs TEXT, profile_id TEXT, active_conversation_id TEXT, active_message_ids TEXT, thread_info TEXT, timestamp TEXT, exception_detail BLOB, extra_info TEXT);");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        dropTables(db);
        onCreate(db);
    }

    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        dropTables(db);
        onCreate(db);
    }

    public void dropTables(SQLiteDatabase db) {
        db.execSQL("DROP TABLE IF EXISTS error_reports");
    }
}
