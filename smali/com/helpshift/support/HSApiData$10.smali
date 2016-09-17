.class Lcom/helpshift/support/HSApiData$10;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$faqId:Ljava/lang/String;

.field final synthetic val$helpful:Ljava/lang/Boolean;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$10;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$10;->val$faqId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/support/HSApiData$10;->val$helpful:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/support/HSApiData$10;->val$success:Landroid/os/Handler;

    iput-object p5, p0, Lcom/helpshift/support/HSApiData$10;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 806
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 807
    .local v3, "result":Ljava/util/HashMap;
    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 808
    .local v1, "markResult":Lorg/json/JSONObject;
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "marked"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 809
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$10;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;
    invoke-static {v4}, Lcom/helpshift/support/HSApiData;->access$500(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/FaqDAO;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/support/HSApiData$10;->val$faqId:Ljava/lang/String;

    iget-object v6, p0, Lcom/helpshift/support/HSApiData$10;->val$helpful:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lcom/helpshift/support/storage/FaqDAO;->setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 811
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$10;->val$success:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 812
    .local v2, "msgToPost":Landroid/os/Message;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$10;->val$helpful:Ljava/lang/Boolean;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$10;->val$success:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v1    # "markResult":Lorg/json/JSONObject;
    .end local v2    # "msgToPost":Landroid/os/Message;
    .end local v3    # "result":Ljava/util/HashMap;
    :cond_0
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$10;->val$failure:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 817
    .restart local v2    # "msgToPost":Landroid/os/Message;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$10;->val$failure:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 818
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "JSON Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
