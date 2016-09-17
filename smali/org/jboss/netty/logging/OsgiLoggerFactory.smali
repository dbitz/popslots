.class public Lorg/jboss/netty/logging/OsgiLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;
.source "OsgiLoggerFactory.java"


# instance fields
.field private final fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

.field volatile logService:Lorg/osgi/service/log/LogService;

.field private final logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;


# direct methods
.method public constructor <init>(Lorg/osgi/framework/BundleContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/osgi/framework/BundleContext;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;-><init>(Lorg/osgi/framework/BundleContext;Lorg/jboss/netty/logging/InternalLoggerFactory;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/osgi/framework/BundleContext;Lorg/jboss/netty/logging/InternalLoggerFactory;)V
    .locals 3
    .param p1, "ctx"    # Lorg/osgi/framework/BundleContext;
    .param p2, "fallback"    # Lorg/jboss/netty/logging/InternalLoggerFactory;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    invoke-static {}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getDefaultFactory()Lorg/jboss/netty/logging/InternalLoggerFactory;

    move-result-object p2

    .line 49
    instance-of v0, p2, Lorg/jboss/netty/logging/OsgiLoggerFactory;

    if-eqz v0, :cond_1

    .line 50
    new-instance p2, Lorg/jboss/netty/logging/JdkLoggerFactory;

    .end local p2    # "fallback":Lorg/jboss/netty/logging/InternalLoggerFactory;
    invoke-direct {p2}, Lorg/jboss/netty/logging/JdkLoggerFactory;-><init>()V

    .line 54
    .restart local p2    # "fallback":Lorg/jboss/netty/logging/InternalLoggerFactory;
    :cond_1
    iput-object p2, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

    .line 55
    new-instance v0, Lorg/jboss/netty/logging/OsgiLoggerFactory$1;

    const-string/jumbo v1, "org.osgi.service.log.LogService"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jboss/netty/logging/OsgiLoggerFactory$1;-><init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Lorg/osgi/framework/BundleContext;Ljava/lang/String;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V

    iput-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;

    .line 70
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;

    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker;->open()V

    .line 71
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logService:Lorg/osgi/service/log/LogService;

    .line 83
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;

    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker;->close()V

    .line 84
    return-void
.end method

.method public getFallback()Lorg/jboss/netty/logging/InternalLoggerFactory;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

    return-object v0
.end method

.method public getLogService()Lorg/osgi/service/log/LogService;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logService:Lorg/osgi/service/log/LogService;

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lorg/jboss/netty/logging/OsgiLogger;

    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

    invoke-virtual {v1, p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/logging/OsgiLogger;-><init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogger;)V

    return-object v0
.end method
