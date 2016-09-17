package com.helpshift.support.util;

import com.helpshift.support.storage.IssuesDataSource;

public class DBUtil {
    private static void createDatabaseFolder() {
        IssuesDataSource.createDB();
    }

    public static void restoreDatabaseBackup(String dbName) {
        if (!com.helpshift.util.DBUtil.doesDatabaseExist(dbName)) {
            createDatabaseFolder();
            com.helpshift.util.DBUtil.restoreDatabaseBackup(dbName);
        }
    }
}
