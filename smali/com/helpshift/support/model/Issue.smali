.class public Lcom/helpshift/support/model/Issue;
.super Ljava/lang/Object;
.source "Issue.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final issueId:Ljava/lang/String;

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private newMessagesCount:I

.field private final profileId:Ljava/lang/String;

.field private showAgentName:Z

.field private status:I

.field private final title:Ljava/lang/String;

.field private final updatedAt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IZ)V
    .locals 0
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "issueId"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "createdAt"    # Ljava/lang/String;
    .param p6, "updatedAt"    # Ljava/lang/String;
    .param p7, "status"    # I
    .param p9, "newMessagesCount"    # I
    .param p10, "showAgentName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p8, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/helpshift/support/model/Issue;->profileId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/helpshift/support/model/Issue;->issueId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/helpshift/support/model/Issue;->body:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/helpshift/support/model/Issue;->title:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/helpshift/support/model/Issue;->createdAt:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/helpshift/support/model/Issue;->updatedAt:Ljava/lang/String;

    .line 39
    iput p7, p0, Lcom/helpshift/support/model/Issue;->status:I

    .line 40
    iput-object p8, p0, Lcom/helpshift/support/model/Issue;->messageList:Ljava/util/List;

    .line 41
    iput p9, p0, Lcom/helpshift/support/model/Issue;->newMessagesCount:I

    .line 42
    iput-boolean p10, p0, Lcom/helpshift/support/model/Issue;->showAgentName:Z

    .line 43
    return-void
.end method

.method public static getProfileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "issueId"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v1, ""

    .line 116
    .local v1, "profileId":Ljava/lang/String;
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v0

    .line 117
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getProfileId()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_0
    return-object v1
.end method

.method public static isShowAgentNameEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "issueId"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v2, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v3, "san"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 125
    .local v0, "agentNameEnabledFromConfig":Z
    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v1

    .line 127
    .local v1, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v1}, Lcom/helpshift/support/model/Issue;->isShowAgentName()Z

    move-result v2

    .line 129
    .end local v1    # "issue":Lcom/helpshift/support/model/Issue;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static openIssue(Ljava/lang/String;)V
    .locals 3
    .param p0, "issueId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v0

    .line 102
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 103
    invoke-virtual {v0, v2}, Lcom/helpshift/support/model/Issue;->setStatus(I)V

    .line 104
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeIssue(Lcom/helpshift/support/model/Issue;)I

    .line 106
    :cond_0
    return-void
.end method

.method public static resetIssueCount(Ljava/lang/String;)V
    .locals 2
    .param p0, "issueId"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v0

    .line 110
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/helpshift/support/model/Issue;->setNewMessagesCount(I)V

    .line 111
    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeIssue(Lcom/helpshift/support/model/Issue;)I

    .line 112
    return-void
.end method

.method private setNewMessagesCount(I)V
    .locals 0
    .param p1, "newMessagesCount"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/helpshift/support/model/Issue;->newMessagesCount:I

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 134
    instance-of v2, p1, Lcom/helpshift/support/model/Issue;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/helpshift/support/model/Issue;

    .line 136
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getUpdatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getUpdatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getNewMessagesCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getNewMessagesCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->isShowAgentName()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->isShowAgentName()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 147
    .end local v0    # "issue":Lcom/helpshift/support/model/Issue;
    :cond_0
    return v1
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->messageList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/model/Issue;->setMessageList(Ljava/util/List;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public getNewMessagesCount()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/helpshift/support/model/Issue;->newMessagesCount:I

    return v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/helpshift/support/model/Issue;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/helpshift/support/model/Issue;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public isShowAgentName()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/helpshift/support/model/Issue;->showAgentName:Z

    return v0
.end method

.method public setMessageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    iput-object p1, p0, Lcom/helpshift/support/model/Issue;->messageList:Ljava/util/List;

    .line 87
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/helpshift/support/model/Issue;->status:I

    .line 71
    return-void
.end method
