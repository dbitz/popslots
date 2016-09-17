.class public Lorg/jboss/netty/channel/StaticChannelPipeline;
.super Ljava/lang/Object;
.source "StaticChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    }
.end annotation


# static fields
.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile channel:Lorg/jboss/netty/channel/Channel;

.field private final contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

.field private final lastIndex:I

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public varargs constructor <init>([Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 11
    .param p1, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v9, Ljava/util/HashMap;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v9, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "handlers"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 60
    :cond_0
    array-length v9, p1

    if-nez v9, :cond_1

    .line 61
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "no handlers specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 65
    :cond_1
    array-length v9, p1

    new-array v1, v9, [Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 68
    .local v1, "contexts":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    const/4 v7, 0x0

    .local v7, "nContexts":I
    :goto_0
    array-length v9, v1

    if-ge v7, v9, :cond_2

    .line 69
    aget-object v3, p1, v7

    .line 70
    .local v3, "h":Lorg/jboss/netty/channel/ChannelHandler;
    if-nez v3, :cond_3

    .line 75
    .end local v3    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_2
    array-length v9, v1

    if-ne v7, v9, :cond_4

    .line 76
    iput-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 77
    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    .line 85
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_5

    .line 86
    aget-object v3, p1, v4

    .line 87
    .restart local v3    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    invoke-static {v4}, Lorg/jboss/netty/util/internal/ConversionUtil;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "name":Ljava/lang/String;
    new-instance v2, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    invoke-direct {v2, p0, v4, v8, v3}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/StaticChannelPipeline;ILjava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 90
    .local v2, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    aput-object v2, v1, v4

    .line 91
    iget-object v9, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v9, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 68
    .end local v2    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v4    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_4
    new-array v1, v7, [Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 81
    add-int/lit8 v9, v7, -0x1

    iput v9, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    goto :goto_1

    .line 94
    .restart local v4    # "i":I
    :cond_5
    move-object v0, v1

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v2, v0, v5

    .line 95
    .local v2, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 96
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 98
    .end local v2    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    :cond_6
    return-void
.end method

.method private callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 197
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    instance-of v4, v4, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v4, :cond_0

    .line 226
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 205
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 209
    .local v1, "removed":Z
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 210
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    const/4 v1, 0x1

    .line 216
    :goto_1
    if-eqz v1, :cond_1

    .line 217
    new-instance v4, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 212
    :catch_1
    move-exception v3

    .line 213
    .local v3, "t2":Ljava/lang/Throwable;
    sget-object v4, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to remove a handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 221
    .end local v3    # "t2":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 246
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 254
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".afterRemove() has thrown an exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 180
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 188
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".beforeAdd() has thrown an exception; not adding."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .prologue
    .line 229
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v2, :cond_0

    .line 243
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 237
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".beforeRemove() has thrown an exception; not removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p2, :cond_1

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sink"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_3

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attached already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    .line 123
    iput-object p2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 124
    return-void
.end method

.method public get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 282
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 285
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 272
    .local v0, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v0, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 275
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    goto :goto_0
.end method

.method getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 402
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 403
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    aget-object v0, v2, v1

    .line 404
    .local v0, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    .end local v0    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :goto_1
    return-object v0

    .line 402
    .restart local v0    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 408
    .end local v0    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 392
    move v1, p1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 393
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    aget-object v0, v2, v1

    .line 394
    .local v0, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    .end local v0    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :goto_1
    return-object v0

    .line 392
    .restart local v0    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    if-nez p1, :cond_0

    .line 310
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "handlerType"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 313
    .local v1, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :goto_1
    return-object v1

    .line 312
    .restart local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 6
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "handler"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 301
    .local v1, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 305
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :goto_1
    return-object v1

    .line 300
    .restart local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public getSink()Lorg/jboss/netty/channel/ChannelSink;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 106
    .local v0, "sink":Lorg/jboss/netty/channel/ChannelSink;
    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    .line 109
    .end local v0    # "sink":Lorg/jboss/netty/channel/ChannelSink;
    :cond_0
    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 412
    instance-of v2, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v2, :cond_0

    .line 413
    sget-object v2, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An exception was thrown by a user handler while handling an exception event ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    :goto_0
    return-void

    .line 420
    :cond_0
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 421
    check-cast v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    .line 427
    .local v1, "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-interface {v2, p0, p1, v1}, Lorg/jboss/netty/channel/ChannelSink;->exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e1":Ljava/lang/Exception;
    sget-object v2, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v3, "An exception was thrown by an exception handler."

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 423
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v1    # "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    :cond_1
    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v1, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    .restart local v1    # "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    goto :goto_1
.end method

.method public remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "oldHandlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "oldHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 369
    iget v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v1

    .line 370
    .local v1, "tail":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v1, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 380
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/ChannelDownstreamHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    .line 351
    .local v0, "head":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v0, :cond_0

    .line 352
    sget-object v1, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The pipeline contains no upstream handlers; discarding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .param p1, "ctx"    # Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/ChannelUpstreamHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 322
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 323
    .local v1, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_0
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/16 v5, 0x7b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 338
    .local v2, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string/jumbo v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v2}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    const-string/jumbo v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string/jumbo v7, "}"

    invoke-virtual {v1, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
