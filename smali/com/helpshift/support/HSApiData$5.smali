.class Lcom/helpshift/support/HSApiData$5;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getAndStoreConfig(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$callback:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$5;->val$callback:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0xa

    .line 250
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 253
    .local v3, "result":Ljava/util/HashMap;
    if-eqz v3, :cond_2

    .line 254
    const-string/jumbo v7, "response"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 255
    .local v0, "config":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v7, v7, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/support/HSStorage;->getBreadCrumbsLimit()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "bcl"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 256
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v7, v7, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v8, "bcl"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/helpshift/support/HSStorage;->updateBreadCrumbsLimit(Ljava/lang/Integer;)V

    .line 259
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v7, v7, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v5

    .line 260
    .local v5, "storedConfig":Lorg/json/JSONObject;
    const-string/jumbo v7, "pr"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 261
    .local v6, "storedReviewConfig":Lorg/json/JSONObject;
    const-string/jumbo v7, "pr"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 262
    .local v4, "reviewConfig":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    const-string/jumbo v7, "t"

    .line 263
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "t"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 264
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v7}, Lcom/helpshift/support/HSApiData;->resetReviewCounter()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v4    # "reviewConfig":Lorg/json/JSONObject;
    .end local v5    # "storedConfig":Lorg/json/JSONObject;
    .end local v6    # "storedReviewConfig":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v7, v7, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v7, v0}, Lcom/helpshift/support/HSStorage;->setConfig(Lorg/json/JSONObject;)V

    .line 270
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->val$callback:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 271
    .local v2, "msgToPost":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v7, p0, Lcom/helpshift/support/HSApiData$5;->val$callback:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v2    # "msgToPost":Landroid/os/Message;
    :cond_2
    return-void

    .line 266
    .restart local v0    # "config":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "Reseting counter"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
