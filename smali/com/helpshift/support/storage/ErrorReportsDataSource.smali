.class public Lcom/helpshift/support/storage/ErrorReportsDataSource;
.super Ljava/lang/Object;
.source "ErrorReportsDataSource.java"


# static fields
.field private static database:Landroid/database/sqlite/SQLiteDatabase;

.field private static final helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static close()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    return-void
.end method

.method private static cursorToErrorReport(Landroid/database/Cursor;)Lcom/helpshift/support/model/ErrorReport;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    new-instance v0, Lcom/helpshift/support/model/ErrorReport;

    invoke-direct {v0}, Lcom/helpshift/support/model/ErrorReport;-><init>()V

    .line 66
    .local v0, "errorReport":Lcom/helpshift/support/model/ErrorReport;
    const-string/jumbo v5, "report_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/support/model/ErrorReport;->setReportId(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "report_type"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/support/model/ErrorReport;->setReportType(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v5, "device_info"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/support/model/ErrorReport;->setDeviceInfo(Ljava/lang/String;)V

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v3, "mapHelpshiftContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "funnel"

    const-string/jumbo v6, "hs_funnel"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v5, "bread_crumbs"

    const-string/jumbo v6, "bread_crumbs"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0, v3}, Lcom/helpshift/support/model/ErrorReport;->setHelpshiftContext(Ljava/util/Map;)V

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v1, "mapConversationContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "profile_id"

    const-string/jumbo v6, "profile_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v5, "active_conversation_id"

    const-string/jumbo v6, "active_conversation_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v5, "active_message_ids"

    const-string/jumbo v6, "active_message_ids"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/ErrorReport;->setConversationContext(Ljava/util/Map;)V

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v2, "mapErrorData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "thread_info"

    const-string/jumbo v6, "thread_info"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v5, "timestamp"

    const-string/jumbo v6, "timestamp"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v5, "exception_detail"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/support/model/ErrorReport;->bytesToThrowable([B)Ljava/lang/Throwable;

    move-result-object v4

    .line 85
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "exception_detail"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v0, v2}, Lcom/helpshift/support/model/ErrorReport;->setErrorData(Ljava/util/Map;)V

    .line 88
    return-object v0
.end method

.method private static deleteErrorReportUnsafe(Ljava/lang/String;)V
    .locals 4
    .param p0, "reportId"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v1, "report_id=?"

    .line 209
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 210
    .local v0, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "error_reports"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteErrorReports(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "reportIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    monitor-enter v2

    .line 186
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->write()V

    .line 187
    sget-object v1, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "reportId":Ljava/lang/String;
    invoke-static {v0}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->deleteErrorReportUnsafe(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v0    # "reportId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 191
    :cond_2
    :try_start_1
    sget-object v1, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 192
    sget-object v1, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 193
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->close()V

    .line 194
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getErrorReportsByType(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "reportType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/ErrorReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v9, "errorReports":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/ErrorReport;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-object v9

    .line 143
    :cond_0
    const-string/jumbo v3, "report_type=?"

    .line 144
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    .line 145
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v10, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    monitor-enter v10

    .line 146
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->read()V

    .line 147
    sget-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "error_reports"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 148
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-static {v8}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->cursorToErrorReport(Landroid/database/Cursor;)Lcom/helpshift/support/model/ErrorReport;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 156
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 154
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->close()V

    .line 156
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static hasReports()Z
    .locals 5

    .prologue
    .line 167
    sget-object v3, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    monitor-enter v3

    .line 168
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->read()V

    .line 169
    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "error_reports"

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 170
    .local v0, "rows":J
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->close()V

    .line 171
    monitor-exit v3

    .line 172
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 171
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 172
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static read()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method

.method private static reportToContentValues(Lcom/helpshift/support/model/ErrorReport;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "errorReport"    # Lcom/helpshift/support/model/ErrorReport;

    .prologue
    .line 44
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "report_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getReportId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "report_type"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getReportType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v2, "device_info"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getDeviceInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v3, "hs_funnel"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getHelpshiftContext()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "funnel"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v3, "bread_crumbs"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getHelpshiftContext()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "bread_crumbs"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v3, "profile_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getConversationContext()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "profile_id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v3, "active_conversation_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getConversationContext()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "active_conversation_id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v3, "active_message_ids"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getConversationContext()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "active_message_ids"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v2, "thread_info"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getErrorData()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "thread_info"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getErrorData()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "timestamp"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getErrorData()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "exception_detail"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/helpshift/support/model/ErrorReport;->throwableToBytes(Ljava/lang/Throwable;)[B

    move-result-object v0

    .line 59
    .local v0, "bytesExceptionDetail":[B
    const-string/jumbo v2, "exception_detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 61
    return-object v1
.end method

.method public static storeErrorReport(Lcom/helpshift/support/model/ErrorReport;)V
    .locals 2
    .param p0, "errorReport"    # Lcom/helpshift/support/model/ErrorReport;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v1, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    monitor-enter v1

    .line 123
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->write()V

    .line 124
    invoke-static {p0}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->storeReportUnsafe(Lcom/helpshift/support/model/ErrorReport;)V

    .line 125
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->close()V

    .line 126
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static storeReportUnsafe(Lcom/helpshift/support/model/ErrorReport;)V
    .locals 6
    .param p0, "errorReport"    # Lcom/helpshift/support/model/ErrorReport;

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v1, "report_id=?"

    .line 103
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/helpshift/support/model/ErrorReport;->getReportId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 104
    .local v0, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "error_reports"

    invoke-static {v2, v3, v1, v0}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "error_reports"

    invoke-static {p0}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->reportToContentValues(Lcom/helpshift/support/model/ErrorReport;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "error_reports"

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->reportToContentValues(Lcom/helpshift/support/model/ErrorReport;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private static write()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->helper:Lcom/helpshift/support/storage/ErrorReportsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/storage/ErrorReportsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method
