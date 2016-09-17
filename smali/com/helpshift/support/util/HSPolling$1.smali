.class Lcom/helpshift/support/util/HSPolling$1;
.super Ljava/lang/Object;
.source "HSPolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/util/HSPolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/util/HSPolling;


# direct methods
.method constructor <init>(Lcom/helpshift/support/util/HSPolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/util/HSPolling;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    # getter for: Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;
    invoke-static {v0}, Lcom/helpshift/support/util/HSPolling;->access$000(Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    # getter for: Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;
    invoke-static {v1}, Lcom/helpshift/support/util/HSPolling;->access$000(Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    # getter for: Lcom/helpshift/support/util/HSPolling;->task:Landroid/os/Handler;
    invoke-static {v0}, Lcom/helpshift/support/util/HSPolling;->access$000(Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    iget-object v1, v1, Lcom/helpshift/support/util/HSPolling;->pollerRun:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    # getter for: Lcom/helpshift/support/util/HSPolling;->interval:F
    invoke-static {v2}, Lcom/helpshift/support/util/HSPolling;->access$100(Lcom/helpshift/support/util/HSPolling;)F

    move-result v2

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    # getter for: Lcom/helpshift/support/util/HSPolling;->smartPolling:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/helpshift/support/util/HSPolling;->access$200(Lcom/helpshift/support/util/HSPolling;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    iget-object v1, p0, Lcom/helpshift/support/util/HSPolling$1;->this$0:Lcom/helpshift/support/util/HSPolling;

    # getter for: Lcom/helpshift/support/util/HSPolling;->interval:F
    invoke-static {v1}, Lcom/helpshift/support/util/HSPolling;->access$100(Lcom/helpshift/support/util/HSPolling;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/util/HSPolling;->updateInterval(F)V

    .line 65
    :cond_0
    return-void
.end method
