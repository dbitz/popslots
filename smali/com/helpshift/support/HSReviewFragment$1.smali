.class Lcom/helpshift/support/HSReviewFragment$1;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSReviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSReviewFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # getter for: Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;
    invoke-static {v1}, Lcom/helpshift/support/HSReviewFragment;->access$000(Lcom/helpshift/support/HSReviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object v2, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # getter for: Lcom/helpshift/support/HSReviewFragment;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {v2}, Lcom/helpshift/support/HSReviewFragment;->access$100(Lcom/helpshift/support/HSReviewFragment;)Lcom/helpshift/support/HSStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "rurl"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/helpshift/support/HSReviewFragment;->access$002(Lcom/helpshift/support/HSReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object v2, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # getter for: Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;
    invoke-static {v2}, Lcom/helpshift/support/HSReviewFragment;->access$000(Lcom/helpshift/support/HSReviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/helpshift/support/HSReviewFragment;->access$002(Lcom/helpshift/support/HSReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # getter for: Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;
    invoke-static {v1}, Lcom/helpshift/support/HSReviewFragment;->access$000(Lcom/helpshift/support/HSReviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object v2, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    # getter for: Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;
    invoke-static {v2}, Lcom/helpshift/support/HSReviewFragment;->access$000(Lcom/helpshift/support/HSReviewFragment;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/helpshift/support/HSReviewFragment;->gotoApp(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/helpshift/support/HSReviewFragment;->access$200(Lcom/helpshift/support/HSReviewFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    const-string/jumbo v1, "reviewed"

    invoke-static {v1}, Lcom/helpshift/support/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    const/4 v2, 0x0

    # invokes: Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V
    invoke-static {v1, v2}, Lcom/helpshift/support/HSReviewFragment;->access$300(Lcom/helpshift/support/HSReviewFragment;I)V

    .line 106
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpshiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
