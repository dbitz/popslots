.class public Lcom/helpshift/support/storage/FaqsDataSource;
.super Ljava/lang/Object;
.source "FaqsDataSource.java"

# interfaces
.implements Lcom/helpshift/support/storage/FaqDAO;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/helpshift/support/storage/FaqsDBHelper;->getInstance()Lcom/helpshift/support/storage/FaqsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    .line 33
    return-void
.end method

.method public static addFaqsUnsafe(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 6
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "faqs"    # Lorg/json/JSONArray;

    .prologue
    .line 259
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 260
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 261
    .local v1, "faq":Lorg/json/JSONObject;
    const-string/jumbo v3, "faqs"

    const/4 v4, 0x0

    invoke-static {p1, v1}, Lcom/helpshift/support/storage/FaqsDataSource;->faqToContentValues(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "faq":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private createFaq(Lcom/helpshift/support/Faq;)V
    .locals 5
    .param p1, "faq"    # Lcom/helpshift/support/Faq;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/helpshift/support/storage/FaqsDataSource;->faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;

    move-result-object v0

    .line 59
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v2

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->write()V

    .line 61
    iget-object v1, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "faqs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 62
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 63
    monitor-exit v2

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;
    .locals 13
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 269
    new-instance v1, Lcom/helpshift/support/Faq;

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 270
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 271
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 272
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 273
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    .line 274
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    .line 275
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x7

    .line 276
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v0, 0x8

    .line 277
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const/16 v0, 0x9

    .line 278
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_0
    move v0, v10

    .line 276
    goto :goto_0
.end method

.method private static cursorToFaqForUI(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;
    .locals 13
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    .line 282
    new-instance v1, Lcom/helpshift/support/Faq;

    const-wide/16 v2, 0x0

    .line 283
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 284
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    .line 285
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    .line 286
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    .line 289
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v1 .. v12}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private static faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "faq"    # Lcom/helpshift/support/Faq;

    .prologue
    .line 295
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "question_id"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "publish_id"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "section_id"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getSectionPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "helpful"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getIsHelpful()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string/jumbo v1, "rtl"

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getIsRtl()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 303
    const-string/jumbo v1, "tags"

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v1, "c_tags"

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object v0
.end method

.method private static faqToContentValues(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "sectionPublishId"    # Ljava/lang/String;
    .param p1, "faq"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "question_id"

    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "publish_id"

    const-string/jumbo v2, "publish_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, "section_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v1, "body"

    const-string/jumbo v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v1, "helpful"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string/jumbo v1, "rtl"

    const-string/jumbo v2, "is_rtl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 318
    const-string/jumbo v2, "tags"

    const-string/jumbo v1, "stags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v2, "c_tags"

    const-string/jumbo v1, "issue_tags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "issue_tags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-object v0

    .line 318
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 319
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getANDFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .locals 6
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v3, "filteredFaqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 196
    .local v1, "faq":Lcom/helpshift/support/Faq;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getTags()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    .local v2, "filterTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 199
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "faq":Lcom/helpshift/support/Faq;
    .end local v2    # "filterTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method private getNOTFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .locals 6
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v3, "filteredFaqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 223
    .local v1, "faq":Lcom/helpshift/support/Faq;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getTags()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v2, "filterTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v0    # "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "faq":Lcom/helpshift/support/Faq;
    .end local v2    # "filterTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method private getORFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .locals 6
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, "filteredFaqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 210
    .local v1, "faq":Lcom/helpshift/support/Faq;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getTags()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .local v2, "filterTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "faq":Lcom/helpshift/support/Faq;
    .end local v2    # "filterTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method private updateFaq(Lcom/helpshift/support/Faq;)V
    .locals 8
    .param p1, "faq"    # Lcom/helpshift/support/Faq;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/helpshift/support/storage/FaqsDataSource;->faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;

    move-result-object v0

    .line 69
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v2

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->write()V

    .line 71
    iget-object v1, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "faqs"

    const-string/jumbo v4, "question_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 71
    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 75
    monitor-exit v2

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addFaq(Lcom/helpshift/support/Faq;)V
    .locals 1
    .param p1, "faq"    # Lcom/helpshift/support/Faq;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/helpshift/support/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/storage/FaqsDataSource;->getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/helpshift/support/storage/FaqsDataSource;->createFaq(Lcom/helpshift/support/Faq;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/support/storage/FaqsDataSource;->updateFaq(Lcom/helpshift/support/Faq;)V

    goto :goto_0
.end method

.method public clearDB()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->read()V

    .line 50
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    iget-object v2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/storage/FaqsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    iget-object v2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/storage/FaqsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
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
    .line 44
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/FaqsDBHelper;->close()V

    .line 45
    return-void
.end method

.method public getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;
    .locals 11
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v9, Lcom/helpshift/support/Faq;

    invoke-direct {v9}, Lcom/helpshift/support/Faq;-><init>()V

    .line 108
    :goto_0
    return-object v9

    .line 93
    :cond_0
    const/4 v9, 0x0

    .line 95
    .local v9, "faq":Lcom/helpshift/support/Faq;
    iget-object v10, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v10

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->read()V

    .line 97
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "faqs"

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

    .line 101
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {v8}, Lcom/helpshift/support/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object v9

    .line 104
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 106
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

.method public getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 136
    :goto_0
    return-object v10

    .line 117
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v10, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    iget-object v11, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v11

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->read()V

    .line 121
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "faqs"

    const/4 v2, 0x0

    const-string/jumbo v3, "section_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 125
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-static {v8}, Lcom/helpshift/support/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object v9

    .line 128
    .local v9, "faq":Lcom/helpshift/support/Faq;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 134
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "faq":Lcom/helpshift/support/Faq;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 132
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 134
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getFaqsForSection(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :goto_0
    return-object v10

    .line 145
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v10, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    iget-object v11, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v11

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->read()V

    .line 149
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "faqs"

    sget-object v2, Lcom/helpshift/support/constants/FaqsColumns;->UI_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "section_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

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
    invoke-static {v8}, Lcom/helpshift/support/storage/FaqsDataSource;->cursorToFaqForUI(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object v9

    .line 157
    .local v9, "faq":Lcom/helpshift/support/Faq;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 163
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "faq":Lcom/helpshift/support/Faq;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 161
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 163
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .locals 2
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/FaqsDataSource;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "faqsForSection":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-virtual {p0, v0, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .locals 2
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    if-nez p2, :cond_0

    .line 183
    .end local p1    # "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    :goto_0
    :pswitch_0
    return-object p1

    .line 173
    .restart local p1    # "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    :cond_0
    sget-object v0, Lcom/helpshift/support/storage/FaqsDataSource$1;->$SwitchMap$com$helpshift$support$FaqTagFilter$Operator:[I

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getOperator()Lcom/helpshift/support/FaqTagFilter$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/FaqTagFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getANDFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 177
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getORFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 179
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getNOTFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public read()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    return-void
.end method

.method public setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 9
    .param p1, "questionId"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "returnVal":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .line 251
    .end local v0    # "returnVal":I
    .local v1, "returnVal":I
    :goto_0
    return v1

    .line 239
    .end local v1    # "returnVal":I
    .restart local v0    # "returnVal":I
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "helpful"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    iget-object v4, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    monitor-enter v4

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->write()V

    .line 244
    iget-object v3, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "faqs"

    const-string/jumbo v6, "question_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 248
    invoke-virtual {p0}, Lcom/helpshift/support/storage/FaqsDataSource;->close()V

    .line 249
    monitor-exit v4

    move v1, v0

    .line 251
    .end local v0    # "returnVal":I
    .restart local v1    # "returnVal":I
    goto :goto_0

    .line 240
    .end local v1    # "returnVal":I
    .restart local v0    # "returnVal":I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public write()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/storage/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method
