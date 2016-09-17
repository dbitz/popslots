.class final Lcom/adjust/sdk/RequestHandler$InternalHandler;
.super Landroid/os/Handler;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# static fields
.field private static final SEND:I = 0x11ad0


# instance fields
.field private final requestHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/RequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/RequestHandler;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "requestHandler"    # Lcom/adjust/sdk/RequestHandler;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler$InternalHandler;->requestHandlerReference:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    iget-object v2, p0, Lcom/adjust/sdk/RequestHandler$InternalHandler;->requestHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/RequestHandler;

    .line 70
    .local v1, "requestHandler":Lcom/adjust/sdk/RequestHandler;
    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 77
    .local v0, "activityPackage":Lcom/adjust/sdk/ActivityPackage;
    # invokes: Lcom/adjust/sdk/RequestHandler;->sendInternal(Lcom/adjust/sdk/ActivityPackage;)V
    invoke-static {v1, v0}, Lcom/adjust/sdk/RequestHandler;->access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x11ad0
        :pswitch_0
    .end packed-switch
.end method
