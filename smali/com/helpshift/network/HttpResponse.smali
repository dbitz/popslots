.class public Lcom/helpshift/network/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private entity:Lcom/helpshift/network/HttpEntity;

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/network/Header;",
            ">;"
        }
    .end annotation
.end field

.field private statusLine:Lcom/helpshift/network/StatusLine;


# direct methods
.method public constructor <init>(Lcom/helpshift/network/StatusLine;)V
    .locals 2
    .param p1, "statusLine"    # Lcom/helpshift/network/StatusLine;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Status line may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/helpshift/network/HttpResponse;->statusLine:Lcom/helpshift/network/StatusLine;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/helpshift/network/HttpResponse;->headers:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public addHeader(Lcom/helpshift/network/Header;)V
    .locals 1
    .param p1, "header"    # Lcom/helpshift/network/Header;

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/helpshift/network/HttpResponse;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllHeaders()[Lcom/helpshift/network/Header;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/helpshift/network/HttpResponse;->headers:Ljava/util/List;

    iget-object v1, p0, Lcom/helpshift/network/HttpResponse;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/helpshift/network/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/network/Header;

    return-object v0
.end method

.method public getEntity()Lcom/helpshift/network/HttpEntity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/helpshift/network/HttpResponse;->entity:Lcom/helpshift/network/HttpEntity;

    return-object v0
.end method

.method public getStatusLine()Lcom/helpshift/network/StatusLine;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/helpshift/network/HttpResponse;->statusLine:Lcom/helpshift/network/StatusLine;

    return-object v0
.end method

.method public setEntity(Lcom/helpshift/network/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lcom/helpshift/network/HttpEntity;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/helpshift/network/HttpResponse;->entity:Lcom/helpshift/network/HttpEntity;

    .line 21
    return-void
.end method
