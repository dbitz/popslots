.class public Lorg/jboss/netty/util/ThreadRenamingRunnable;
.super Ljava/lang/Object;
.source "ThreadRenamingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static volatile threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;


# instance fields
.field private final proposedThreadName:Ljava/lang/String;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 41
    sget-object v0, Lorg/jboss/netty/util/ThreadNameDeterminer;->PROPOSED:Lorg/jboss/netty/util/ThreadNameDeterminer;

    sput-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "proposedThreadName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "runnable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proposedThreadName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->runnable:Ljava/lang/Runnable;

    .line 85
    iput-object p2, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->proposedThreadName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private getNewThreadName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "currentThreadName"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 122
    .local v0, "newThreadName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/jboss/netty/util/ThreadRenamingRunnable;->getThreadNameDeterminer()Lorg/jboss/netty/util/ThreadNameDeterminer;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->proposedThreadName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lorg/jboss/netty/util/ThreadNameDeterminer;->determineThreadName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    if-nez v0, :cond_0

    .end local p1    # "currentThreadName":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 125
    .restart local p1    # "currentThreadName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "Failed to determine the thread name"

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    move-object p1, v0

    .line 129
    goto :goto_1
.end method

.method public static getThreadNameDeterminer()Lorg/jboss/netty/util/ThreadNameDeterminer;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-object v0
.end method

.method public static setThreadNameDeterminer(Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 2
    .param p0, "threadNameDeterminer"    # Lorg/jboss/netty/util/ThreadNameDeterminer;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "threadNameDeterminer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    sput-object p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    .line 67
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 90
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "oldThreadName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/jboss/netty/util/ThreadRenamingRunnable;->getNewThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "newThreadName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 95
    .local v4, "renamed":Z
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v4, 0x1

    .line 108
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    if-eqz v4, :cond_1

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 116
    :cond_1
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v6, "Failed to rename a thread due to security restriction."

    invoke-interface {v5, v6, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_2
    throw v5
.end method
