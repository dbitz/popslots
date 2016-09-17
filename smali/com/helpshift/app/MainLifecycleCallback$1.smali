.class Lcom/helpshift/app/MainLifecycleCallback$1;
.super Ljava/lang/Object;
.source "MainLifecycleCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/app/MainLifecycleCallback;->dispatchLifecycleEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/app/MainLifecycleCallback;

.field final synthetic val$lifecycleEvent:I


# direct methods
.method constructor <init>(Lcom/helpshift/app/MainLifecycleCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/app/MainLifecycleCallback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/helpshift/app/MainLifecycleCallback$1;->this$0:Lcom/helpshift/app/MainLifecycleCallback;

    iput p2, p0, Lcom/helpshift/app/MainLifecycleCallback$1;->val$lifecycleEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/helpshift/app/MainLifecycleCallback$1;->this$0:Lcom/helpshift/app/MainLifecycleCallback;

    # getter for: Lcom/helpshift/app/MainLifecycleCallback;->lifecycleListeners:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v1}, Lcom/helpshift/app/MainLifecycleCallback;->access$000(Lcom/helpshift/app/MainLifecycleCallback;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/LifecycleListener;

    .line 39
    .local v0, "listener":Lcom/helpshift/app/LifecycleListener;
    iget v2, p0, Lcom/helpshift/app/MainLifecycleCallback$1;->val$lifecycleEvent:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-interface {v0}, Lcom/helpshift/app/LifecycleListener;->onForeground()V

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-interface {v0}, Lcom/helpshift/app/LifecycleListener;->onBackground()V

    goto :goto_0

    .line 50
    .end local v0    # "listener":Lcom/helpshift/app/LifecycleListener;
    :cond_0
    return-void

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
