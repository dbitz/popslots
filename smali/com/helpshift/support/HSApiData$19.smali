.class Lcom/helpshift/support/HSApiData$19;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$19;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$19;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiData$19;->val$success:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 1394
    .local v15, "msgToPost":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/HashMap;

    .line 1396
    .local v17, "result":Ljava/util/HashMap;
    if-eqz v17, :cond_0

    .line 1397
    :try_start_0
    const-string/jumbo v4, "response"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 1398
    .local v16, "question":Lorg/json/JSONObject;
    new-instance v3, Lcom/helpshift/support/Faq;

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "id"

    .line 1399
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "publish_id"

    .line 1400
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/helpshift/support/HSApiData$19;->this$0:Lcom/helpshift/support/HSApiData;

    const-string/jumbo v9, "section_id"

    .line 1401
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/helpshift/support/HSApiData;->getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/helpshift/support/HSApiData;->access$600(Lcom/helpshift/support/HSApiData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "title"

    .line 1402
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "body"

    .line 1403
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v12, "is_rtl"

    .line 1405
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "true"

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v13, "stags"

    .line 1406
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "stags"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/helpshift/util/HSJSONUtils;->jsonToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    :goto_1
    const-string/jumbo v14, "issue_tags"

    .line 1407
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "issue_tags"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/helpshift/util/HSJSONUtils;->jsonToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    :goto_2
    invoke-direct/range {v3 .. v14}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    .line 1408
    .local v3, "newFaq":Lcom/helpshift/support/Faq;
    iput-object v3, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiData$19;->val$success:Landroid/os/Handler;

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiData$19;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;
    invoke-static {v4}, Lcom/helpshift/support/HSApiData;->access$500(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/FaqDAO;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/helpshift/support/storage/FaqDAO;->addFaq(Lcom/helpshift/support/Faq;)V

    .line 1415
    .end local v3    # "newFaq":Lcom/helpshift/support/Faq;
    .end local v16    # "question":Lorg/json/JSONObject;
    :cond_0
    :goto_3
    return-void

    .line 1405
    .restart local v16    # "question":Lorg/json/JSONObject;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1406
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1412
    .end local v16    # "question":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1413
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in getting question "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1407
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v16    # "question":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
