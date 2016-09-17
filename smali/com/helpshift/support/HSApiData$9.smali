.class Lcom/helpshift/support/HSApiData$9;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$failedState:I

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$issueId:Ljava/lang/String;

.field final synthetic val$messageText:Ljava/lang/String;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$refers:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$9;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$9;->val$issueId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/support/HSApiData$9;->val$messageText:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/support/HSApiData$9;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/support/HSApiData$9;->val$refers:Ljava/lang/String;

    iput p6, p0, Lcom/helpshift/support/HSApiData$9;->val$failedState:I

    iput-object p7, p0, Lcom/helpshift/support/HSApiData$9;->val$profileId:Ljava/lang/String;

    iput-object p8, p0, Lcom/helpshift/support/HSApiData$9;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$9;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData$9;->val$issueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData$9;->val$messageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/support/HSApiData$9;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/support/HSApiData$9;->val$refers:Ljava/lang/String;

    iget v5, p0, Lcom/helpshift/support/HSApiData$9;->val$failedState:I

    iget-object v6, p0, Lcom/helpshift/support/HSApiData$9;->val$profileId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/support/HSStorage;->storeFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$9;->val$failure:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 790
    .local v8, "fmsg":Landroid/os/Message;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 791
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$9;->val$failure:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 792
    return-void

    .line 785
    .end local v8    # "fmsg":Landroid/os/Message;
    :catch_0
    move-exception v7

    .line 786
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "JSON Exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
