.class Lorg/jboss/netty/logging/Log4JLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "Log4JLogger.java"


# instance fields
.field private final logger:Lorg/apache/log4j/Logger;


# direct methods
.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 36
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jboss/netty/logging/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method
