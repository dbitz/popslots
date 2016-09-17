.class Lcom/helpshift/support/HSApiData$6;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$callback:Landroid/os/Handler;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$onlyNew:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Ljava/lang/Boolean;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$6;->val$callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/support/HSApiData$6;->val$onlyNew:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/support/HSApiData$6;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 388
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/HashMap;

    .line 389
    .local v24, "result":Ljava/util/HashMap;
    const-string/jumbo v26, "response"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 390
    .local v13, "issuesResult":Lorg/json/JSONObject;
    const-string/jumbo v26, "timestamp"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "dateStr":Ljava/lang/String;
    const-string/jumbo v26, "issues"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 392
    .local v12, "issues":Lorg/json/JSONArray;
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 394
    .local v14, "issuesWithSplitMessages":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 395
    .local v23, "numOfIssues":I
    if-lez v23, :cond_4

    .line 396
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v23

    if-ge v9, v0, :cond_4

    .line 397
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 398
    .local v11, "issue":Lorg/json/JSONObject;
    const-string/jumbo v26, "messages"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 399
    .local v18, "messages":Lorg/json/JSONArray;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 400
    .local v19, "messagesLength":I
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v25, "splitMessages":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    .line 403
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 404
    .local v17, "message":Lorg/json/JSONObject;
    const-string/jumbo v26, "meta"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 405
    .local v20, "metaObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 407
    .local v3, "adminAttachments":Lorg/json/JSONArray;
    if-eqz v20, :cond_0

    const-string/jumbo v26, "attachments"

    .line 408
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    const-string/jumbo v26, "type"

    .line 409
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "sc"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 410
    const-string/jumbo v26, "attachments"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 411
    const-string/jumbo v26, "attachments"

    new-instance v27, Lorg/json/JSONArray;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string/jumbo v26, "meta"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    :cond_0
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 416
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    .line 417
    .local v22, "numOfAttachments":I
    if-lez v22, :cond_2

    .line 419
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 420
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 421
    .local v5, "attachmentObject":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 426
    .local v4, "attachmentMessage":Lorg/json/JSONObject;
    const-string/jumbo v26, "issue_id"

    const-string/jumbo v27, "issue_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string/jumbo v26, "author"

    const-string/jumbo v27, "author"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string/jumbo v26, "meta"

    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string/jumbo v26, "id"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string/jumbo v26, "body"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string/jumbo v26, "origin"

    const-string/jumbo v27, "origin"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string/jumbo v26, "created_at"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "date":Ljava/lang/String;
    sget-object v26, Lcom/helpshift/util/HSFormat;->inputMsgFormatter:Ljava/text/SimpleDateFormat;

    add-int/lit8 v27, v16, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v6, v1}, Lcom/helpshift/util/HSFormat;->addMilliSeconds(Ljava/text/SimpleDateFormat;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 436
    const-string/jumbo v26, "created_at"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string/jumbo v26, "image"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 438
    .local v10, "imageType":Ljava/lang/Boolean;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 439
    const-string/jumbo v26, "type"

    const-string/jumbo v27, "admin_attachment_image"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 419
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 441
    :cond_1
    const-string/jumbo v26, "type"

    const-string/jumbo v27, "admin_attachment_generic"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 474
    .end local v3    # "adminAttachments":Lorg/json/JSONArray;
    .end local v4    # "attachmentMessage":Lorg/json/JSONObject;
    .end local v5    # "attachmentObject":Lorg/json/JSONObject;
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "dateStr":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "imageType":Ljava/lang/Boolean;
    .end local v11    # "issue":Lorg/json/JSONObject;
    .end local v12    # "issues":Lorg/json/JSONArray;
    .end local v13    # "issuesResult":Lorg/json/JSONObject;
    .end local v14    # "issuesWithSplitMessages":Lorg/json/JSONArray;
    .end local v15    # "j":I
    .end local v16    # "k":I
    .end local v17    # "message":Lorg/json/JSONObject;
    .end local v18    # "messages":Lorg/json/JSONArray;
    .end local v19    # "messagesLength":I
    .end local v20    # "metaObj":Lorg/json/JSONObject;
    .end local v22    # "numOfAttachments":I
    .end local v23    # "numOfIssues":I
    .end local v24    # "result":Ljava/util/HashMap;
    .end local v25    # "splitMessages":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 475
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v26, "HelpShiftDebug"

    const-string/jumbo v27, "JSON Exception!!!"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_4
    return-void

    .line 402
    .restart local v3    # "adminAttachments":Lorg/json/JSONArray;
    .restart local v7    # "dateStr":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v11    # "issue":Lorg/json/JSONObject;
    .restart local v12    # "issues":Lorg/json/JSONArray;
    .restart local v13    # "issuesResult":Lorg/json/JSONObject;
    .restart local v14    # "issuesWithSplitMessages":Lorg/json/JSONArray;
    .restart local v15    # "j":I
    .restart local v17    # "message":Lorg/json/JSONObject;
    .restart local v18    # "messages":Lorg/json/JSONArray;
    .restart local v19    # "messagesLength":I
    .restart local v20    # "metaObj":Lorg/json/JSONObject;
    .restart local v22    # "numOfAttachments":I
    .restart local v23    # "numOfIssues":I
    .restart local v24    # "result":Ljava/util/HashMap;
    .restart local v25    # "splitMessages":Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 447
    .end local v3    # "adminAttachments":Lorg/json/JSONArray;
    .end local v17    # "message":Lorg/json/JSONObject;
    .end local v20    # "metaObj":Lorg/json/JSONObject;
    .end local v22    # "numOfAttachments":I
    :cond_3
    :try_start_1
    new-instance v18, Lorg/json/JSONArray;

    .end local v18    # "messages":Lorg/json/JSONArray;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v18    # "messages":Lorg/json/JSONArray;
    const-string/jumbo v26, "messages"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 396
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 452
    .end local v9    # "i":I
    .end local v11    # "issue":Lorg/json/JSONObject;
    .end local v15    # "j":I
    .end local v18    # "messages":Lorg/json/JSONArray;
    .end local v19    # "messagesLength":I
    .end local v25    # "splitMessages":Lorg/json/JSONArray;
    :cond_4
    new-instance v12, Lorg/json/JSONArray;

    .end local v12    # "issues":Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v12    # "issues":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Lcom/helpshift/support/HSStorage;->setIssuesTs(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_5

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Lcom/helpshift/support/HSStorage;->storeIssues(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->val$callback:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v21

    .line 460
    .local v21, "msgToPost":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->val$onlyNew:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 461
    move-object/from16 v0, v21

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_6

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->val$callback:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/helpshift/support/HSApiData;->rfrCheck(Lorg/json/JSONArray;)V
    invoke-static {v0, v12}, Lcom/helpshift/support/HSApiData;->access$300(Lcom/helpshift/support/HSApiData;Lorg/json/JSONArray;)V

    goto/16 :goto_4

    .line 466
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->val$failure:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    # invokes: Lcom/helpshift/support/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static/range {v26 .. v28}, Lcom/helpshift/support/HSApiData;->access$200(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;I)V

    goto :goto_5

    .line 469
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->this$0:Lcom/helpshift/support/HSApiData;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$6;->val$callback:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method
