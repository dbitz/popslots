.class public Lcom/helpshift/network/response/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/helpshift/network/response/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/network/response/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final responsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/helpshift/network/response/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/network/response/ExecutorDelivery$1;-><init>(Lcom/helpshift/network/response/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/helpshift/network/response/ExecutorDelivery;->responsePoster:Ljava/util/concurrent/Executor;

    .line 25
    return-void
.end method


# virtual methods
.method public postError(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/errors/NetworkError;)V
    .locals 4
    .param p1, "request"    # Lcom/helpshift/network/request/Request;
    .param p2, "error"    # Lcom/helpshift/network/errors/NetworkError;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/helpshift/network/request/Request;->getSequence()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/helpshift/network/response/Response;->error(Lcom/helpshift/network/errors/NetworkError;Ljava/lang/Integer;)Lcom/helpshift/network/response/Response;

    move-result-object v0

    .line 40
    .local v0, "response":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<*>;"
    iget-object v1, p0, Lcom/helpshift/network/response/ExecutorDelivery;->responsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/helpshift/network/response/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/helpshift/network/response/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/helpshift/network/response/ExecutorDelivery;Lcom/helpshift/network/request/Request;Lcom/helpshift/network/response/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method public postResponse(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/response/Response;)V
    .locals 1
    .param p1, "request"    # Lcom/helpshift/network/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/network/request/Request;",
            "Lcom/helpshift/network/response/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "response":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/network/response/ExecutorDelivery;->postResponse(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/response/Response;Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public postResponse(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/response/Response;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "request"    # Lcom/helpshift/network/request/Request;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/network/request/Request;",
            "Lcom/helpshift/network/response/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "response":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<*>;"
    iget-object v0, p0, Lcom/helpshift/network/response/ExecutorDelivery;->responsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/helpshift/network/response/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/helpshift/network/response/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/helpshift/network/response/ExecutorDelivery;Lcom/helpshift/network/request/Request;Lcom/helpshift/network/response/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method
