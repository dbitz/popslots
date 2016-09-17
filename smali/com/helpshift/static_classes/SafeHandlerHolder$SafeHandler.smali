.class public Lcom/helpshift/static_classes/SafeHandlerHolder$SafeHandler;
.super Landroid/os/Handler;
.source "SafeHandlerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/static_classes/SafeHandlerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeHandler"
.end annotation


# instance fields
.field private final callbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/static_classes/SafeHandlerHolder$SafeHandler;->callbackWeakReference:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 25
    iget-object v1, p0, Lcom/helpshift/static_classes/SafeHandlerHolder$SafeHandler;->callbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 26
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 29
    :cond_0
    return-void
.end method
