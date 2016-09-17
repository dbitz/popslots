.class Lcom/helpshift/support/HSMessagesFragment$18;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->attachImage(I)V
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
    .line 1041
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iput p2, p0, Lcom/helpshift/support/HSMessagesFragment$18;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1043
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/helpshift/support/HSMessagesFragment;->access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/helpshift/support/HSMessagesFragment$18;->val$position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1044
    .local v3, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 1045
    .local v4, "result":Ljava/util/HashMap;
    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1048
    .local v2, "message":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1049
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "url"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1050
    const-string/jumbo v5, "body"

    const-string/jumbo v6, "meta"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "attachments"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1051
    const-string/jumbo v5, "id"

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;
    invoke-static {v6}, Lcom/helpshift/support/HSMessagesFragment;->access$200(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    const-string/jumbo v5, "m"

    invoke-static {v5, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1053
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v5}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1054
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;
    invoke-static {v5}, Lcom/helpshift/support/HSMessagesFragment;->access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v5

    const-string/jumbo v6, "User sent a screenshot"

    invoke-interface {v5, v6}, Lcom/helpshift/support/SupportInternal$Delegate;->userRepliedToConversation(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v5}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v6}, Lcom/helpshift/support/HSMessagesFragment;->access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v6

    iget-object v7, v3, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    iget-object v8, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/helpshift/support/util/AttachmentUtil;->copyAttachment(Landroid/content/Context;Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1069
    :goto_1
    iget-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v6, "localRscMessage_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1070
    iget-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v5}, Lcom/helpshift/support/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 1071
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/helpshift/support/HSMessagesFragment;->access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/helpshift/support/HSMessagesFragment$18;->val$position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1083
    :goto_2
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;
    invoke-static {v5}, Lcom/helpshift/support/HSMessagesFragment;->access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1084
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment$18;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->renderReplyMsg(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/helpshift/support/HSMessagesFragment;->access$700(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Message;)V

    .line 1085
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Error while getting screenshot url"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1064
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Saving uploaded screenshot"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1073
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 1074
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    .line 1075
    const-string/jumbo v5, ""

    iput-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    .line 1076
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 1078
    iget-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 1079
    iget-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/helpshift/support/model/Message;->setInvisible(Ljava/lang/String;Z)V

    .line 1080
    iget-object v5, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/helpshift/support/model/Message;->setScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
