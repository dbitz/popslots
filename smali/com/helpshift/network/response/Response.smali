.class public Lcom/helpshift/network/response/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/network/response/Response$ErrorListener;,
        Lcom/helpshift/network/response/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final error:Lcom/helpshift/network/errors/NetworkError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "error"    # Lcom/helpshift/network/errors/NetworkError;
    .param p2, "requestIdentifier"    # Ljava/lang/Integer;

    .prologue
    .line 43
    .local p0, "this":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/network/response/Response;->intermediate:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/response/Response;->result:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/helpshift/network/response/Response;->error:Lcom/helpshift/network/errors/NetworkError;

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "requestIdentifier"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/network/response/Response;->intermediate:Z

    .line 39
    iput-object p1, p0, Lcom/helpshift/network/response/Response;->result:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/response/Response;->error:Lcom/helpshift/network/errors/NetworkError;

    .line 41
    return-void
.end method

.method public static error(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)Lcom/helpshift/network/response/Response;
    .locals 1
    .param p0, "error"    # Lcom/helpshift/network/errors/NetworkError;
    .param p1, "requestIdentifier"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpshift/network/errors/NetworkError;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/helpshift/network/response/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/helpshift/network/response/Response;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/network/response/Response;-><init>(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Ljava/lang/Integer;)Lcom/helpshift/network/response/Response;
    .locals 1
    .param p1, "requestIdentifier"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/helpshift/network/response/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/helpshift/network/response/Response;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/network/response/Response;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<TT;>;"
    iget-object v0, p0, Lcom/helpshift/network/response/Response;->error:Lcom/helpshift/network/errors/NetworkError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
