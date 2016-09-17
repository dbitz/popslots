.class Lcom/helpshift/support/HSMessagesFragment$3;
.super Landroid/os/Handler;
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
    .line 162
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 166
    .local v0, "messages":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$200(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/model/Issue;->isShowAgentNameEnabled(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/helpshift/support/HSMessagesFragment;->showAgentName:Z
    invoke-static {v1, v2}, Lcom/helpshift/support/HSMessagesFragment;->access$102(Lcom/helpshift/support/HSMessagesFragment;Z)Z

    .line 168
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$000(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 169
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->refreshStatus()V
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$300(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 170
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/helpshift/support/HSMessagesFragment;->access$500(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$3;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 172
    :cond_0
    return-void
.end method
