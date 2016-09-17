.class public Lcom/helpshift/support/storage/IssuesDataSource;
.super Ljava/lang/Object;
.source "IssuesDataSource.java"


# static fields
.field private static database:Landroid/database/sqlite/SQLiteDatabase;

.field private static final helper:Lcom/helpshift/support/storage/IssuesDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/helpshift/support/storage/IssuesDBHelper;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/storage/IssuesDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDB()V
    .locals 3

    .prologue
    .line 47
    sget-object v1, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 49
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/storage/IssuesDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/storage/IssuesDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static close()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
    return-void
.end method

.method public static createDB()V
    .locals 2

    .prologue
    .line 40
    sget-object v1, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v1

    .line 41
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 42
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static cursorToIssue(Landroid/database/Cursor;)Lcom/helpshift/support/model/Issue;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    .line 167
    const-string/jumbo v11, "profile_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "profileId":Ljava/lang/String;
    const-string/jumbo v11, "issue_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "issueId":Ljava/lang/String;
    const-string/jumbo v11, "body"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "body":Ljava/lang/String;
    const-string/jumbo v11, "title"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v11, "created_at"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "createdAt":Ljava/lang/String;
    const-string/jumbo v11, "updated_at"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "updatedAt":Ljava/lang/String;
    const-string/jumbo v11, "status"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 174
    .local v7, "status":I
    const-string/jumbo v11, "new_message_count"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 175
    .local v9, "newMessageCount":I
    const-string/jumbo v11, "show_agent_name"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 177
    .local v10, "showAgentName":I
    new-instance v0, Lcom/helpshift/support/model/IssueBuilder;

    if-ne v10, v8, :cond_0

    :goto_0
    invoke-direct/range {v0 .. v8}, Lcom/helpshift/support/model/IssueBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 186
    .local v0, "issueBuilder":Lcom/helpshift/support/model/IssueBuilder;
    invoke-virtual {v0, v9}, Lcom/helpshift/support/model/IssueBuilder;->setNewMessagesCount(I)Lcom/helpshift/support/model/IssueBuilder;

    move-result-object v8

    .line 187
    invoke-virtual {v8}, Lcom/helpshift/support/model/IssueBuilder;->build()Lcom/helpshift/support/model/Issue;

    move-result-object v8

    return-object v8

    .line 177
    .end local v0    # "issueBuilder":Lcom/helpshift/support/model/IssueBuilder;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private static cursorToMessage(Landroid/database/Cursor;)Lcom/helpshift/support/model/Message;
    .locals 15
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 367
    const-string/jumbo v13, "issue_id"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "issueId":Ljava/lang/String;
    const-string/jumbo v13, "message_id"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "messageId":Ljava/lang/String;
    const-string/jumbo v13, "body"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "body":Ljava/lang/String;
    const-string/jumbo v13, "origin"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "origin":Ljava/lang/String;
    const-string/jumbo v13, "type"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v13, "created_at"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "createdAt":Ljava/lang/String;
    const-string/jumbo v13, "author"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "author":Ljava/lang/String;
    const-string/jumbo v13, "meta"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "meta":Ljava/lang/String;
    const-string/jumbo v13, "screenshot"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, "screenshot":Ljava/lang/String;
    const-string/jumbo v13, "message_seen"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 377
    .local v11, "messageSeen":I
    const-string/jumbo v13, "invisible"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 378
    .local v10, "invisible":I
    const-string/jumbo v13, "in_progress"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 380
    .local v9, "inProgress":I
    new-instance v0, Lcom/helpshift/support/model/MessageBuilder;

    invoke-direct/range {v0 .. v8}, Lcom/helpshift/support/model/MessageBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .local v0, "messageBuilder":Lcom/helpshift/support/model/MessageBuilder;
    invoke-virtual {v0, v12}, Lcom/helpshift/support/model/MessageBuilder;->setScreenshot(Ljava/lang/String;)Lcom/helpshift/support/model/MessageBuilder;

    move-result-object v14

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    const/4 v13, 0x1

    .line 390
    :goto_0
    invoke-virtual {v14, v13}, Lcom/helpshift/support/model/MessageBuilder;->setMessageSeen(Z)Lcom/helpshift/support/model/MessageBuilder;

    move-result-object v14

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    const/4 v13, 0x1

    .line 391
    :goto_1
    invoke-virtual {v14, v13}, Lcom/helpshift/support/model/MessageBuilder;->setInvisible(Z)Lcom/helpshift/support/model/MessageBuilder;

    move-result-object v14

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    const/4 v13, 0x1

    .line 392
    :goto_2
    invoke-virtual {v14, v13}, Lcom/helpshift/support/model/MessageBuilder;->setInProgress(Z)Lcom/helpshift/support/model/MessageBuilder;

    move-result-object v13

    .line 393
    invoke-virtual {v13}, Lcom/helpshift/support/model/MessageBuilder;->build()Lcom/helpshift/support/model/Message;

    move-result-object v13

    return-object v13

    .line 389
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 390
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 391
    :cond_2
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public static deleteMessage(Ljava/lang/String;)V
    .locals 6
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 359
    sget-object v1, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v1

    .line 360
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->write()V

    .line 361
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "message_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getCurrentNewMessagesCount(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p0, "whereClause"    # Ljava/lang/String;
    .param p1, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    .local v8, "currentNewMessagesCount":I
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "issues"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "new_message_count"

    aput-object v4, v2, v3

    move-object v3, p0

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 100
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "new_message_count"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 103
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 104
    return v8
