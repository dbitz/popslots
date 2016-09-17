.class Lcom/helpshift/support/HSMessagesFragment$6;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$6;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$6;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$6;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$6;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$000(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 214
    return-void
.end method
