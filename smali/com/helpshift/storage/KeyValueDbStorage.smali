.class public Lcom/helpshift/storage/KeyValueDbStorage;
.super Ljava/lang/Object;
.source "KeyValueDbStorage.java"

# interfaces
.implements Lcom/helpshift/storage/KeyValueStorage;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"

.field private static final backupFileName:Ljava/lang/String; = "__hs__kv_backup"


# instance fields
.field private backupData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Lcom/helpshift/storage/KeyValueDbStorageHelper;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpshift/storage/KeyValueDbStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    .line 32
    const-string/jumbo v1, "__hs__kv_backup"

    invoke-static {v1}, Lcom/helpshift/util/DBUtil;->restoreHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->backupData:Ljava/util/HashMap;

    .line 33
    iget-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->backupData:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->backupData:Ljava/util/HashMap;

    .line 40
    :cond_0
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->backupData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/Serializable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {p0, v1, v2}, Lcom/helpshift/storage/KeyValueDbStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-object v10

    .line 90
    :cond_0
    const/4 v10, 0x0

    .line 91
    .local v10, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    monitor-enter v11

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->read()V

    .line 93
    const-string/jumbo v3, "key=?"

    .line 94
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 95
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "key_value_store"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/ByteArrayUtil;->toObject([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 103
    .end local v10    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 104
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    .line 105
    monitor-exit v11

    goto :goto_0

    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 99
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 100
    .local v9, "exception":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getAllKeys()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v9, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    monitor-enter v10

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->read()V

    .line 115
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "key_value_store"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 116
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 124
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    .line 124
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    return-object v9
.end method

.method public read()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/KeyValueDbStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 163
    return-void
.end method

.method public removeAllKeys()V
    .locals 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->write()V

    .line 153
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 154
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "key_value_store"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 156
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    monitor-enter v3

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->write()V

    .line 137
    iget-object v2, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 138
    const-string/jumbo v1, "key=?"

    .line 139
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 140
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "key_value_store"

    invoke-static {v2, v4, v1, v0}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "key_value_store"

    invoke-virtual {v2, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 144
    iget-object v2, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    .line 146
    monitor-exit v3

    goto :goto_0

    .end local v0    # "whereArgs":[Ljava/lang/String;
    .end local v1    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public set(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    .local v1, "setValue":Z
    iget-object v6, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    monitor-enter v6

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->write()V

    .line 61
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    const-string/jumbo v4, "key=?"

    .line 63
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "key"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "value"

    invoke-static {p2}, Lcom/helpshift/util/ByteArrayUtil;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 68
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "key_value_store"

    invoke-static {v5, v7, v4, v3}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "key_value_store"

    invoke-virtual {v5, v7, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :goto_1
    const/4 v1, 0x1

    .line 77
    :try_start_2
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 78
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    .line 81
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_2
    monitor-exit v6

    goto :goto_0

    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 71
    .restart local v2    # "values":Landroid/content/ContentValues;
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    .restart local v4    # "whereClause":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "key_value_store"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 74
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ioException":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v5, "HelpshiftDebug"

    const-string/jumbo v7, "IOException in clearing data : "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :try_start_5
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 78
    iget-object v5, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    goto :goto_2

    .line 77
    .end local v0    # "ioException":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    iget-object v7, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 78
    iget-object v7, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    invoke-virtual {p0}, Lcom/helpshift/storage/KeyValueDbStorage;->close()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setWithBackup(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/storage/KeyValueDbStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->backupData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v0, "__hs__kv_backup"

    iget-object v2, p0, Lcom/helpshift/storage/KeyValueDbStorage;->backupData:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/helpshift/util/DBUtil;->backupHashMap(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 48
    monitor-exit v1

    .line 50
    :cond_0
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Lcom/helpshift/storage/KeyValueDbStorageHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/KeyValueDbStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    return-void
.end method
