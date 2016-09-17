.class public final Lcom/helpshift/support/HSSearch;
.super Ljava/lang/Object;
.source "HSSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static indexing:Z

.field private static markDeinit:Z

.field private static metaPhone:Lcom/helpshift/support/external/DoubleMetaphone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/helpshift/support/external/DoubleMetaphone;

    invoke-direct {v0}, Lcom/helpshift/support/external/DoubleMetaphone;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSSearch;->metaPhone:Lcom/helpshift/support/external/DoubleMetaphone;

    .line 22
    sput-boolean v1, Lcom/helpshift/support/HSSearch;->indexing:Z

    .line 23
    sput-boolean v1, Lcom/helpshift/support/HSSearch;->markDeinit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/support/external/DoubleMetaphone;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/helpshift/support/HSSearch;->metaPhone:Lcom/helpshift/support/external/DoubleMetaphone;

    return-object v0
.end method

.method protected static buildFuzzyIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;)",
            "Ljava/util/HashMap;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v3, "fuzzyIndex":Ljava/util/HashMap;
    const/4 v4, 0x0

    .line 386
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Faq;

    .line 387
    .local v0, "doc":Lcom/helpshift/support/Faq;
    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, "title":Ljava/lang/String;
    invoke-static {v7}, Lcom/helpshift/support/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/helpshift/support/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 389
    .local v8, "token":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 390
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_0

    .line 391
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v9, "tokenMap":Ljava/util/HashMap;
    const-string/jumbo v12, "w"

    invoke-virtual {v9, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v12, "id"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "firstCharacter":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 396
    .local v1, "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-nez v1, :cond_1

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .restart local v1    # "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_1
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/4 v12, 0x1

    const/4 v13, 0x2

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "secondCharacter":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 404
    .local v5, "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-nez v5, :cond_2

    .line 405
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .restart local v5    # "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_2
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    .end local v1    # "firstCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v2    # "firstCharacter":Ljava/lang/String;
    .end local v5    # "secondCharIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v6    # "secondCharacter":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    .end local v9    # "tokenMap":Ljava/util/HashMap;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 412
    goto/16 :goto_0

    .line 413
    .end local v0    # "doc":Lcom/helpshift/support/Faq;
    .end local v7    # "title":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method protected static buildTfidfIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;)",
            "Ljava/util/HashMap;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 315
    .local v24, "totalDocNum":Ljava/lang/Integer;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v13, "indexedDocs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 317
    .local v10, "i":Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/Faq;

    .line 318
    .local v4, "doc":Lcom/helpshift/support/Faq;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v12, "indexedDoc":Ljava/util/HashMap;
    const-string/jumbo v26, "terms"

    invoke-virtual {v4}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v4}, Lcom/helpshift/support/Faq;->getBody()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4}, Lcom/helpshift/support/Faq;->getTags()Ljava/util/List;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Lcom/helpshift/support/HSSearch;->indexDocument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v26, "id"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 322
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    .end local v4    # "doc":Lcom/helpshift/support/Faq;
    .end local v12    # "indexedDoc":Ljava/util/HashMap;
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v9, "globalTerms":Ljava/util/HashMap;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 326
    .local v4, "doc":Ljava/util/HashMap;
    const-string/jumbo v25, "id"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    .local v6, "docId":Ljava/lang/String;
    const-string/jumbo v25, "terms"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 328
    .local v21, "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 329
    .local v17, "term":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 330
    .local v18, "termFreq":I
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 331
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 332
    .local v19, "termMap":Ljava/util/HashMap;
    const-string/jumbo v25, "maxFreq"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 333
    .local v15, "maxFreq":Ljava/lang/Integer;
    if-nez v15, :cond_2

    .line 334
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 336
    :cond_2
    const-string/jumbo v25, "docFreq"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 337
    .local v5, "docFreq":Ljava/lang/Integer;
    if-nez v5, :cond_4

    .line 338
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 343
    :goto_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 344
    const-string/jumbo v25, "maxFreq"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_3
    const-string/jumbo v25, "docFreq"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 340
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 349
    .end local v5    # "docFreq":Ljava/lang/Integer;
    .end local v15    # "maxFreq":Ljava/lang/Integer;
    .end local v19    # "termMap":Ljava/util/HashMap;
    :cond_5
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 350
    .restart local v19    # "termMap":Ljava/util/HashMap;
    const-string/jumbo v25, "maxFreq"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v25, "docFreq"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 357
    .end local v4    # "doc":Ljava/util/HashMap;
    .end local v6    # "docId":Ljava/lang/String;
    .end local v17    # "term":Ljava/lang/String;
    .end local v18    # "termFreq":I
    .end local v19    # "termMap":Ljava/util/HashMap;
    .end local v21    # "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v23, "tfidf":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 360
    .restart local v4    # "doc":Ljava/util/HashMap;
    const-string/jumbo v26, "id"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 361
    .restart local v6    # "docId":Ljava/lang/String;
    const-string/jumbo v26, "terms"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 362
    .restart local v21    # "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v21, :cond_7

    .line 363
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 364
    .restart local v17    # "term":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    .line 365
    .local v20, "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    if-nez v20, :cond_8

    .line 366
    new-instance v20, Ljava/util/HashMap;

    .end local v20    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 368
    .restart local v20    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 369
    .local v14, "localTf":Ljava/lang/Integer;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 370
    .local v8, "globalTerm":Ljava/util/HashMap;
    const-string/jumbo v27, "maxFreq"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 371
    .local v16, "maxTf":Ljava/lang/Integer;
    const-string/jumbo v27, "docFreq"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 373
    .local v7, "docTf":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v28

    div-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    .line 374
    .local v22, "tf":Ljava/lang/Double;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v28

    div-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->log10(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 375
    .local v11, "idf":Ljava/lang/Double;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 380
    .end local v4    # "doc":Ljava/util/HashMap;
    .end local v6    # "docId":Ljava/lang/String;
    .end local v7    # "docTf":Ljava/lang/Integer;
    .end local v8    # "globalTerm":Ljava/util/HashMap;
    .end local v11    # "idf":Ljava/lang/Double;
    .end local v14    # "localTf":Ljava/lang/Integer;
    .end local v16    # "maxTf":Ljava/lang/Integer;
    .end local v17    # "term":Ljava/lang/String;
    .end local v20    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v21    # "terms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "tf":Ljava/lang/Double;
    :cond_9
    return-object v23
.end method

.method public static calcFreq(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 139
    const/4 v0, 0x5

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const-string/jumbo v1, "ngram"

    if-ne p0, v1, :cond_2

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v1, "word"

    if-ne p0, v1, :cond_3

    .line 143
    const/16 v0, 0x1e

    goto :goto_0

    .line 144
    :cond_3
    const-string/jumbo v1, "metaphone"

    if-eq p0, v1, :cond_0

    .line 146
    const-string/jumbo v1, "imp_word"

    if-ne p0, v1, :cond_4

    .line 147
    const/16 v0, 0x12c

    goto :goto_0

    .line 148
    :cond_4
    const-string/jumbo v1, "tag_word"

    if-ne p0, v1, :cond_0

    .line 149
    const/16 v0, 0x96

    goto :goto_0
.end method

.method private static calculateWordDistance(Ljava/lang/String;Ljava/lang/String;)F
    .locals 16
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "comparisionString"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 501
    .local v10, "n":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 503
    .local v7, "m":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "n":I
    .local v11, "n":I
    if-eqz v10, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "m":I
    .local v8, "m":I
    if-eqz v7, :cond_7

    .line 504
    mul-int v12, v11, v8

    new-array v2, v12, [I

    .line 506
    .local v2, "d":[I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 507
    aput v6, v2, v6

    .line 506
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 510
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    .line 511
    mul-int v12, v6, v11

    aput v6, v2, v12

    .line 510
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 514
    :cond_1
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    if-ge v4, v11, :cond_5

    .line 515
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_3
    if-ge v5, v8, :cond_4

    .line 516
    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_3

    .line 517
    const/4 v1, 0x0

    .line 522
    .local v1, "cost":I
    :goto_4
    mul-int v12, v5, v11

    add-int/2addr v12, v4

    add-int/lit8 v13, v5, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v13, v4

    aget v13, v2, v13

    add-int/lit8 v13, v13, 0x1

    mul-int v14, v5, v11

    add-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x1

    aget v14, v2, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v5, -0x1

    mul-int/2addr v15, v11

    add-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    aget v15, v2, v15

    add-int/2addr v15, v1

    invoke-static {v13, v14, v15}, Lcom/helpshift/support/HSSearch;->smallestOf(III)I

    move-result v13

    aput v13, v2, v12

    .line 526
    const/4 v12, 0x1

    if-le v4, v12, :cond_2

    const/4 v12, 0x1

    if-le v5, v12, :cond_2

    add-int/lit8 v12, v4, -0x1

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_2

    add-int/lit8 v12, v4, -0x2

    .line 528
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_2

    .line 529
    mul-int v12, v5, v11

    add-int/2addr v12, v4

    mul-int v13, v5, v11

    add-int/2addr v13, v4

    aget v13, v2, v13

    add-int/lit8 v14, v5, -0x2

    mul-int/2addr v14, v11

    add-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x2

    aget v14, v2, v14

    add-int/2addr v14, v1

    invoke-static {v13, v14}, Lcom/helpshift/support/HSSearch;->smallestOf(II)I

    move-result v13

    aput v13, v2, v12

    .line 515
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 519
    .end local v1    # "cost":I
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "cost":I
    goto :goto_4

    .line 514
    .end local v1    # "cost":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 534
    .end local v5    # "j":I
    :cond_5
    mul-int v12, v11, v8

    add-int/lit8 v12, v12, -0x1

    aget v3, v2, v12

    .line 536
    .local v3, "distance":I
    if-le v11, v8, :cond_6

    move v9, v11

    .line 537
    .local v9, "maxLength":I
    :goto_5
    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v3

    int-to-float v14, v9

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move v7, v8

    .line 539
    .end local v2    # "d":[I
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v6    # "k":I
    .end local v8    # "m":I
    .end local v9    # "maxLength":I
    .restart local v7    # "m":I
    :goto_6
    return v12

    .end local v7    # "m":I
    .restart local v2    # "d":[I
    .restart local v3    # "distance":I
    .restart local v4    # "i":I
    .restart local v6    # "k":I
    .restart local v8    # "m":I
    :cond_6
    move v9, v8

    .line 536
    goto :goto_5

    .end local v2    # "d":[I
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v6    # "k":I
    :cond_7
    move v7, v8

    .line 539
    .end local v8    # "m":I
    .restart local v7    # "m":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_6
.end method

.method public static deinit()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/helpshift/support/HSSearch;->indexing:Z

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/helpshift/support/util/HSTransliterator;->deinit()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/support/HSSearch;->markDeinit:Z

    goto :goto_0
.end method

.method protected static filterSearchQuery(Ljava/util/ArrayList;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "options"    # Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "queryTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 213
    .local v0, "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "type":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;->FULL_SEARCH:Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    if-ne p1, v4, :cond_1

    .line 215
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    sget-object v4, Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;->METAPHONE_SEARCH:Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    if-ne p1, v4, :cond_2

    const-string/jumbo v4, "metaphone"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_2
    sget-object v4, Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;->KEYWORD_SEARCH:Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    if-ne p1, v4, :cond_0

    const-string/jumbo v4, "word"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ngram"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v0    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "type":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static generateNgrams(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-gt v0, p1, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v1
.end method

.method public static generateSearchVariations(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v0, "output":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lcom/helpshift/support/HSSearch$5;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSSearch$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/helpshift/support/HSSearch$6;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSSearch$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "\\w+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 54
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 55
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 57
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    return-object v2
.end method

.method public static generateTokensForSearchQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "\\w+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 66
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 69
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_2
    return-object v2
.end method

.method public static generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "wordType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v2, "output":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Lcom/helpshift/support/HSSearch$2;

    invoke-direct {v3, p0, p1}, Lcom/helpshift/support/HSSearch$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-static {v3, v4, p0}, Lcom/helpshift/support/HSSearch;->generateNgrams(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    .local v1, "ngrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "ngram":Ljava/lang/String;
    new-instance v4, Lcom/helpshift/support/HSSearch$3;

    invoke-direct {v4, v0}, Lcom/helpshift/support/HSSearch$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0    # "ngram":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/helpshift/support/HSSearch$4;

    invoke-direct {v3, p0}, Lcom/helpshift/support/HSSearch$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public static getFuzzyMatches(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "fuzzyIndex"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v10, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-eqz p1, :cond_5

    .line 419
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v6, "faqIdsWithKeywords":Ljava/util/HashMap;
    invoke-static/range {p0 .. p0}, Lcom/helpshift/support/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/helpshift/support/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 421
    .local v12, "token":Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "rootChar":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/helpshift/support/HSSearch;->getNeighbourCharacters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 423
    .local v9, "neighbourChars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    .local v2, "character":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 426
    .local v16, "wordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    if-eqz v16, :cond_1

    .line 427
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 428
    .local v14, "wordMap":Ljava/util/HashMap;
    const-string/jumbo v20, "w"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 429
    .local v15, "wordToken":Ljava/lang/String;
    invoke-static {v15, v12}, Lcom/helpshift/support/HSSearch;->calculateWordDistance(Ljava/lang/String;Ljava/lang/String;)F

    move-result v13

    .line 430
    .local v13, "wordDistance":F
    float-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide v22, 0x3fe6666666666666L    # 0.7

    cmpl-double v20, v20, v22

    if-lez v20, :cond_2

    .line 431
    const-string/jumbo v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 432
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 433
    .local v8, "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v8, :cond_3

    .line 434
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .restart local v8    # "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    .end local v2    # "character":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "matchWordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "neighbourChars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "rootChar":Ljava/lang/String;
    .end local v12    # "token":Ljava/lang/String;
    .end local v13    # "wordDistance":F
    .end local v14    # "wordMap":Ljava/util/HashMap;
    .end local v15    # "wordToken":Ljava/lang/String;
    .end local v16    # "wordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 444
    .local v5, "docIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    .local v3, "docId":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v4, "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v18, "f"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v18, "t"

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 451
    .end local v3    # "docId":Ljava/lang/String;
    .end local v4    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v5    # "docIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "faqIdsWithKeywords":Ljava/util/HashMap;
    :cond_5
    return-object v10
.end method

.method private static getNeighbourCharacters(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "inputCharacter"    # Ljava/lang/String;
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 456
    .local v0, "characterTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string/jumbo v1, "a"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "q"

    aput-object v3, v2, v4

    const-string/jumbo v3, "w"

    aput-object v3, v2, v5

    const-string/jumbo v3, "s"

    aput-object v3, v2, v6

    const-string/jumbo v3, "z"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v1, "b"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "v"

    aput-object v3, v2, v4

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "n"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string/jumbo v1, "c"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "x"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "v"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string/jumbo v1, "d"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "s"

    aput-object v3, v2, v4

    const-string/jumbo v3, "z"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string/jumbo v1, "e"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "w"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "d"

    aput-object v3, v2, v6

    const-string/jumbo v3, "r"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v1, "f"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "d"

    aput-object v3, v2, v4

    const-string/jumbo v3, "g"

    aput-object v3, v2, v5

    const-string/jumbo v3, "c"

    aput-object v3, v2, v6

    const-string/jumbo v3, "x"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v1, "g"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "h"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "v"

    aput-object v3, v2, v6

    const-string/jumbo v3, "b"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v1, "h"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "g"

    aput-object v3, v2, v4

    const-string/jumbo v3, "j"

    aput-object v3, v2, v5

    const-string/jumbo v3, "b"

    aput-object v3, v2, v6

    const-string/jumbo v3, "n"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "i"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "u"

    aput-object v3, v2, v4

    const-string/jumbo v3, "o"

    aput-object v3, v2, v5

    const-string/jumbo v3, "k"

    aput-object v3, v2, v6

    const-string/jumbo v3, "j"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v1, "j"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "m"

    aput-object v3, v2, v4

    const-string/jumbo v3, "n"

    aput-object v3, v2, v5

    const-string/jumbo v3, "h"

    aput-object v3, v2, v6

    const-string/jumbo v3, "k"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v1, "k"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "j"

    aput-object v3, v2, v4

    const-string/jumbo v3, "l"

    aput-object v3, v2, v5

    const-string/jumbo v3, "m"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v1, "l"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "k"

    aput-object v3, v2, v4

    const-string/jumbo v3, "p"

    aput-object v3, v2, v5

    const-string/jumbo v3, "m"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v1, "m"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "n"

    aput-object v3, v2, v4

    const-string/jumbo v3, "b"

    aput-object v3, v2, v5

    const-string/jumbo v3, "l"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v1, "n"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "b"

    aput-object v3, v2, v4

    const-string/jumbo v3, "j"

    aput-object v3, v2, v5

    const-string/jumbo v3, "m"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v1, "o"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "l"

    aput-object v3, v2, v4

    const-string/jumbo v3, "k"

    aput-object v3, v2, v5

    const-string/jumbo v3, "p"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v1, "p"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "l"

    aput-object v3, v2, v4

    const-string/jumbo v3, "o"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string/jumbo v1, "q"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "w"

    aput-object v3, v2, v4

    const-string/jumbo v3, "a"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v1, "r"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "s"

    aput-object v3, v2, v4

    const-string/jumbo v3, "d"

    aput-object v3, v2, v5

    const-string/jumbo v3, "e"

    aput-object v3, v2, v6

    const-string/jumbo v3, "f"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string/jumbo v1, "s"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "z"

    aput-object v3, v2, v5

    const-string/jumbo v3, "d"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string/jumbo v1, "t"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "r"

    aput-object v3, v2, v4

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "g"

    aput-object v3, v2, v6

    const-string/jumbo v3, "y"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v1, "u"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "j"

    aput-object v3, v2, v4

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "i"

    aput-object v3, v2, v6

    const-string/jumbo v3, "y"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v1, "v"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "c"

    aput-object v3, v2, v4

    const-string/jumbo v3, "g"

    aput-object v3, v2, v5

    const-string/jumbo v3, "b"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string/jumbo v1, "w"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "q"

    aput-object v3, v2, v4

    const-string/jumbo v3, "a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "s"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v1, "x"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "z"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "c"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string/jumbo v1, "y"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "g"

    aput-object v3, v2, v4

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "t"

    aput-object v3, v2, v6

    const-string/jumbo v3, "u"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string/jumbo v1, "z"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static indexDocument(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .locals 10
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "doc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/helpshift/support/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/support/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v8, "word"

    invoke-static {v2, v8}, Lcom/helpshift/support/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 161
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/helpshift/support/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/support/HSSearch;->generateTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .restart local v2    # "str":Ljava/lang/String;
    const-string/jumbo v8, "imp_word"

    invoke-static {v2, v8}, Lcom/helpshift/support/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 165
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    .local v3, "tag":Ljava/lang/String;
    invoke-static {v3}, Lcom/helpshift/support/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tag_word"

    invoke-static {v8, v9}, Lcom/helpshift/support/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 169
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, "indexDoc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 172
    .local v6, "tokenMap":Ljava/util/HashMap;
    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    .local v4, "token":Ljava/lang/String;
    const/4 v5, 0x0

    .line 174
    .local v5, "tokenFreq":I
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 175
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 177
    :cond_3
    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/helpshift/support/HSSearch;->calcFreq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 181
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "tokenFreq":I
    .end local v6    # "tokenMap":Ljava/util/HashMap;
    :cond_4
    return-object v0
.end method

.method public static indexDocuments(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;)",
            "Ljava/util/HashMap;"
        }
    .end annotation

    .prologue
    .local p0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "fullIndex":Ljava/util/HashMap;
    sget-boolean v3, Lcom/helpshift/support/HSSearch;->indexing:Z

    if-ne v3, v4, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 207
    .end local v0    # "fullIndex":Ljava/util/HashMap;
    :cond_0
    :goto_0
    return-object v0

    .line 190
    .restart local v0    # "fullIndex":Ljava/util/HashMap;
    :cond_1
    invoke-static {}, Lcom/helpshift/support/util/HSTransliterator;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    invoke-static {}, Lcom/helpshift/support/util/HSTransliterator;->init()V

    .line 192
    sput-boolean v4, Lcom/helpshift/support/HSSearch;->markDeinit:Z

    .line 195
    :cond_2
    sput-boolean v4, Lcom/helpshift/support/HSSearch;->indexing:Z

    .line 197
    invoke-static {p0}, Lcom/helpshift/support/HSSearch;->buildTfidfIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 198
    .local v2, "tfidfIndex":Ljava/util/HashMap;
    invoke-static {p0}, Lcom/helpshift/support/HSSearch;->buildFuzzyIndex(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    .line 199
    .local v1, "fuzzyIndex":Ljava/util/HashMap;
    const-string/jumbo v3, "i"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v3, "f"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sput-boolean v5, Lcom/helpshift/support/HSSearch;->indexing:Z

    .line 203
    sget-boolean v3, Lcom/helpshift/support/HSSearch;->markDeinit:Z

    if-ne v3, v4, :cond_0

    .line 204
    invoke-static {}, Lcom/helpshift/support/HSSearch;->deinit()V

    .line 205
    sput-boolean v5, Lcom/helpshift/support/HSSearch;->markDeinit:Z

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 26
    sget-boolean v1, Lcom/helpshift/support/HSSearch;->indexing:Z

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/support/HSSearch$1;

    invoke-direct {v1}, Lcom/helpshift/support/HSSearch$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    .local v0, "indexThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    :cond_0
    return-void
.end method

.method public static queryDocs(Ljava/lang/String;Ljava/util/HashMap;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .locals 28
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "tfidf"    # Ljava/util/HashMap;
    .param p2, "options"    # Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            "Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v7, "docRanks":Ljava/util/HashMap;
    const/4 v13, 0x0

    .line 231
    .local v13, "resultDocSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v10, "matchedTermsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v19, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/helpshift/support/HSSearch;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/helpshift/support/HSSearch;->generateTokensForSearchQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 235
    .local v15, "term":Ljava/lang/String;
    invoke-static {v15}, Lcom/helpshift/support/HSSearch;->generateSearchVariations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/helpshift/support/HSSearch;->filterSearchQuery(Ljava/util/ArrayList;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 238
    .end local v15    # "term":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_7

    .line 239
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 240
    .local v18, "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v22, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 241
    .restart local v15    # "term":Ljava/lang/String;
    const-string/jumbo v22, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 242
    .local v20, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 243
    .local v16, "termDocMap":Ljava/util/HashMap;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    if-lez v22, :cond_1

    .line 244
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "docId":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 246
    .local v9, "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_2

    .line 247
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .restart local v9    # "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_3

    .line 250
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_3
    invoke-virtual {v10, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 254
    .local v8, "docTFID":Ljava/lang/Double;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 255
    .local v5, "docRank":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/helpshift/support/HSSearch;->calcFreq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 256
    .local v2, "docContribution":Ljava/lang/Double;
    if-eqz v5, :cond_4

    .line 257
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 259
    :cond_4
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 263
    .end local v2    # "docContribution":Ljava/lang/Double;
    .end local v3    # "docId":Ljava/lang/String;
    .end local v5    # "docRank":Ljava/lang/Double;
    .end local v8    # "docTFID":Ljava/lang/Double;
    .end local v9    # "matchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v17, "termDocSet":Ljava/util/HashSet;
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 266
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_6

    .line 267
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 269
    :cond_6
    new-instance v13, Ljava/util/HashSet;

    .end local v13    # "resultDocSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v13    # "resultDocSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 274
    .end local v15    # "term":Ljava/lang/String;
    .end local v16    # "termDocMap":Ljava/util/HashMap;
    .end local v17    # "termDocSet":Ljava/util/HashSet;
    .end local v18    # "termMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "type":Ljava/lang/String;
    :cond_7
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 275
    :cond_8
    new-instance v6, Lcom/helpshift/support/RankComparator;

    invoke-direct {v6, v7}, Lcom/helpshift/support/RankComparator;-><init>(Ljava/util/HashMap;)V

    .line 276
    .local v6, "docRankComp":Lcom/helpshift/support/RankComparator;
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 277
    .local v14, "sortedDocRanks":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {v14, v7}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 278
    invoke-static {v14, v10}, Lcom/helpshift/support/HSSearch;->sortMatchedTermsMap(Ljava/util/TreeMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v11

    .line 295
    .end local v6    # "docRankComp":Lcom/helpshift/support/RankComparator;
    .end local v14    # "sortedDocRanks":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :goto_3
    return-object v11

    .line 279
    :cond_9
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 280
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v4, "docIdTermsMap":Ljava/util/HashMap;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v11, "resultDoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 283
    .restart local v3    # "docId":Ljava/lang/String;
    const-string/jumbo v21, "f"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v21, "t"

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 288
    .end local v3    # "docId":Ljava/lang/String;
    .end local v4    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v11    # "resultDoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_a
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v12, "resultDocRanks":Ljava/util/HashMap;
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    .restart local v3    # "docId":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 292
    .end local v3    # "docId":Ljava/lang/String;
    :cond_b
    new-instance v6, Lcom/helpshift/support/RankComparator;

    invoke-direct {v6, v12}, Lcom/helpshift/support/RankComparator;-><init>(Ljava/util/HashMap;)V

    .line 293
    .restart local v6    # "docRankComp":Lcom/helpshift/support/RankComparator;
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 294
    .restart local v14    # "sortedDocRanks":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {v14, v12}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 295
    invoke-static {v14, v10}, Lcom/helpshift/support/HSSearch;->sortMatchedTermsMap(Ljava/util/TreeMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_3
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/helpshift/support/HSSearch;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "htmlText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static smallestOf(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 557
    move v0, p0

    .line 559
    .local v0, "min":I
    if-ge p1, v0, :cond_0

    .line 560
    move v0, p1

    .line 563
    :cond_0
    return v0
.end method

.method private static smallestOf(III)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 543
    move v0, p0

    .line 545
    .local v0, "min":I
    if-ge p1, v0, :cond_0

    .line 546
    move v0, p1

    .line 549
    :cond_0
    if-ge p2, v0, :cond_1

    .line 550
    move v0, p2

    .line 553
    :cond_1
    return v0
.end method

.method private static sortMatchedTermsMap(Ljava/util/TreeMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "sortedDocRanks"    # Ljava/util/TreeMap;
    .param p1, "matchedTermsMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap;",
            "Ljava/util/HashMap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v3, "sortedResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 303
    .local v2, "sortedDocIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "docId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v1, "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v5, "f"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v5, "t"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0    # "docId":Ljava/lang/String;
    .end local v1    # "docIdTermsMap":Ljava/util/HashMap;
    :cond_0
    return-object v3
.end method

.method public static stripHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string/jumbo v0, "<[^>]+>"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
