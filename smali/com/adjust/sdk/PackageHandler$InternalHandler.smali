.class final Lcom/adjust/sdk/PackageHandler$InternalHandler;
.super Landroid/os/Handler;
.source "PackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/PackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# static fields
.field private static final ADD:I = 0x2

.field private static final INIT:I = 0x1

.field private static final SEND_FIRST:I = 0x4

.field private static final SEND_NEXT:I = 0x3


# instance fields
.field private final packageHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/PackageHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/PackageHandler;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "packageHandler"    # Lcom/adjust/sdk/PackageHandler;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler$InternalHandler;->packageHandlerReference:Ljava/lang/ref/WeakReference;

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    iget-object v2, p0, Lcom/adjust/sdk/PackageHandler$InternalHandler;->packageHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/PackageHandler;

    .line 127
    .local v1, "packageHandler":Lcom/adjust/sdk/PackageHandler;
    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    # invokes: Lcom/adjust/sdk/PackageHandler;->initInternal()V
    invoke-static {v1}, Lcom/adjust/sdk/PackageHandler;->access$000(Lcom/adjust/sdk/PackageHandler;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 137
    .local v0, "activityPackage":Lcom/adjust/sdk/ActivityPackage;
    # invokes: Lcom/adjust/sdk/PackageHandler;->addInternal(Lcom/adjust/sdk/ActivityPackage;)V
    invoke-static {v1, v0}, Lcom/adjust/sdk/PackageHandler;->access$100(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    .line 140
    .end local v0    # "activityPackage":Lcom/adjust/sdk/ActivityPackage;
    :pswitch_2
    # invokes: Lcom/adjust/sdk/PackageHandler;->sendFirstInternal()V
    invoke-static {v1}, Lcom/adjust/sdk/PackageHandler;->access$200(Lcom/adjust/sdk/PackageHandler;)V

    goto :goto_0

    .line 143
    :pswitch_3
    # invokes: Lcom/adjust/sdk/PackageHandler;->sendNextInternal()V
    invoke-static {v1}, Lcom/adjust/sdk/PackageHandler;->access$300(Lcom/adjust/sdk/PackageHandler;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
