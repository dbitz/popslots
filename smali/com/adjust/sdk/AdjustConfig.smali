.class public Lcom/adjust/sdk/AdjustConfig;
.super Ljava/lang/Object;
.source "AdjustConfig.java"


# static fields
.field public static final ENVIRONMENT_PRODUCTION:Ljava/lang/String; = "production"

.field public static final ENVIRONMENT_SANDBOX:Ljava/lang/String; = "sandbox"


# instance fields
.field appToken:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deepLinkComponent:Ljava/lang/Class;

.field defaultTracker:Ljava/lang/String;

.field deviceKnown:Ljava/lang/Boolean;

.field environment:Ljava/lang/String;

.field eventBufferingEnabled:Ljava/lang/Boolean;

.field logLevel:Lcom/adjust/sdk/LogLevel;

.field onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

.field onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

.field onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

.field onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

.field onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

.field processName:Ljava/lang/String;

.field referrer:Ljava/lang/String;

.field referrerClickTime:J

.field sdkPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/AdjustConfig;->isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static checkAppToken(Ljava/lang/String;)Z
    .locals 5
    .param p0, "appToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 131
    .local v0, "logger":Lcom/adjust/sdk/ILogger;
    if-nez p0, :cond_0

    .line 132
    const-string/jumbo v2, "Missing App Token"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return v1

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 137
    const-string/jumbo v3, "Malformed App Token \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_0
.end method

.method private static checkContext(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 116
    .local v0, "logger":Lcom/adjust/sdk/ILogger;
    if-nez p0, :cond_0

    .line 117
    const-string/jumbo v2, "Missing context"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :goto_0
    return v1

    .line 121
    :cond_0
    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-static {p0, v2}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    const-string/jumbo v2, "Missing permission: INTERNET"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkEnvironment(Ljava/lang/String;)Z
    .locals 4
    .param p0, "environment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 146
    .local v0, "logger":Lcom/adjust/sdk/ILogger;
    if-nez p0, :cond_0

    .line 147
    const-string/jumbo v2, "Missing environment"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    return v1

    .line 151
    :cond_0
    const-string/jumbo v3, "sandbox"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    const-string/jumbo v3, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/adjust/sdk/ILogger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    const-string/jumbo v3, "production"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    const-string/jumbo v3, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/adjust/sdk/ILogger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v3, "Unknown environment \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "environment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-static {p2}, Lcom/adjust/sdk/AdjustConfig;->checkAppToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-static {p3}, Lcom/adjust/sdk/AdjustConfig;->checkEnvironment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/adjust/sdk/AdjustConfig;->checkContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasAttributionChangedListener()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasListener()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeepLinkComponent(Ljava/lang/Class;)V
    .locals 0
    .param p1, "deepLinkComponent"    # Ljava/lang/Class;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    .line 72
    return-void
.end method

.method public setDefaultTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultTracker"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDeviceKnown(Z)V
    .locals 1
    .param p1, "deviceKnown"    # Z

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    .line 68
    return-void
.end method

.method public setEventBufferingEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "eventBufferingEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method public setLogLevel(Lcom/adjust/sdk/LogLevel;)V
    .locals 0
    .param p1, "logLevel"    # Lcom/adjust/sdk/LogLevel;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    .line 50
    return-void
.end method

.method public setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V
    .locals 0
    .param p1, "onAttributionChangedListener"    # Lcom/adjust/sdk/OnAttributionChangedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    .line 64
    return-void
.end method

.method public setOnEventTrackingFailedListener(Lcom/adjust/sdk/OnEventTrackingFailedListener;)V
    .locals 0
    .param p1, "onEventTrackingFailedListener"    # Lcom/adjust/sdk/OnEventTrackingFailedListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    .line 80
    return-void
.end method

.method public setOnEventTrackingSucceededListener(Lcom/adjust/sdk/OnEventTrackingSucceededListener;)V
    .locals 0
    .param p1, "onEventTrackingSucceededListener"    # Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    .line 76
    return-void
.end method

.method public setOnSessionTrackingFailedListener(Lcom/adjust/sdk/OnSessionTrackingFailedListener;)V
    .locals 0
    .param p1, "onSessionTrackingFailedListener"    # Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    .line 88
    return-void
.end method

.method public setOnSessionTrackingSucceededListener(Lcom/adjust/sdk/OnSessionTrackingSucceededListener;)V
    .locals 0
    .param p1, "onSessionTrackingSucceededListener"    # Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    .line 84
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    return-void
.end method

.method public setSdkPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkPrefix"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    .line 54
    return-void
.end method
