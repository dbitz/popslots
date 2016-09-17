.class public Lcom/scene53/utils/purchase/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/scene53/utils/purchase/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/scene53/utils/purchase/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/scene53/utils/purchase/IabException;-><init>(Lcom/scene53/utils/purchase/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 38
    new-instance v0, Lcom/scene53/utils/purchase/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/scene53/utils/purchase/IabException;-><init>(Lcom/scene53/utils/purchase/IabResult;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/scene53/utils/purchase/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/scene53/utils/purchase/IabResult;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scene53/utils/purchase/IabException;-><init>(Lcom/scene53/utils/purchase/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/scene53/utils/purchase/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/scene53/utils/purchase/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/scene53/utils/purchase/IabException;->mResult:Lcom/scene53/utils/purchase/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lcom/scene53/utils/purchase/IabResult;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabException;->mResult:Lcom/scene53/utils/purchase/IabResult;

    return-object v0
.end method
