.class public Lcom/helpshift/support/model/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "origin"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "createdAt"    # Ljava/lang/String;
    .param p7, "author"    # Ljava/lang/String;
    .param p8, "meta"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/model/MessageBuilder;->screenshot:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/helpshift/support/model/MessageBuilder;->messageSeen:Z

    .line 15
    iput-boolean v1, p0, Lcom/helpshift/support/model/MessageBuilder;->invisible:Z

    .line 16
    iput-boolean v1, p0, Lcom/helpshift/support/model/MessageBuilder;->inProgress:Z

    .line 26
    iput-object p1, p0, Lcom/helpshift/support/model/MessageBuilder;->issueId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/helpshift/support/model/MessageBuilder;->messageId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/helpshift/support/model/MessageBuilder;->body:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/helpshift/support/model/MessageBuilder;->origin:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/helpshift/support/model/MessageBuilder;->type:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/helpshift/support/model/MessageBuilder;->createdAt:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/helpshift/support/model/MessageBuilder;->author:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/helpshift/support/model/MessageBuilder;->meta:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public build()Lcom/helpshift/support/model/Message;
    .locals 13

    .prologue
    .line 57
    new-instance v0, Lcom/helpshift/support/model/Message;

    iget-object v1, p0, Lcom/helpshift/support/model/MessageBuilder;->issueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/support/model/MessageBuilder;->messageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/support/model/MessageBuilder;->body:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/support/model/MessageBuilder;->origin:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/support/model/MessageBuilder;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/helpshift/support/model/MessageBuilder;->createdAt:Ljava/lang/String;

    iget-object v7, p0, Lcom/helpshift/support/model/MessageBuilder;->author:Ljava/lang/String;

    iget-object v8, p0, Lcom/helpshift/support/model/MessageBuilder;->meta:Ljava/lang/String;

    iget-object v9, p0, Lcom/helpshift/support/model/MessageBuilder;->screenshot:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/helpshift/support/model/MessageBuilder;->messageSeen:Z

    iget-boolean v11, p0, Lcom/helpshift/support/model/MessageBuilder;->invisible:Z

    iget-boolean v12, p0, Lcom/helpshift/support/model/MessageBuilder;->inProgress:Z

    invoke-direct/range {v0 .. v12}, Lcom/helpshift/support/model/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public setInProgress(Z)Lcom/helpshift/support/model/MessageBuilder;
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/helpshift/support/model/MessageBuilder;->inProgress:Z

    .line 53
    return-object p0
.end method

.method public setInvisible(Z)Lcom/helpshift/support/model/MessageBuilder;
    .locals 0
    .param p1, "invisible"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/helpshift/support/model/MessageBuilder;->invisible:Z

    .line 48
    return-object p0
.end method

.method public setMessageSeen(Z)Lcom/helpshift/support/model/MessageBuilder;
    .locals 0
    .param p1, "messageSeen"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/helpshift/support/model/MessageBuilder;->messageSeen:Z

    .line 43
    return-object p0
.end method

.method public setScreenshot(Ljava/lang/String;)Lcom/helpshift/support/model/MessageBuilder;
    .locals 0
    .param p1, "screenshot"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/helpshift/support/model/MessageBuilder;->screenshot:Ljava/lang/String;

    .line 38
    return-object p0
.end method
