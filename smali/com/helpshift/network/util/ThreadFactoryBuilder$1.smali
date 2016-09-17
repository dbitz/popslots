.class final Lcom/helpshift/network/util/ThreadFactoryBuilder$1;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/network/util/ThreadFactoryBuilder;->build(Lcom/helpshift/network/util/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$daemon:Ljava/lang/Boolean;

.field final synthetic val$namePrefix:Ljava/lang/String;

.field final synthetic val$priority:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$namePrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$namePrefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$namePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 50
    iget-object v1, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 51
    return-object v0
.end method
