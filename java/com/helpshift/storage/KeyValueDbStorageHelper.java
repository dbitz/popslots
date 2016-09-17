package com.helpshift.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class KeyValueDbStorageHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "__hs__db_key_values";
    private static final Integer DATABASE_VERSION = Integer.valueOf(1);

    KeyValueDbStorageHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION.intValue());
    }

    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("CREATE TABLE key_value_store(key text primary key,value blob not null);");
    }

    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
        dropTable(sqLiteDatabase);
        onCreate(sqLiteDatabase);
    }

    public void onDowngrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
        dropTable(sqLiteDatabase);
        onCreate(sqLiteDatabase);
    }

    private void dropTable(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTSkey_value_store;");
    }
}
