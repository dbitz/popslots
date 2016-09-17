.class Lcom/helpshift/support/HSMessagesFragment$16;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->replyReview(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iput p2, p0, Lcom/helpshift/support/HSMessagesFragment$16;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 950
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/helpshift/support/HSMessagesFragment$16;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 951
    .local v2, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 952
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    .line 953
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 954
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 955
    iget-object v4, v2, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 956
    iget-object v4, v2, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/helpshift/support/model/Message;->setInvisible(Ljava/lang/String;Z)V

    .line 957
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->renderReplyMsg(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/helpshift/support/HSMessagesFragment;->access$700(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Message;)V

    .line 959
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 960
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "conversation"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 961
    const-string/jumbo v4, "r"

    invoke-static {v4, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 963
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 964
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v4

    const-string/jumbo v5, "User reviewed the app"

    invoke-interface {v4, v5}, Lcom/helpshift/support/SupportInternal$Delegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 967
    :cond_0
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$2200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "rurl"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, "rurl":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 969
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 970
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v4}, Lcom/helpshift/support/HSMessagesFragment;->access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData;->disableReview()V

    .line 971
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment$16;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->gotoApp(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/helpshift/support/HSMessagesFragment;->access$2700(Lcom/helpshift/support/HSMessagesFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .end local v1    # "eventData":Lorg/json/JSONObject;
    .end local v3    # "rurl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
