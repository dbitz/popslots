.class public Lcom/helpshift/network/request/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Lcom/helpshift/network/Network;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Lcom/helpshift/network/request/RequestQueue;
    .locals 1
    .param p0, "network"    # Lcom/helpshift/network/Network;
    .param p1, "deliveryType"    # Ljava/lang/Integer;
    .param p2, "dispatcherPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/helpshift/network/request/RequestQueue;->getRequestQueue(Lcom/helpshift/network/Network;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Lcom/helpshift/network/request/RequestQueue;

    move-result-object v0

    return-object v0
.end method
