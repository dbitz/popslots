.class public Lorg/jboss/netty/util/internal/ThreadLocalBoolean;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultValue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "defaultValue"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->defaultValue:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->defaultValue:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
