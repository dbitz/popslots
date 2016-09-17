package com.helpshift.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.helpshift.util.ByteArrayUtil;
import com.helpshift.util.DBUtil;
import com.helpshift.util.DatabaseUtils;
import com.helpshift.util.HelpshiftContext;
import com.helpshift.util.constants.KeyValueStoreColumns;
import com.helpshift.util.constants.Tables;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

public class KeyValueDbStorage implements KeyValueStorage {
    private static final String TAG = "HelpshiftDebug";
    private static final String backupFileName = "__hs__kv_backup";
    private HashMap<String, Serializable> backupData = DBUtil.restoreHashMap(backupFileName);
    private SQLiteDatabase database;
    private final KeyValueDbStorageHelper helper = new KeyValueDbStorageHelper(HelpshiftContext.getApplicationContext());

    public KeyValueDbStorage() {
        if (this.backupData == null) {
            this.backupData = new HashMap();
            return;
        }
        for (Entry<String, Serializable> entry : this.backupData.entrySet()) {
            set((String) entry.getKey(), (Serializable) entry.getValue());
        }
    }

    public void setWithBackup(String key, Serializable value) {
        if (set(key, value)) {
            synchronized (this.helper) {
                this.backupData.put(key, value);
                DBUtil.backupHashMap(backupFileName, this.backupData);
            }
        }
    }

    public boolean set(String key, Serializable value) {
        boolean z = false;
        if (!(TextUtils.isEmpty(key) || value == null)) {
            z = false;
            synchronized (this.helper) {
                write();
                this.database.beginTransaction();
                String whereClause = "key=?";
                String[] whereArgs = new String[]{key};
                try {
                    ContentValues values = new ContentValues();
                    values.put(KeyValueStoreColumns.key, key);
                    values.put(KeyValueStoreColumns.value, ByteArrayUtil.toByteArray(value));
                    if (DatabaseUtils.exists(this.database, Tables.KVSTORE, whereClause, whereArgs)) {
                        this.database.update(Tables.KVSTORE, values, whereClause, whereArgs);
                    } else {
                        this.database.insert(Tables.KVSTORE, null, values);
                    }
                    z = true;
                } catch (IOException ioException) {
                    Log.d(TAG, "IOException in clearing data : ", ioException);
                } finally {
                    this.database.setTransactionSuccessful();
                    this.database.endTransaction();
                    close();
                }
            }
        }
        return z;
    }

    public Object get(String key) {
        Object obj = null;
        if (!TextUtils.isEmpty(key)) {
            obj = null;
            synchronized (this.helper) {
                read();
                String[] whereArgs = new String[]{key};
                Cursor cursor = this.database.query(Tables.KVSTORE, null, "key=?", whereArgs, null, null, null);
                if (cursor.moveToFirst()) {
                    try {
                        obj = ByteArrayUtil.toObject(cursor.getBlob(1));
                    } catch (Exception e) {
                        obj = null;
                    }
                }
                cursor.close();
                close();
            }
        }
        return obj;
    }

    public List<String> getAllKeys() {
        List<String> keys = new ArrayList();
        synchronized (this.helper) {
            read();
            Cursor cursor = this.database.query(Tables.KVSTORE, new String[]{KeyValueStoreColumns.key}, null, null, null, null, null);
            if (cursor.moveToFirst()) {
                while (!cursor.isAfterLast()) {
                    keys.add(cursor.getString(0));
                    cursor.moveToNext();
                }
            }
            cursor.close();
            close();
        }
        return keys;
    }

    public void removeKey(String key) {
        if (!TextUtils.isEmpty(key)) {
            synchronized (this.helper) {
                write();
                this.database.beginTransaction();
                String whereClause = "key=?";
                String[] whereArgs = new String[]{key};
                if (DatabaseUtils.exists(this.database, Tables.KVSTORE, whereClause, whereArgs)) {
                    this.database.delete(Tables.KVSTORE, whereClause, whereArgs);
                }
                this.database.setTransactionSuccessful();
                this.database.endTransaction();
                close();
            }
        }
    }

    public void removeAllKeys() {
        synchronized (this.helper) {
            write();
            this.database.beginTransaction();
            this.database.delete(Tables.KVSTORE, null, null);
            this.database.setTransactionSuccessful();
            this.database.endTransaction();
            close();
        }
    }

    public void read() {
        this.database = this.helper.getReadableDatabase();
    }

    public void write() {
        this.database = this.helper.getWritableDatabase();
    }

    public void close() {
        this.database.close();
    }
}
