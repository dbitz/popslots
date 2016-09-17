.class Lcom/helpshift/network/request/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/network/request/RequestQueue;->add(Lcom/helpshift/network/request/Request;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/network/request/RequestQueue;

.field final synthetic val$request:Lcom/helpshift/network/request/Request;


# direct methods
.method constructor <init>(Lcom/helpshift/network/request/RequestQueue;Lcom/helpshift/network/request/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/network/request/RequestQueue;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/helpshift/network/request/RequestQueue$1;->this$0:Lcom/helpshift/network/request/RequestQueue;

    iput-object p2, p0, Lcom/helpshift/network/request/RequestQueue$1;->val$request:Lcom/helpshift/network/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/network/request/RequestQueue$1;->this$0:Lcom/helpshift/network/request/RequestQueue;

    # getter for: Lcom/helpshift/network/request/RequestQueue;->network:Lcom/helpshift/network/Network;
    invoke-static {v3}, Lcom/helpshift/network/request/RequestQueue;->access$000(Lcom/helpshift/network/request/RequestQueue;)Lcom/helpshift/network/Network;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/network/request/RequestQueue$1;->val$request:Lcom/helpshift/network/request/Request;

    invoke-interface {v3, v4}, Lcom/helpshift/network/Network;->performRequest(Lcom/helpshift/network/request/Request;)Lcom/helpshift/network/response/NetworkResponse;

    move-result-object v1

    .line 62
    .local v1, "networkResponse":Lcom/helpshift/network/response/NetworkResponse;
    invoke-virtual {v1}, Lcom/helpshift/network/response/NetworkResponse;->isNotModified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/helpshift/network/request/RequestQueue$1;->val$request:Lcom/helpshift/network/request/Request;

    invoke-virtual {v3}, Lcom/helpshift/network/request/Request;->hasHadResponseDelivered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 74
    .end local v1    # "networkResponse":Lcom/helpshift/network/response/NetworkResponse;
    :goto_0
    return-object v2

    .line 66
    .restart local v1    # "networkResponse":Lcom/helpshift/network/response/NetworkResponse;
    :cond_0
    new-instance v3, Lcom/helpshift/network/errors/NetworkError;

    sget-object v4, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->CONTENT_UNCHANGED:Ljava/lang/Integer;

    invoke-direct {v3, v4}, Lcom/helpshift/network/errors/NetworkError;-><init>(Ljava/lang/Integer;)V

    throw v3
    :try_end_0
    .catch Lcom/helpshift/network/errors/NetworkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "networkResponse":Lcom/helpshift/network/response/NetworkResponse;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "networkError":Lcom/helpshift/network/errors/NetworkError;
    iget-object v3, p0, Lcom/helpshift/network/request/RequestQueue$1;->this$0:Lcom/helpshift/network/request/RequestQueue;

    iget-object v4, p0, Lcom/helpshift/network/request/RequestQueue$1;->val$request:Lcom/helpshift/network/request/Request;

    invoke-virtual {v3, v4, v0}, Lcom/helpshift/network/request/RequestQueue;->parseAndDeliverNetworkError(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/errors/NetworkError;)V

    move-object v2, v0

    .line 74
    goto :goto_0

    .line 69
    .end local v0    # "networkError":Lcom/helpshift/network/errors/NetworkError;
    .restart local v1    # "networkResponse":Lcom/helpshift/network/response/NetworkResponse;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/helpshift/network/request/RequestQueue$1;->val$request:Lcom/helpshift/network/request/Request;

    invoke-virtual {v3, v1}, Lcom/helpshift/network/request/Request;->parseNetworkResponse(Lcom/helpshift/network/response/NetworkResponse;)Lcom/helpshift/network/response/Response;

    move-result-object v2

    .line 70
    .local v2, "response":Lcom/helpshift/network/response/Response;, "Lcom/helpshift/network/response/Response<*>;"
    iget-object v3, p0, Lcom/helpshift/network/request/RequestQueue$1;->this$0:Lcom/helpshift/network/request/RequestQueue;

    # getter for: Lcom/helpshift/network/request/RequestQueue;->delivery:Lcom/helpshift/network/response/ResponseDelivery;
    invoke-static {v3}, Lcom/helpshift/network/request/RequestQueue;->access$100(Lcom/helpshift/network/request/RequestQueue;)Lcom/helpshift/network/response/ResponseDelivery;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/network/request/RequestQueue$1;->val$request:Lcom/helpshift/network/request/Request;

    invoke-interface {v3, v4, v2}, Lcom/helpshift/network/response/ResponseDelivery;->postResponse(Lcom/helpshift/network/request/Request;Lcom/helpshift/network/response/Response;)V
    :try_end_1
    .catch Lcom/helpshift/network/errors/NetworkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
