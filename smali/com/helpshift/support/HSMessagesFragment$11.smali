.class Lcom/helpshift/support/HSMessagesFragment$11;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 750
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "replyText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->replyHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$2300(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$2400(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    .line 758
    # getter for: Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;
    invoke-static {v3}, Lcom/helpshift/support/HSMessagesFragment;->access$200(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "txt"

    const-string/jumbo v6, ""

    .line 757
    # invokes: Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/HSMessagesFragment;->access$2500(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/helpshift/support/SupportInternal$Delegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 765
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 766
    .local v8, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "txt"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    const-string/jumbo v0, "body"

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$11;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$200(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 769
    const-string/jumbo v0, "m"

    invoke-static {v0, v8}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v7

    .line 771
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "JSONException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
