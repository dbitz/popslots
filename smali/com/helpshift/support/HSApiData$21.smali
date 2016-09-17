.class Lcom/helpshift/support/HSApiData$21;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$params:Lorg/json/JSONObject;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$21;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$21;->val$failure:Landroid/os/Handler;

    iput p3, p0, Lcom/helpshift/support/HSApiData$21;->val$type:I

    iput-object p4, p0, Lcom/helpshift/support/HSApiData$21;->val$params:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/helpshift/support/HSApiData$21;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1532
    iget-object v6, p0, Lcom/helpshift/support/HSApiData$21;->val$failure:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1533
    .local v2, "msgToPost":Landroid/os/Message;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1534
    iget-object v6, p0, Lcom/helpshift/support/HSApiData$21;->val$failure:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1537
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 1538
    .local v3, "result":Ljava/util/HashMap;
    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1539
    .local v5, "status":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/helpshift/support/HSApiData$21;->this$0:Lcom/helpshift/support/HSApiData;

    # invokes: Lcom/helpshift/support/HSApiData;->isStatusCodeRetriable(Ljava/lang/Integer;)Ljava/lang/Boolean;
    invoke-static {v6, v5}, Lcom/helpshift/support/HSApiData;->access$700(Lcom/helpshift/support/HSApiData;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v4

    .line 1540
    .local v4, "shouldRetry":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1541
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1542
    .local v1, "failedApiCall":Lorg/json/JSONObject;
    const-string/jumbo v6, "t"

    iget v7, p0, Lcom/helpshift/support/HSApiData$21;->val$type:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1543
    const-string/jumbo v6, "p"

    iget-object v7, p0, Lcom/helpshift/support/HSApiData$21;->val$params:Lorg/json/JSONObject;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1544
    iget-object v6, p0, Lcom/helpshift/support/HSApiData$21;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v6, v6, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v7, p0, Lcom/helpshift/support/HSApiData$21;->val$key:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/helpshift/support/HSStorage;->storeFailedApiCall(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1551
    .end local v1    # "failedApiCall":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/util/HashMap;
    .end local v4    # "shouldRetry":Ljava/lang/Boolean;
    .end local v5    # "status":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 1546
    .restart local v3    # "result":Ljava/util/HashMap;
    .restart local v4    # "shouldRetry":Ljava/lang/Boolean;
    .restart local v5    # "status":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/helpshift/support/HSApiData$21;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v6, v6, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v7, p0, Lcom/helpshift/support/HSApiData$21;->val$key:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/helpshift/support/HSStorage;->storeFailedApiCall(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    .end local v3    # "result":Ljava/util/HashMap;
    .end local v4    # "shouldRetry":Ljava/lang/Boolean;
    .end local v5    # "status":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "JSONException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
