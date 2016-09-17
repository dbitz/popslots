.class public Lcom/helpshift/network/errors/NetworkError;
.super Ljava/lang/Exception;
.source "NetworkError.java"


# instance fields
.field public final networkResponse:Lcom/helpshift/network/response/NetworkResponse;

.field private reason:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/Integer;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/helpshift/network/errors/NetworkError;->reason:Ljava/lang/Integer;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/errors/NetworkError;->networkResponse:Lcom/helpshift/network/response/NetworkResponse;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/helpshift/network/response/NetworkResponse;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Integer;
    .param p2, "response"    # Lcom/helpshift/network/response/NetworkResponse;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/helpshift/network/errors/NetworkError;->reason:Ljava/lang/Integer;

    .line 16
    iput-object p2, p0, Lcom/helpshift/network/errors/NetworkError;->networkResponse:Lcom/helpshift/network/response/NetworkResponse;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/Integer;
    .param p2, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/helpshift/network/errors/NetworkError;->reason:Ljava/lang/Integer;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/errors/NetworkError;->networkResponse:Lcom/helpshift/network/response/NetworkResponse;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/Integer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    iput-object p1, p0, Lcom/helpshift/network/errors/NetworkError;->reason:Ljava/lang/Integer;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/errors/NetworkError;->networkResponse:Lcom/helpshift/network/response/NetworkResponse;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/errors/NetworkError;->networkResponse:Lcom/helpshift/network/response/NetworkResponse;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/errors/NetworkError;->networkResponse:Lcom/helpshift/network/response/NetworkResponse;

    .line 39
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/network/errors/NetworkError;->reason:Ljava/lang/Integer;

    return-object v0
.end method
