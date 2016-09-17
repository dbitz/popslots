.class Lcom/helpshift/support/HSMessagesFragment$7;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->startPoller()V
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
    .line 566
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 569
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 570
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    new-instance v2, Lcom/helpshift/support/HSMessagesFragment$7$1;

    invoke-direct {v2, p0}, Lcom/helpshift/support/HSMessagesFragment$7$1;-><init>(Lcom/helpshift/support/HSMessagesFragment$7;)V

    # setter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/helpshift/support/HSMessagesFragment;->access$602(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Handler;)Landroid/os/Handler;

    .line 578
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$7$2;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$7$2;-><init>(Lcom/helpshift/support/HSMessagesFragment$7;)V

    .line 592
    .local v0, "m_handlerTask":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 593
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 594
    return-void
.end method
