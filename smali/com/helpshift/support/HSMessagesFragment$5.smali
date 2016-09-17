.class Lcom/helpshift/support/HSMessagesFragment$5;
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
    .line 201
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$5;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$5;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->renderReplyMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/helpshift/support/HSMessagesFragment;->access$700(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Message;)V

    .line 204
    return-void
.end method
