.class Lcom/helpshift/support/HSMessagesFragment$14;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->replyConfirmation(Ljava/lang/String;Ljava/lang/Boolean;I)V
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
    .line 890
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$14;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iput p2, p0, Lcom/helpshift/support/HSMessagesFragment$14;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 892
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$14;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/helpshift/support/HSMessagesFragment$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 893
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 894
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    .line 895
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 896
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$14;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 897
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/support/model/Message;->setInvisible(Ljava/lang/String;Z)V

    .line 898
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 899
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$14;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->renderReplyMsg(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/helpshift/support/HSMessagesFragment;->access$700(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Message;)V

    .line 900
    return-void
.end method
