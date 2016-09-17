.class Lcom/helpshift/support/HSMessagesFragment$7$2;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 578
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$7$2;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$7$2;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v1, v1, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$7$2;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v2, v2, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$7$2;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v3, v3, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    .line 583
    # getter for: Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesFailure:Landroid/os/Handler;
    invoke-static {v3}, Lcom/helpshift/support/HSMessagesFragment;->access$1000(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$7$2;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v4, v4, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    .line 584
    # getter for: Lcom/helpshift/support/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$1100(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-virtual {v1, v2, v3, v4}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$7$2;->this$1:Lcom/helpshift/support/HSMessagesFragment$7;

    iget-object v1, v1, Lcom/helpshift/support/HSMessagesFragment$7;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "get issues"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
