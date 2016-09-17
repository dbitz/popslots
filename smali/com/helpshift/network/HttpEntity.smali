.class public Lcom/helpshift/network/HttpEntity;
.super Ljava/lang/Object;
.source "HttpEntity.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/network/HttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/helpshift/network/HttpEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 48
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/network/HttpEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/helpshift/network/HttpEntity;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/helpshift/network/HttpEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/helpshift/network/HttpEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/helpshift/network/HttpEntity;->content:Ljava/io/InputStream;

    .line 14
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/helpshift/network/HttpEntity;->contentEncoding:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/helpshift/network/HttpEntity;->contentLength:J

    .line 22
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/helpshift/network/HttpEntity;->contentType:Ljava/lang/String;

    .line 38
    return-void
.end method
