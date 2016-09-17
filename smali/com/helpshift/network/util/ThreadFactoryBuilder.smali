.class public Lcom/helpshift/network/util/ThreadFactoryBuilder;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"


# instance fields
.field private daemon:Z

.field private name:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->name:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->daemon:Z

    .line 13
    const/4 v0, 0x5

    iput v0, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->priority:I

    return-void
.end method

.method private static build(Lcom/helpshift/network/util/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
    .locals 6
    .param p0, "builder"    # Lcom/helpshift/network/util/ThreadFactoryBuilder;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->name:Ljava/lang/String;

    .line 37
    .local v2, "namePrefix":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->daemon:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 38
    .local v1, "daemon":Ljava/lang/Boolean;
    iget v4, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40
    .local v3, "priority":Ljava/lang/Integer;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 42
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v4, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/helpshift/network/util/ThreadFactoryBuilder$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v4
.end method


# virtual methods
.method public build()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/helpshift/network/util/ThreadFactoryBuilder;->build(Lcom/helpshift/network/util/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/helpshift/network/util/ThreadFactoryBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->name:Ljava/lang/String;

    .line 17
    return-object p0
.end method

.method public setPriority(I)Lcom/helpshift/network/util/ThreadFactoryBuilder;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 21
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 22
    const/16 p1, 0xa

    .line 27
    :cond_0
    :goto_0
    iput p1, p0, Lcom/helpshift/network/util/ThreadFactoryBuilder;->priority:I

    .line 28
    return-object p0

    .line 23
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 24
    const/4 p1, 0x1

    goto :goto_0
.end method
