.class public Lcom/helpshift/support/model/IssueBuilder;
.super Ljava/lang/Object;
.source "IssueBuilder.java"


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

.field private showAgentName:Ljava/lang/Boolean;

.field private final status:I

.field private final title:Ljava/lang/String;

.field private final updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "issueId"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "createdAt"    # Ljava/lang/String;
    .param p6, "updatedAt"    # Ljava/lang/String;
    .param p7, "status"    # I
    .param p8, "showAgentName"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/support/model/IssueBuilder;->newMessagesCount:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/model/IssueBuilder;->messageList:Ljava/util/List;

    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/model/IssueBuilder;->showAgentName:Ljava/lang/Boolean;

    .line 26
    iput-object p1, p0, Lcom/helpshift/support/model/IssueBuilder;->profileId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/helpshift/support/model/IssueBuilder;->issueId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/helpshift/support/model/IssueBuilder;->body:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/helpshift/support/model/IssueBuilder;->title:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/helpshift/support/model/IssueBuilder;->createdAt:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/helpshift/support/model/IssueBuilder;->updatedAt:Ljava/lang/String;

    .line 32
    iput p7, p0, Lcom/helpshift/support/model/IssueBuilder;->status:I

    .line 33
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/model/IssueBuilder;->showAgentName:Ljava/lang/Boolean;

    .line 34
    return-void
.end method


# virtual methods
.method public build()Lcom/helpshift/support/model/Issue;
    .locals 11

    .prologue
    .line 47
    new-instance v0, Lcom/helpshift/support/model/Issue;

    iget-object v1, p0, Lcom/helpshift/support/model/IssueBuilder;->profileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/support/model/IssueBuilder;->issueId:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/support/model/IssueBuilder;->body:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/support/model/IssueBuilder;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/support/model/IssueBuilder;->createdAt:Ljava/lang/String;

    iget-object v6, p0, Lcom/helpshift/support/model/IssueBuilder;->updatedAt:Ljava/lang/String;

    iget v7, p0, Lcom/helpshift/support/model/IssueBuilder;->status:I

    iget-object v8, p0, Lcom/helpshift/support/model/IssueBuilder;->messageList:Ljava/util/List;

    iget v9, p0, Lcom/helpshift/support/model/IssueBuilder;->newMessagesCount:I

    iget-object v10, p0, Lcom/helpshift/support/model/IssueBuilder;->showAgentName:Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/helpshift/support/model/Issue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IZ)V

    return-object v0
.end method

.method public setMessageList(Ljava/util/List;)Lcom/helpshift/support/model/IssueBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;)",
            "Lcom/helpshift/support/model/IssueBuilder;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    iput-object p1, p0, Lcom/helpshift/support/model/IssueBuilder;->messageList:Ljava/util/List;

    .line 43
    return-object p0
.end method

.method public setNewMessagesCount(I)Lcom/helpshift/support/model/IssueBuilder;
    .locals 0
    .param p1, "newMessagesCount"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/helpshift/support/model/IssueBuilder;->newMessagesCount:I

    .line 38
    return-object p0
.end method
