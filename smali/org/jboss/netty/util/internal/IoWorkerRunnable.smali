.class public Lorg/jboss/netty/util/internal/IoWorkerRunnable;
.super Ljava/lang/Object;
.source "IoWorkerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final IN_IO_THREAD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->IN_IO_THREAD:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "runnable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->runnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->IN_IO_THREAD:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->IN_IO_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/util/internal/IoWorkerRunnable;->IN_IO_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method
