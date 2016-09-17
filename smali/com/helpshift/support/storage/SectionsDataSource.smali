.class public Lcom/helpshift/support/storage/SectionsDataSource;
.super Ljava/lang/Object;
.source "SectionsDataSource.java"

# interfaces
.implements Lcom/helpshift/support/storage/SectionDAO;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

.field private faqDAO:Lcom/helpshift/support/storage/FaqDAO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/helpshift/support/storage/FaqsDBHelper;->getInstance()Lcom/helpshift/support/storage/FaqsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    .line 32
    new-instance v0, Lcom/helpshift/support/storage/FaqsDataSource;

    invoke-direct {v0}, Lcom/helpshift/support/storage/FaqsDataSource;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    .line 33
    return-void
.end method

.method private static cursorToSection(Landroid/database/Cursor;)Lcom/helpshift/support/Section;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 36
    new-instance v1, Lcom/helpshift/support/Section;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    .line 37
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    .line 38
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    .line 39
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/support/Section;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static sectionToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "section"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "publish_id"

    const-string/jumbo v2, "publish_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "section_id"

    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public clearSectionsData()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->write()V

    .line 161
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    iget-object v2, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/storage/FaqsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    iget-object v2, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/storage/FaqsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->close()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/FaqsDBHelper;->close()V

    .line 61
    return-void
.end method

.method public getAllSections()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v10, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    iget-object v11, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v11

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->read()V

    .line 121
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sections"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {v8}, Lcom/helpshift/support/storage/SectionsDataSource;->cursorToSection(Landroid/database/Cursor;)Lcom/helpshift/support/Section;

    move-result-object v9

    .line 131
    .local v9, "section":Lcom/helpshift/support/Section;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 136
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "section":Lcom/helpshift/support/Section;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 135
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->close()V

    .line 136
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-object v10
.end method

.method public getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .locals 7
    .param p1, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->getAllSections()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "allSections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    if-nez p1, :cond_0

    .line 154
    .end local v0    # "allSections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "allSections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "filteredSections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/Section;

    .line 149
    .local v3, "section":Lcom/helpshift/support/Section;
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-virtual {v3}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Lcom/helpshift/support/storage/FaqDAO;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "faqsForSection":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "faqsForSection":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    .end local v3    # "section":Lcom/helpshift/support/Section;
    :cond_2
    move-object v0, v2

    .line 154
    goto :goto_0
.end method

.method public getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;
    .locals 11
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    new-instance v9, Lcom/helpshift/support/Section;

    invoke-direct {v9}, Lcom/helpshift/support/Section;-><init>()V

    .line 113
    :goto_0
    return-object v9

    .line 95
    :cond_1
    const/4 v9, 0x0

    .line 96
    .local v9, "section":Lcom/helpshift/support/Section;
    iget-object v10, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v10

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->read()V

    .line 98
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sections"

    const/4 v2, 0x0

    const-string/jumbo v3, "publish_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 105
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-static {v8}, Lcom/helpshift/support/storage/SectionsDataSource;->cursorToSection(Landroid/database/Cursor;)Lcom/helpshift/support/Section;

    move-result-object v9

    .line 109
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->close()V

    .line 111
    monitor-exit v10

    goto :goto_0

    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    return-void
.end method

.method public storeSections(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "sections"    # Lorg/json/JSONArray;

    .prologue
    .line 65
    iget-object v6, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v6

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 70
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    .local v3, "section":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "sections"

    const/4 v8, 0x0

    invoke-static {v3}, Lcom/helpshift/support/storage/SectionsDataSource;->sectionToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 73
    const-string/jumbo v5, "faqs"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 74
    .local v1, "faqs":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v5, "publish_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "sectionPublishId":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, v1}, Lcom/helpshift/support/storage/FaqsDataSource;->addFaqsUnsafe(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 69
    .end local v4    # "sectionPublishId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "faqs":Lorg/json/JSONArray;
    .end local v3    # "section":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :try_start_2
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    .end local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/helpshift/support/storage/SectionsDataSource;->close()V

    .line 86
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v7, "JSONException"

    invoke-static {v5, v7, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :try_start_4
    iget-object v5, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 83
    :catchall_1
    move-exception v5

    :try_start_5
    iget-object v7, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public write()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    return-void
.end method
