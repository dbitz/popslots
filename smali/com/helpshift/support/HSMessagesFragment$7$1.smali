.class Lcom/helpshift/support/HSMessagesFragment$7$1;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/support/HSMessagesFragment$7;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/helpshift/support/HSMessagesFragment$7;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$7$1;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 572
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$7$1;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v1, v1, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesSuccess:Landroid/os/Handler;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$900(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 574
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$7$1;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v1, v1, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesSuccess:Landroid/os/Handler;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$900(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method
