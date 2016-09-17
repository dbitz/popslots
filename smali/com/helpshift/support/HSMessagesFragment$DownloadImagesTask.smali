.class Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;
.super Landroid/os/AsyncTask;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/HashMap;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;


# direct methods
.method private constructor <init>(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/HSMessagesFragment;Lcom/helpshift/support/HSMessagesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p2, "x1"    # Lcom/helpshift/support/HSMessagesFragment$1;

    .prologue
    .line 1419
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1419
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->doInBackground([Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 11
    .param p1, "imagesData"    # [Ljava/util/HashMap;

    .prologue
    const/4 v10, 0x0

    .line 1422
    aget-object v3, p1, v10

    .line 1423
    .local v3, "imageData":Ljava/util/HashMap;
    const-string/jumbo v8, "url"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1424
    .local v7, "url":Ljava/lang/String;
    const-string/jumbo v8, "messageId"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1425
    .local v4, "messageId":Ljava/lang/String;
    const-string/jumbo v8, "attachId"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1426
    .local v0, "attachId":I
    const-string/jumbo v8, "position"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1427
    .local v5, "position":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1429
    .local v6, "result":Ljava/util/HashMap;
    :try_start_0
    iget-object v8, p0, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v8, v7, v4, v0}, Lcom/helpshift/support/HSMessagesFragment;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1430
    .local v2, "filePath":Ljava/lang/String;
    const-string/jumbo v8, "success"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    const-string/jumbo v8, "filepath"

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const-string/jumbo v8, "position"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    .end local v2    # "filePath":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1435
    :catch_0
    move-exception v1

    .line 1436
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "HelpShiftDebug"

    const-string/jumbo v9, "Downloading image"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    const-string/jumbo v8, "success"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1419
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "result"    # Ljava/util/HashMap;

    .prologue
    .line 1444
    const-string/jumbo v2, "success"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1445
    const-string/jumbo v2, "position"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1446
    .local v1, "position":I
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1447
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    const-string/jumbo v2, "filepath"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    .line 1448
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1451
    .end local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    .end local v1    # "position":I
    :cond_0
    return-void
.end method