.end method

.method public static getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;
    .locals 11
    .param p0, "issueId"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, "issue":Lcom/helpshift/support/model/Issue;
    sget-object v10, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v10

    .line 124
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 125
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "issues"

    const/4 v2, 0x0

    const-string/jumbo v3, "issue_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {v8}, Lcom/helpshift/support/storage/IssuesDataSource;->cursorToIssue(Landroid/database/Cursor;)Lcom/helpshift/support/model/Issue;

    move-result-object v9

    .line 131
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 133
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v9, :cond_1

    .line 136
    invoke-virtual {v9}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    .line 139
    :cond_1
    return-object v9

    .line 133
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getIssues(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Issue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v9, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-object v9

    .line 149
    :cond_0
    sget-object v10, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v10

    .line 150
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 151
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "issues"

    const/4 v2, 0x0

    const-string/jumbo v3, "profile_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 154
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-static {v8}, Lcom/helpshift/support/storage/IssuesDataSource;->cursorToIssue(Landroid/database/Cursor;)Lcom/helpshift/support/model/Issue;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 162
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 162
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getMessage(Ljava/lang/String;)Lcom/helpshift/support/model/Message;
    .locals 11
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v9, 0x0

    .line 344
    .local v9, "message":Lcom/helpshift/support/model/Message;
    sget-object v10, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v10

    .line 345
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 346
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "messages"

    const/4 v2, 0x0

    const-string/jumbo v3, "message_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 349
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {v8}, Lcom/helpshift/support/storage/IssuesDataSource;->cursorToMessage(Landroid/database/Cursor;)Lcom/helpshift/support/model/Message;

    move-result-object v9

    .line 352
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 353
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 354
    monitor-exit v10

    .line 355
    return-object v9

    .line 354
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMessageIds(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 305
    :goto_0
    return-object v10

    .line 285
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v10, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "issue_id=?"

    .line 287
    .local v3, "whereClause":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    aput-object p0, v4, v1

    .line 289
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v11, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v11

    .line 290
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 291
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "message_id"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 294
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    const-string/jumbo v0, "message_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, "messageId":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 303
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 301
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 302
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 303
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "issue_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMessages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "whereClause"    # Ljava/lang/String;
    .param p1, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v9, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    sget-object v10, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v10

    .line 326
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->read()V

    .line 327
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "messages"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-static {v8}, Lcom/helpshift/support/storage/IssuesDataSource;->cursorToMessage(Landroid/database/Cursor;)Lcom/helpshift/support/model/Message;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 338
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 336
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 337
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 338
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    return-object v9
.end method

.method public static getUnseenMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    :goto_0
    return-object v2

    .line 313
    :cond_0
    const-string/jumbo v1, "issue_id=? AND message_seen=? AND origin=?"

    .line 318
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    aput-object p0, v0, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "admin"

    aput-object v3, v0, v2

    .line 320
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private static insertMessageUnsafe(Lcom/helpshift/support/model/Message;)I
    .locals 8
    .param p0, "message"    # Lcom/helpshift/support/model/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    const-string/jumbo v1, "message_id=?"

    .line 236
    .local v1, "whereClause":Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 237
    .local v0, "whereArgs":[Ljava/lang/String;
    sget-object v4, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "messages"

    invoke-static {v4, v5, v1, v0}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "messages"

    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->messageToContentValues(Lcom/helpshift/support/model/Message;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    move v2, v3

    .line 246
    :goto_0
    return v2

    .line 241
    :cond_1
    sget-object v4, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "messages"

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->messageToContentValues(Lcom/helpshift/support/model/Message;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 242
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getOrigin()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "admin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private static insertMessagesUnsafe(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    const/4 v1, 0x0

    .line 221
    .local v1, "newMessagesCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/model/Message;

    .line 222
    .local v0, "message":Lcom/helpshift/support/model/Message;
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->insertMessageUnsafe(Lcom/helpshift/support/model/Message;)I

    move-result v3

    add-int/2addr v1, v3

    .line 223
    goto :goto_0

    .line 224
    .end local v0    # "message":Lcom/helpshift/support/model/Message;
    :cond_0
    return v1
.end method

.method private static issueToContentValue(Lcom/helpshift/support/model/Issue;I)Landroid/content/ContentValues;
    .locals 3
    .param p0, "issue"    # Lcom/helpshift/support/model/Issue;
    .param p1, "newMessagesCount"    # I

    .prologue
    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "profile_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "issue_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "created_at"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v1, "updated_at"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getUpdatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "status"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string/jumbo v1, "new_message_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string/jumbo v2, "show_agent_name"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->isShowAgentName()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    return-object v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static messageToContentValues(Lcom/helpshift/support/model/Message;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "message"    # Lcom/helpshift/support/model/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "issue_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v1, "message_id"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v1, "origin"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v1, "created_at"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "author"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v1, "meta"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getMeta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "screenshot"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getScreenshot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v4, "message_seen"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->isMessageSeen()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string/jumbo v4, "invisible"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string/jumbo v1, "in_progress"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    return-object v0

    :cond_0
    move v1, v3

    .line 260
    goto :goto_0

    :cond_1
    move v1, v3

    .line 261
    goto :goto_1

    :cond_2
    move v2, v3

    .line 262
    goto :goto_2
.end method

.method private static read()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/IssuesDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method

.method public static storeIssue(Lcom/helpshift/support/model/Issue;)I
    .locals 2
    .param p0, "issue"    # Lcom/helpshift/support/model/Issue;

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeIssues(Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method public static storeIssues(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Issue;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "newIssuesCount":I
    invoke-static {p0}, Lcom/helpshift/support/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    .line 92
    .end local v1    # "newIssuesCount":I
    .local v2, "newIssuesCount":I
    :goto_0
    return v2

    .line 68
    .end local v2    # "newIssuesCount":I
    .restart local v1    # "newIssuesCount":I
    :cond_0
    sget-object v7, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v7

    .line 69
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->write()V

    .line 70
    sget-object v6, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 71
    const-string/jumbo v5, "issue_id=?"

    .line 72
    .local v5, "whereClause":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/model/Issue;

    .line 73
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/helpshift/support/storage/IssuesDataSource;->insertMessagesUnsafe(Ljava/util/List;)I

    move-result v3

    .line 74
    .local v3, "newMessagesCount":I
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 75
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v8, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "issues"

    invoke-static {v8, v9, v5, v4}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getNewMessagesCount()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 78
    invoke-static {v5, v4}, Lcom/helpshift/support/storage/IssuesDataSource;->getCurrentNewMessagesCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v3, v8

    .line 80
    :cond_1
    sget-object v8, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "issues"

    invoke-static {v0, v3}, Lcom/helpshift/support/storage/IssuesDataSource;->issueToContentValue(Lcom/helpshift/support/model/Issue;I)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v0    # "issue":Lcom/helpshift/support/model/Issue;
    .end local v3    # "newMessagesCount":I
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 83
    .restart local v0    # "issue":Lcom/helpshift/support/model/Issue;
    .restart local v3    # "newMessagesCount":I
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v5    # "whereClause":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "issues"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/helpshift/support/storage/IssuesDataSource;->issueToContentValue(Lcom/helpshift/support/model/Issue;I)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "issue":Lcom/helpshift/support/model/Issue;
    .end local v3    # "newMessagesCount":I
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 88
    sget-object v6, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 89
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 90
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 92
    .end local v1    # "newIssuesCount":I
    .restart local v2    # "newIssuesCount":I
    goto :goto_0
.end method

.method public static storeMessage(Lcom/helpshift/support/model/Message;)I
    .locals 3
    .param p0, "message"    # Lcom/helpshift/support/model/Message;

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "newMessageCount":I
    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v2

    .line 212
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->write()V

    .line 213
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->insertMessageUnsafe(Lcom/helpshift/support/model/Message;)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 215
    monitor-exit v2

    .line 216
    return v0

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static storeMessages(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    const/4 v0, 0x0

    .line 193
    .local v0, "newMessagesCount":I
    invoke-static {p0}, Lcom/helpshift/support/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 206
    .end local v0    # "newMessagesCount":I
    .local v1, "newMessagesCount":I
    :goto_0
    return v1

    .line 197
    .end local v1    # "newMessagesCount":I
    .restart local v0    # "newMessagesCount":I
    :cond_0
    sget-object v3, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    monitor-enter v3

    .line 198
    :try_start_0
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->write()V

    .line 199
    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 200
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->insertMessagesUnsafe(Ljava/util/List;)I

    move-result v0

    .line 201
    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 202
    sget-object v2, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 203
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->close()V

    .line 204
    monitor-exit v3

    move v1, v0

    .line 206
    .end local v0    # "newMessagesCount":I
    .restart local v1    # "newMessagesCount":I
    goto :goto_0

    .line 204
    .end local v1    # "newMessagesCount":I
    .restart local v0    # "newMessagesCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static write()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->helper:Lcom/helpshift/support/storage/IssuesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/IssuesDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    return-void
.end method
