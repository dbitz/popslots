.class public Lorg/jboss/netty/handler/logging/LoggingHandler;
.super Ljava/lang/Object;
.source "LoggingHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;


# instance fields
.field private final hexDump:Z

.field private final level:Lorg/jboss/netty/logging/InternalLogLevel;

.field private final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->DEBUG:Lorg/jboss/netty/logging/InternalLogLevel;

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;)V
    .locals 1
    .param p2, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jboss/netty/logging/InternalLogLevel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .locals 2
    .param p2, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p3, "hexDump"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jboss/netty/logging/InternalLogLevel;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "clazz"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    if-nez p2, :cond_1

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 143
    iput-object p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 144
    iput-boolean p3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "hexDump"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p3, "hexDump"    # Z

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    if-nez p2, :cond_1

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 180
    iput-object p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 181
    iput-boolean p3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hexDump"    # Z

    .prologue
    .line 162
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/logging/InternalLogLevel;)V
    .locals 1
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .locals 2
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "hexDump"    # Z

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 97
    iput-object p1, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 98
    iput-boolean p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "hexDump"    # Z

    .prologue
    .line 80
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public getLevel()Lorg/jboss/netty/logging/InternalLogLevel;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    return-object v0
.end method

.method public getLogger()Lorg/jboss/netty/logging/InternalLogger;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;->log(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 237
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 238
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;->log(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 231
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 232
    return-void
.end method

.method public log(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 6
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-interface {v3, v4}, Lorg/jboss/netty/logging/InternalLogger;->isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "msg":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    if-eqz v3, :cond_0

    instance-of v3, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 212
    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 213
    .local v1, "me":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v3, :cond_0

    .line 214
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 215
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - (HEXDUMP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "me":Lorg/jboss/netty/channel/MessageEvent;
    :cond_0
    instance-of v3, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    check-cast p1, Lorg/jboss/netty/channel/ExceptionEvent;

    .end local p1    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-interface {p1}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 223
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local p1    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method
