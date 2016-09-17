.class public Lcom/helpshift/network/request/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/network/request/RequestQueue$DeliveryType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"


# instance fields
.field private final delivery:Lcom/helpshift/network/response/ResponseDelivery;

.field private dispatcherPool:Ljava/util/concurrent/ExecutorService;

.field private final network:Lcom/helpshift/network/Network;


# direct methods
.method protected constructor <init>(Lcom/helpshift/network/Network;Lcom/helpshift/network/response/ResponseDelivery;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "network"    # Lcom/helpshift/network/Network;
    .param p2, "delivery"    # Lcom/helpshift/network/response/ResponseDelivery;
    .param p3, "dispatcherPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/helpshift/network/request/RequestQueue;->network:Lcom/helpshift/network/Network;

    .line 29
    iput-object p3, p0, Lcom/helpshift/network/request/RequestQueue;->dispatcherPool:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object p2, p0, Lcom/helpshift/network/request/RequestQueue;->delivery:Lcom/helpshift/network/response/ResponseDelivery;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/network/request/RequestQueue;)Lcom/helpshift/network/Network;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/network/request/RequestQueue;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/helpshift/network/request/RequestQueue;->network:Lcom/helpshift/network/Network;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/network/request/RequestQueue;)Lcom/helpshift/network/response/ResponseDelivery;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/network/request/RequestQueue;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/helpshift/network/request/RequestQueue;->delivery:Lcom/helpshift/network/response/ResponseDelivery;

    return-object v0
.end method

.method public static getRequestQueue(Lcom/helpshift/network/Network;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Lcom/helpshift/network/request/RequestQueue;
    .locals 6
    .param p0, "network"    # Lcom/helpshift/network/Network;
    .param p1, "deliveryType"    # Ljava/lang/Integer;
    .param p2, "dispatcherPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 35
    sget-object v4, Lcom/helpshift/network/request/RequestQueue$DeliveryType;->ON_NEW_THREAD:Ljava/lang/Integer;

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v4, "ResponseThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "networkHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 38
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 39
    .local v3, "networkLooper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .local v1, "networkHandler":Landroid/os/Handler;
    new-instance v0, Lcom/helpshift/network/response/ExecutorDelivery;

    invoke-direct {v0, v1}, Lcom/helpshift/network/response/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 44
    .end local v1    # "networkHandler":Landroid/os/Handler;
    .end local v2    # "networkHandlerThread":Landroid/os/HandlerThread;
    .end local v3    # "networkLooper":Landroid/os/Looper;
    .local v0, "delivery":Lcom/helpshift/network/response/ResponseDelivery;
    :goto_0
    new-instance v4, Lcom/helpshift/network/request/RequestQueue;

    invoke-direct {v4, p0, v0, p2}, Lcom/helpshift/network/request/RequestQueue;-><init>(Lcom/helpshift/network/Network;Lcom/helpshift/network/response/ResponseDelivery;Ljava/util/concurrent/ExecutorService;)V

    return-object v4

    .line 42
    .end local v0    # "delivery":Lcom/helpshift/network/response/ResponseDelivery;
    :cond_0
    new-instance v0, Lcom/helpshift/network/response/ExecutorDelivery;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v4}, Lcom/helpshift/network/response/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .restart local v0    # "delivery":Lcom/helpshift/network/response/ResponseDelivery;
    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/helpshift/network/request/Request;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "request"    # Lcom/helpshift/network/request/Request;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/network/request/RequestQueue;->dispatcherPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/helpshift/network/request/RequestQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/network/request/RequestQueue$1;-><init>(Lcom/helpshift/network/request/RequestQueue;Lcom/helpshift/network/request/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected parseAndDeliverNetworkError(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/errors/NetworkError;)V
    .locals 1
    .param p1, "request"    # Lcom/helpshift/network/request/Request;
    .param p2, "error"    # Lcom/helpshift/network/errors/NetworkError;

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Lcom/helpshift/network/request/Request;->parseNetworkError(Lcom/helpshift/network/errors/NetworkError;)Lcom/helpshift/network/errors/NetworkError;

    move-result-object p2

    .line 82
    iget-object v0, p0, Lcom/helpshift/network/request/RequestQueue;->delivery:Lcom/helpshift/network/response/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/helpshift/network/response/ResponseDelivery;->postError(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/errors/NetworkError;)V

    .line 83
    return-void
.end method

.method public shutdown(Z)V
    .locals 5
    .param p1, "awaitTermination"    # Z

    .prologue
    .line 86
    iget-object v1, p0, Lcom/helpshift/network/request/RequestQueue;->dispatcherPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 87
    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/network/request/RequestQueue;->dispatcherPool:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "HelpshiftDebug"

    const-string/jumbo v2, "Pool shutdown interrupted :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
