.class final Lorg/jboss/netty/handler/ssl/ImmediateExecutor;
.super Ljava/lang/Object;
.source "ImmediateExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {v0}, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 38
    return-void
.end method
