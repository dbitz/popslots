.class Lbolts/Task$11;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/CancellationToken;Lbolts/Continuation;)V
    .locals 0

    .prologue
    .line 638
    .local p0, "this":Lbolts/Task$11;, "Lbolts/Task.11;"
    iput-object p1, p0, Lbolts/Task$11;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$11;->val$ct:Lbolts/CancellationToken;

    iput-object p3, p0, Lbolts/Task$11;->val$continuation:Lbolts/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Lbolts/Task$11;, "Lbolts/Task.11;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v0, p0, Lbolts/Task$11;->val$ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$11;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 650
    :cond_2
    iget-object v0, p0, Lbolts/Task$11;->val$continuation:Lbolts/Continuation;

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lbolts/Task$11;, "Lbolts/Task.11;"
    invoke-virtual {p0, p1}, Lbolts/Task$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
