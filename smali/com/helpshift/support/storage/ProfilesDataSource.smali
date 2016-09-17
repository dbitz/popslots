.class public Lcom/helpshift/support/storage/ProfilesDataSource;
.super Ljava/lang/Object;
.source "ProfilesDataSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/helpshift/support/storage/ProfilesDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "IDENTIFIER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "profile_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "salt"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->allColumns:[Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/helpshift/support/storage/ProfilesDBHelper;

    invoke-direct {v0, p1}, Lcom/helpshift/support/storage/ProfilesDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->dbHelper:Lcom/helpshift/support/storage/ProfilesDBHelper;

    .line 26
    return-void
.end method

.method private cursorToProfile(Landroid/database/Cursor;)Lcom/helpshift/support/model/Profile;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    new-instance v0, Lcom/helpshift/support/model/Profile;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/model/Profile;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "profile":Lcom/helpshift/support/model/Profile;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/Profile;->setId(Ljava/lang/Long;)V

    .line 83
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/Profile;->setProfileId(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/Profile;->setName(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/Profile;->setEmail(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/Profile;->setSalt(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private profileToContentValues(Lcom/helpshift/support/model/Profile;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "profile"    # Lcom/helpshift/support/model/Profile;

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "IDENTIFIER"

    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "profile_id"

    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "email"

    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "salt"

    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getSalt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addProfile(Lcom/helpshift/support/model/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/helpshift/support/model/Profile;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/storage/ProfilesDataSource;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ProfilesDataSource;->createProfile(Lcom/helpshift/support/model/Profile;)V

    .line 46
    :goto_0
    const-string/jumbo v0, "__hs__db_profiles"

    invoke-static {v0}, Lcom/helpshift/util/DBUtil;->backupDatabase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ProfilesDataSource;->updateProfile(Lcom/helpshift/support/model/Profile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->dbHelper:Lcom/helpshift/support/storage/ProfilesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/ProfilesDBHelper;->close()V

    .line 38
    return-void
.end method

.method public declared-synchronized createProfile(Lcom/helpshift/support/model/Profile;)V
    .locals 4
    .param p1, "profile"    # Lcom/helpshift/support/model/Profile;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/ProfilesDataSource;->write()V

    .line 51
    invoke-direct {p0, p1}, Lcom/helpshift/support/storage/ProfilesDataSource;->profileToContentValues(Lcom/helpshift/support/model/Profile;)Landroid/content/ContentValues;

    move-result-object v0

    .line 52
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "profiles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/support/storage/ProfilesDataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/ProfilesDataSource;->read()V

    .line 68
    iget-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "profiles"

    iget-object v2, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->allColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IDENTIFIER = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 71
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 72
    .local v9, "profile":Lcom/helpshift/support/model/Profile;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, v8}, Lcom/helpshift/support/storage/ProfilesDataSource;->cursorToProfile(Landroid/database/Cursor;)Lcom/helpshift/support/model/Profile;

    move-result-object v9

    .line 75
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 76
    invoke-virtual {p0}, Lcom/helpshift/support/storage/ProfilesDataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-object v9

    .line 67
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "profile":Lcom/helpshift/support/model/Profile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->dbHelper:Lcom/helpshift/support/storage/ProfilesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/ProfilesDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    return-void
.end method

.method public declared-synchronized updateProfile(Lcom/helpshift/support/model/Profile;)V
    .locals 5
    .param p1, "profile"    # Lcom/helpshift/support/model/Profile;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/ProfilesDataSource;->write()V

    .line 59
    invoke-direct {p0, p1}, Lcom/helpshift/support/storage/ProfilesDataSource;->profileToContentValues(Lcom/helpshift/support/model/Profile;)Landroid/content/ContentValues;

    move-result-object v0

    .line 60
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "profiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IDENTIFIER = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    invoke-virtual {p1}, Lcom/helpshift/support/model/Profile;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 60
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/helpshift/support/storage/ProfilesDataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public write()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->dbHelper:Lcom/helpshift/support/storage/ProfilesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/ProfilesDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/ProfilesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    return-void
.end method
