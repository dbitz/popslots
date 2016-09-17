.class public Lcom/helpshift/network/response/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field private data:[B

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notModified:Z

.field private requestIdentifier:Ljava/lang/Integer;

.field private statusCode:I


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZLjava/lang/Integer;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p4, "notModified"    # Z
    .param p5, "requestIdentifier"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/helpshift/network/response/NetworkResponse;->statusCode:I

    .line 16
    iput-object p2, p0, Lcom/helpshift/network/response/NetworkResponse;->data:[B

    .line 17
    iput-object p3, p0, Lcom/helpshift/network/response/NetworkResponse;->headers:Ljava/util/Map;

    .line 18
    iput-boolean p4, p0, Lcom/helpshift/network/response/NetworkResponse;->notModified:Z

    .line 19
    iput-object p5, p0, Lcom/helpshift/network/response/NetworkResponse;->requestIdentifier:Ljava/lang/Integer;

    .line 20
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/helpshift/network/response/NetworkResponse;->data:[B

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/helpshift/network/response/NetworkResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/helpshift/network/response/NetworkResponse;->requestIdentifier:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/helpshift/network/response/NetworkResponse;->statusCode:I

    return v0
.end method

.method public isNotModified()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/helpshift/network/response/NetworkResponse;->notModified:Z

    return v0
.end method
