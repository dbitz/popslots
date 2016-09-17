.class Lcom/helpshift/support/HSMessagesFragment$21;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->retryMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$21;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iput-object p2, p0, Lcom/helpshift/support/HSMessagesFragment$21;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1474
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1476
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$21;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$21;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$21;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v3}, Lcom/helpshift/support/HSMessagesFragment;->access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/support/HSStorage;->popFailedMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$21;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$000(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 1481
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "addMessageHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
