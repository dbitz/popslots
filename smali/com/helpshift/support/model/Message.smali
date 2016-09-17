.class public Lcom/helpshift/support/model/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final author:Ljava/lang/String;

.field private final body:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private inProgress:Z

.field private invisible:Z

.field private final issueId:Ljava/lang/String;

.field private final messageId:Ljava/lang/String;

.field private messageSeen:Z

.field private final meta:Ljava/lang/String;

.field private final origin:Ljava/lang/String;

.field private screenshot:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "origin"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "createdAt"    # Ljava/lang/String;
    .param p7, "author"    # Ljava/lang/String;
    .param p8, "meta"    # Ljava/lang/String;
    .param p9, "screenshot"    # Ljava/lang/String;
    .param p10, "messageSeen"    # Z
    .param p11, "invisible"    # Z
    .param p12, "inProgress"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/helpshift/support/model/Message;->issueId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/helpshift/support/model/Message;->messageId:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/helpshift/support/model/Message;->body:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/helpshift/support/model/Message;->origin:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/helpshift/support/model/Message;->type:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/helpshift/support/model/Message;->createdAt:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/helpshift/support/model/Message;->author:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/helpshift/support/model/Message;->meta:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/helpshift/support/model/Message;->screenshot:Ljava/lang/String;

    .line 46
    iput-boolean p10, p0, Lcom/helpshift/support/model/Message;->messageSeen:Z

    .line 47
    iput-boolean p11, p0, Lcom/helpshift/support/model/Message;->invisible:Z

    .line 48
    iput-boolean p12, p0, Lcom/helpshift/support/model/Message;->inProgress:Z

    .line 49
    return-void
.end method

.method public static setInProgress(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "messageId"    # Ljava/lang/String;
    .param p1, "inProgress"    # Z

    .prologue
    .line 126
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessage(Ljava/lang/String;)Lcom/helpshift/support/model/Message;

    move-result-object v0

    .line 127
    .local v0, "message":Lcom/helpshift/support/model/Message;
    invoke-direct {v0, p1}, Lcom/helpshift/support/model/Message;->setInProgress(Z)V

    .line 128
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessage(Lcom/helpshift/support/model/Message;)I

    .line 129
    return-void
.end method

.method private setInProgress(Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/helpshift/support/model/Message;->inProgress:Z

    .line 109
    return-void
.end method

.method public static setInvisible(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "messageId"    # Ljava/lang/String;
    .param p1, "invisible"    # Z

    .prologue
    .line 120
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessage(Ljava/lang/String;)Lcom/helpshift/support/model/Message;

    move-result-object v0

    .line 121
    .local v0, "message":Lcom/helpshift/support/model/Message;
    invoke-direct {v0, p1}, Lcom/helpshift/support/model/Message;->setInvisible(Z)V

    .line 122
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessage(Lcom/helpshift/support/model/Message;)I

    .line 123
    return-void
.end method

.method private setInvisible(Z)V
    .locals 0
    .param p1, "invisible"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/helpshift/support/model/Message;->invisible:Z

    .line 117
    return-void
.end method

.method private setMessageSeen(Z)V
    .locals 0
    .param p1, "messageSeen"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/helpshift/support/model/Message;->messageSeen:Z

    .line 97
    return-void
.end method

.method public static setScreenshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "messageId"    # Ljava/lang/String;
    .param p1, "screenshot"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessage(Ljava/lang/String;)Lcom/helpshift/support/model/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Lcom/helpshift/support/model/Message;
    invoke-virtual {v0, p1}, Lcom/helpshift/support/model/Message;->setScreenshot(Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessage(Lcom/helpshift/support/model/Message;)I

    .line 135
    return-void
.end method

.method public static updateMessagesSeenState(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getUnseenMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/model/Message;

    .line 142
    .local v0, "message":Lcom/helpshift/support/model/Message;
    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/helpshift/support/model/Message;->setMessageSeen(Z)V

    .line 143
    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v0    # "message":Lcom/helpshift/support/model/Message;
    :cond_0
    invoke-static {v2}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessages(Ljava/util/List;)I

    .line 147
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 151
    instance-of v2, p1, Lcom/helpshift/support/model/Message;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/helpshift/support/model/Message;

    .line 153
    .local v0, "message":Lcom/helpshift/support/model/Message;
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getIssueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getIssueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getMeta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getMeta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->getScreenshot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getScreenshot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->isMessageSeen()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->isMessageSeen()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->isInvisible()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->isInvisible()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/helpshift/support/model/Message;->isInProgress()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->isInProgress()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 166
    .end local v0    # "message":Lcom/helpshift/support/model/Message;
    :cond_0
    return v1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->screenshot:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/helpshift/support/model/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/helpshift/support/model/Message;->inProgress:Z

    return v0
.end method

.method public isInvisible()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/helpshift/support/model/Message;->invisible:Z

    return v0
.end method

.method public isMessageSeen()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/helpshift/support/model/Message;->messageSeen:Z

    return v0
.end method

.method public setScreenshot(Ljava/lang/String;)V
    .locals 1
    .param p1, "screenshot"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/model/Message;->screenshot:Ljava/lang/String;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/helpshift/support/model/Message;->screenshot:Ljava/lang/String;

    goto :goto_0
.end method
