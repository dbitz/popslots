.class Lcom/helpshift/support/HSApiData$20;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->sendFailedMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$20;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/helpshift/support/HSApiData$20;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->sendFailedMessages()V

    .line 1501
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.helpshift.failedMessageRequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/helpshift/support/HSApiData$20;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/helpshift/support/HSApiData;->access$400(Lcom/helpshift/support/HSApiData;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1503
    return-void
.end method
