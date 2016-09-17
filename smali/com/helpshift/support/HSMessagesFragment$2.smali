.class Lcom/helpshift/support/HSMessagesFragment$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 100
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$2;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$2;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/HSMessagesFragment;->startPoller()V

    .line 104
    return-void
.end method
