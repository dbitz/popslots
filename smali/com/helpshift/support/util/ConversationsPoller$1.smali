.class Lcom/helpshift/support/util/ConversationsPoller$1;
.super Ljava/lang/Object;
.source "ConversationsPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/util/ConversationsPoller;-><init>(ILandroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/HSApiData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/util/ConversationsPoller;

.field final synthetic val$data:Lcom/helpshift/support/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$interval:I

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/util/ConversationsPoller;Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/util/ConversationsPoller;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->this$0:Lcom/helpshift/support/util/ConversationsPoller;

    iput-object p2, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$data:Lcom/helpshift/support/HSApiData;

    iput-object p3, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$success:Landroid/os/Handler;

    iput-object p4, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$failure:Landroid/os/Handler;

    iput p5, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$data:Lcom/helpshift/support/HSApiData;

    iget-object v2, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$success:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$failure:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->this$0:Lcom/helpshift/support/util/ConversationsPoller;

    # getter for: Lcom/helpshift/support/util/ConversationsPoller;->conversationsPollerThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/helpshift/support/util/ConversationsPoller;->access$100(Lcom/helpshift/support/util/ConversationsPoller;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->this$0:Lcom/helpshift/support/util/ConversationsPoller;

    # getter for: Lcom/helpshift/support/util/ConversationsPoller;->runnableTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/helpshift/support/util/ConversationsPoller;->access$000(Lcom/helpshift/support/util/ConversationsPoller;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/helpshift/support/util/ConversationsPoller$1;->val$interval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
