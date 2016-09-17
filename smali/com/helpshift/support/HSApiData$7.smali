.class Lcom/helpshift/support/HSApiData$7;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->rfrAccepted(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$issueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$7;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$7;->val$issueId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$7;->val$issueId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v7

    .line 555
    .local v7, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v7}, Lcom/helpshift/support/model/Issue;->getNewMessagesCount()I

    move-result v3

    .line 556
    .local v3, "messageCount":I
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/helpshift/support/HSApiData$7;->val$issueId:Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData$7;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v1, v1, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    .line 557
    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getForegroundIssue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    sget-object v0, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Lcom/helpshift/support/model/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-int v2, v0

    .line 559
    .local v2, "ts":I
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$7;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;
    invoke-static {v0}, Lcom/helpshift/support/HSApiData;->access$400(Lcom/helpshift/support/HSApiData;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/HSApiData$7;->val$issueId:Ljava/lang/String;

    const-string/jumbo v4, "inapp"

    iget-object v5, p0, Lcom/helpshift/support/HSApiData$7;->this$0:Lcom/helpshift/support/HSApiData;

    .line 560
    # getter for: Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;
    invoke-static {v5}, Lcom/helpshift/support/HSApiData;->access$400(Lcom/helpshift/support/HSApiData;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/support/util/HSNotification;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/HSNotification;->showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v2    # "ts":I
    .end local v3    # "messageCount":I
    .end local v7    # "issue":Lcom/helpshift/support/model/Issue;
    :cond_0
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v6

    .line 563
    .local v6, "e":Ljava/text/ParseException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "rfrAccepted"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
