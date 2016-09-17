.class public abstract Lorg/jboss/netty/logging/AbstractInternalLogger;
.super Ljava/lang/Object;
.source "AbstractInternalLogger.java"

# interfaces
.implements Lorg/jboss/netty/logging/InternalLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/logging/AbstractInternalLogger$1;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z
    .locals 2
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;

    .prologue
    .line 37
    sget-object v0, Lorg/jboss/netty/logging/AbstractInternalLogger$1;->$SwitchMap$org$jboss$netty$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lorg/jboss/netty/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 39
    :pswitch_0
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isDebugEnabled()Z

    move-result v0

    .line 45
    :goto_0
    return v0

    .line 41
    :pswitch_1
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isInfoEnabled()Z

    move-result v0

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isWarnEnabled()Z

    move-result v0

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isErrorEnabled()Z

    move-result v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lorg/jboss/netty/logging/AbstractInternalLogger$1;->$SwitchMap$org$jboss$netty$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lorg/jboss/netty/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 73
    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->debug(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 76
    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    sget-object v0, Lorg/jboss/netty/logging/AbstractInternalLogger$1;->$SwitchMap$org$jboss$netty$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lorg/jboss/netty/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 54
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    return-void

    .line 57
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
