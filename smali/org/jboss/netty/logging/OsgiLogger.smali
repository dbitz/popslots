.class Lorg/jboss/netty/logging/OsgiLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "OsgiLogger.java"


# instance fields
.field private final fallback:Lorg/jboss/netty/logging/InternalLogger;

.field private final name:Ljava/lang/String;

.field private final parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

.field private final prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogger;)V
    .locals 2
    .param p1, "parent"    # Lorg/jboss/netty/logging/OsgiLoggerFactory;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fallback"    # Lorg/jboss/netty/logging/InternalLogger;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    .line 38
    iput-object p2, p0, Lorg/jboss/netty/logging/OsgiLogger;->name:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 45
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 46
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 54
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 63
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 64
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 72
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 81
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 90
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 115
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    .line 124
    .local v0, "logService":Lorg/osgi/service/log/LogService;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
