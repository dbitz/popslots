.class Lcom/helpshift/support/DownloadManager$1;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/DownloadManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/DownloadManager;


# direct methods
.method constructor <init>(Lcom/helpshift/support/DownloadManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/DownloadManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/helpshift/support/DownloadManager$1;->this$0:Lcom/helpshift/support/DownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/helpshift/support/DownloadTask;

    .line 62
    .local v8, "task":Lcom/helpshift/support/DownloadTask;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 66
    :pswitch_2
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v1

    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getProgress()D

    move-result-wide v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 69
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getDownloadType()I

    move-result v7

    .line 67
    invoke-interface/range {v1 .. v7}, Lcom/helpshift/support/DownloadTaskCallBacks;->onProgressChanged(DILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :pswitch_3
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 77
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getDownloadType()I

    move-result v4

    .line 76
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/support/DownloadTaskCallBacks;->onDownloadTaskPaused(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    :pswitch_4
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 85
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getDownloadType()I

    move-result v4

    .line 84
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/support/DownloadTaskCallBacks;->onDownloadTaskResumed(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :pswitch_5
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager$1;->this$0:Lcom/helpshift/support/DownloadManager;

    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/helpshift/support/DownloadManager;->removeFromCache(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/helpshift/support/DownloadManager;->access$100(Lcom/helpshift/support/DownloadManager;Ljava/lang/String;)V

    .line 92
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 95
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getDownloadType()I

    move-result v5

    .line 93
    invoke-interface/range {v0 .. v5}, Lcom/helpshift/support/DownloadTaskCallBacks;->onDownloadTaskComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager$1;->this$0:Lcom/helpshift/support/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/helpshift/support/DownloadManager;->recycleTask(Lcom/helpshift/support/DownloadTask;)V

    goto/16 :goto_0

    .line 102
    :pswitch_6
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    # getter for: Lcom/helpshift/support/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/support/DownloadTaskCallBacks;
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->access$000()Lcom/helpshift/support/DownloadTaskCallBacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 104
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v8}, Lcom/helpshift/support/DownloadTask;->getDownloadType()I

    move-result v4

    .line 103
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/support/DownloadTaskCallBacks;->onDownloadTaskFailed(ILjava/lang/String;Ljava/lang/String;I)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/helpshift/support/DownloadManager$1;->this$0:Lcom/helpshift/support/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/helpshift/support/DownloadManager;->recycleTask(Lcom/helpshift/support/DownloadTask;)V

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
