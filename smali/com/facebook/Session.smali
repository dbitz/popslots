.class public Lcom/facebook/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$5;,
        Lcom/facebook/Session$NewPermissionsRequest;,
        Lcom/facebook/Session$OpenRequest;,
        Lcom/facebook/Session$AuthorizationRequest;,
        Lcom/facebook/Session$StartActivityDelegate;,
        Lcom/facebook/Session$Builder;,
        Lcom/facebook/Session$StatusCallback;,
        Lcom/facebook/Session$TokenRefreshRequestHandler;,
        Lcom/facebook/Session$TokenRefreshRequest;,
        Lcom/facebook/Session$PermissionsPair;,
        Lcom/facebook/Session$SerializationProxyV2;,
        Lcom/facebook/Session$SerializationProxyV1;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String;

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static activeSession:Lcom/facebook/Session; = null

.field private static final serialVersionUID:J = 0x1L

.field private static volatile staticContext:Landroid/content/Context;


# instance fields
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private applicationId:Ljava/lang/String;

.field private volatile authorizationBundle:Landroid/os/Bundle;

.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Session$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

.field private handler:Landroid/os/Handler;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final lock:Ljava/lang/Object;

.field private pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private state:Lcom/facebook/SessionState;

.field private tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

.field private tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/facebook/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/facebook/Session$1;

    invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V

    sput-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "currentContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 265
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "tokenCachingStrategy"    # Lcom/facebook/TokenCachingStrategy;

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 269
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "tokenCachingStrategy"    # Lcom/facebook/TokenCachingStrategy;
    .param p4, "loadTokenFromCache"    # Z

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 150
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 275
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 276
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 279
    :cond_0
    const-string/jumbo v3, "applicationId"

    invoke-static {p2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 283
    if-nez p3, :cond_1

    .line 284
    new-instance p3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    .end local p3    # "tokenCachingStrategy":Lcom/facebook/TokenCachingStrategy;
    sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {p3, v3}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    .line 287
    .restart local p3    # "tokenCachingStrategy":Lcom/facebook/TokenCachingStrategy;
    :cond_1
    iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 288
    iput-object p3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 289
    sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 290
    iput-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 291
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 292
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 294
    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v2

    .line 295
    .local v2, "tokenState":Landroid/os/Bundle;
    :cond_2
    invoke-static {v2}, Lcom/facebook/TokenCachingStrategy;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    const-string/jumbo v3, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v2, v3}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 298
    .local v0, "cachedExpirationDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 300
    .local v1, "now":Ljava/util/Date;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->clear()V

    .line 304
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 313
    .end local v0    # "cachedExpirationDate":Ljava/util/Date;
    .end local v1    # "now":Ljava/util/Date;
    :goto_0
    return-void

    .line 307
    .restart local v0    # "cachedExpirationDate":Ljava/util/Date;
    .restart local v1    # "now":Ljava/util/Date;
    :cond_4
    invoke-static {v2}, Lcom/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 308
    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0

    .line 311
    .end local v0    # "cachedExpirationDate":Ljava/util/Date;
    .end local v1    # "now":Ljava/util/Date;
    :cond_5
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .locals 5
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "tokenInfo"    # Lcom/facebook/AccessToken;
    .param p4, "lastAttemptedTokenExtendDate"    # Ljava/util/Date;
    .param p5, "shouldAutoPublish"    # Z
    .param p6, "pendingAuthorizationRequest"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 231
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 232
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 233
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 235
    iput-object v4, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 236
    iput-object v4, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/facebook/SessionState;
    .param p3, "x2"    # Lcom/facebook/AccessToken;
    .param p4, "x3"    # Ljava/util/Date;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/facebook/Session$AuthorizationRequest;
    .param p7, "x6"    # Lcom/facebook/Session$1;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
    .locals 5
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "tokenInfo"    # Lcom/facebook/AccessToken;
    .param p4, "lastAttemptedTokenExtendDate"    # Ljava/util/Date;
    .param p5, "shouldAutoPublish"    # Z
    .param p6, "pendingAuthorizationRequest"    # Lcom/facebook/Session$AuthorizationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/SessionState;",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/facebook/Session$AuthorizationRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 247
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 249
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 250
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 251
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 253
    iput-object v4, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 254
    iput-object v4, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;Lcom/facebook/Session$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/facebook/SessionState;
    .param p3, "x2"    # Lcom/facebook/AccessToken;
    .param p4, "x3"    # Ljava/util/Date;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/facebook/Session$AuthorizationRequest;
    .param p7, "x6"    # Ljava/util/Set;
    .param p8, "x7"    # Lcom/facebook/Session$1;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/Session;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/Session;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/Session;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/Session;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/Session;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/Session;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/Session;
    .param p1, "x1"    # Lcom/facebook/Session$TokenRefreshRequest;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/Session;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/Session;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/Session;)Lcom/facebook/AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/Session;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/Session;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/Session;
    .param p1, "x1"    # Lcom/facebook/AccessToken;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object p1
.end method

.method static synthetic access$400(Lcom/facebook/Session;)Lcom/facebook/SessionState;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/Session;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    return-object v0
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1770
    if-nez p0, :cond_1

    .line 1771
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1773
    :goto_0
    return v0

    .line 1771
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1773
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "newToken"    # Lcom/facebook/AccessToken;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1483
    .local v0, "oldState":Lcom/facebook/SessionState;
    if-eqz p1, :cond_1

    .line 1484
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1485
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    .line 1487
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1491
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1492
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1493
    return-void

    .line 1488
    :cond_1
    if-eqz p2, :cond_0

    .line 1489
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0
.end method

.method private finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "newToken"    # Lcom/facebook/AccessToken;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1498
    .local v0, "oldState":Lcom/facebook/SessionState;
    if-eqz p1, :cond_0

    .line 1499
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1500
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    .line 1502
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1505
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1506
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1507
    return-void
.end method

.method public static final getActiveSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 937
    sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 938
    :try_start_0
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    monitor-exit v1

    return-object v0

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 3

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-nez v0, :cond_0

    .line 1616
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    monitor-exit v1

    return-object v0

    .line 1619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
    .locals 5
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 1420
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1421
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/facebook/LoginActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1422
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v0

    .line 1426
    .local v0, "authClientRequest":Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    invoke-static {v0}, Lcom/facebook/LoginActivity;->populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v1

    .line 1427
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1429
    return-object v2
.end method

.method static getStaticContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1136
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "result"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 1309
    const/4 v1, 0x0

    .line 1310
    .local v1, "newToken":Lcom/facebook/AccessToken;
    const/4 v0, 0x0

    .line 1311
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 1312
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v2, v3, :cond_1

    .line 1313
    iget-object v1, p2, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    .line 1321
    :cond_0
    :goto_0
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1323
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 1324
    invoke-virtual {p0, v1, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1325
    return-void

    .line 1315
    :cond_1
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    .end local v0    # "exception":Ljava/lang/Exception;
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "exception":Ljava/lang/Exception;
    goto :goto_0

    .line 1317
    :cond_2
    if-nez p1, :cond_0

    .line 1318
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    .end local v0    # "exception":Ljava/lang/Exception;
    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;
    .locals 13
    .param p0, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v11, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-object v11

    .line 656
    :cond_1
    const-class v12, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v12}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v9

    check-cast v9, Lcom/facebook/model/GraphMultiResult;

    .line 657
    .local v9, "result":Lcom/facebook/model/GraphMultiResult;
    if-eqz v9, :cond_0

    .line 661
    invoke-interface {v9}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 662
    .local v0, "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v12

    if-eqz v12, :cond_0

    .line 665
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    .local v4, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    .local v1, "declinedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/model/GraphObject;

    .line 670
    .local v3, "firstObject":Lcom/facebook/model/GraphObject;
    const-string/jumbo v11, "permission"

    invoke-interface {v3, v11}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 671
    invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/model/GraphObject;

    .line 672
    .local v5, "graphObject":Lcom/facebook/model/GraphObject;
    const-string/jumbo v11, "permission"

    invoke-interface {v5, v11}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 673
    .local v7, "permission":Ljava/lang/String;
    const-string/jumbo v11, "installed"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 676
    const-string/jumbo v11, "status"

    invoke-interface {v5, v11}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 677
    .local v10, "status":Ljava/lang/String;
    const-string/jumbo v11, "granted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 678
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 679
    :cond_3
    const-string/jumbo v11, "declined"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 680
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 684
    .end local v5    # "graphObject":Lcom/facebook/model/GraphObject;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "permission":Ljava/lang/String;
    .end local v10    # "status":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v8

    .line 685
    .local v8, "permissionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 686
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "installed"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 689
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 690
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 695
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "permissionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v11, Lcom/facebook/Session$PermissionsPair;

    invoke-direct {v11, v4, v1}, Lcom/facebook/Session$PermissionsPair;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method static initializeStaticContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "currentContext"    # Landroid/content/Context;

    .prologue
    .line 1140
    if-eqz p0, :cond_0

    sget-object v1, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1142
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_0
    sput-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    .line 1144
    :cond_0
    return-void

    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    move-object v0, p0

    .line 1142
    goto :goto_0
.end method

.method public static isPublishPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1301
    if-eqz p0, :cond_1

    const-string/jumbo v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 8
    .param p1, "result"    # Lcom/facebook/AuthorizationClient$Result$Code;
    .param p3, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p2, "resultExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1353
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v5, :cond_1

    .line 1355
    const-string/jumbo v5, ""

    invoke-static {v5}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1356
    const-string/jumbo v5, "2_result"

    sget-object v6, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v6}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string/jumbo v5, "5_error_message"

    const-string/jumbo v6, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_0
    :goto_0
    const-string/jumbo v5, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1391
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v4

    .line 1392
    .local v4, "logger":Lcom/facebook/AppEventsLogger;
    const-string/jumbo v5, "fb_mobile_login_complete"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1393
    return-void

    .line 1361
    .end local v4    # "logger":Lcom/facebook/AppEventsLogger;
    :cond_1
    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v5}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1362
    if-eqz p1, :cond_2

    .line 1363
    const-string/jumbo v5, "2_result"

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1366
    const-string/jumbo v5, "5_error_message"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :cond_3
    const/4 v3, 0x0

    .line 1371
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v5}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1372
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v5}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1374
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    if-eqz p2, :cond_6

    .line 1375
    if-nez v3, :cond_5

    .line 1376
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1379
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1380
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1382
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 1385
    :cond_6
    if-eqz v3, :cond_0

    .line 1386
    const-string/jumbo v5, "6_extras"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private logAuthorizationStart()V
    .locals 6

    .prologue
    .line 1328
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v3}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1329
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1333
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1334
    .local v1, "extras":Lorg/json/JSONObject;
    const-string/jumbo v3, "login_behavior"

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$700(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1336
    const-string/jumbo v3, "request_code"

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->requestCode:I
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$800(Lcom/facebook/Session$AuthorizationRequest;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1337
    const-string/jumbo v3, "is_legacy"

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1338
    const-string/jumbo v3, "permissions"

    const-string/jumbo v4, ","

    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;
    invoke-static {v5}, Lcom/facebook/Session$AuthorizationRequest;->access$900(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1340
    const-string/jumbo v3, "default_audience"

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$1000(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1342
    const-string/jumbo v3, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    .end local v1    # "extras":Lorg/json/JSONObject;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v2

    .line 1347
    .local v2, "logger":Lcom/facebook/AppEventsLogger;
    const-string/jumbo v3, "fb_mobile_login_start"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1348
    return-void

    .line 1343
    .end local v2    # "logger":Lcom/facebook/AppEventsLogger;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 7
    .param p1, "openRequest"    # Lcom/facebook/Session$OpenRequest;
    .param p2, "authType"    # Lcom/facebook/internal/SessionAuthorizationType;

    .prologue
    .line 1188
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 1189
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1192
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1193
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v2, :cond_1

    .line 1194
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v6, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4, v5}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1196
    monitor-exit v3

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1200
    .local v1, "oldState":Lcom/facebook/SessionState;
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v4}, Lcom/facebook/SessionState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1221
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Session: an attempt was made to open an already opened session."

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1228
    .end local v1    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1202
    .restart local v1    # "oldState":Lcom/facebook/SessionState;
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .local v0, "newState":Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1203
    if-nez p1, :cond_2

    .line 1204
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "openRequest cannot be null when opening a new Session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1206
    :cond_2
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1224
    :goto_1
    if-eqz p1, :cond_3

    .line 1225
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1227
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1228
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    sget-object v2, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v2, :cond_0

    .line 1231
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    goto :goto_0

    .line 1209
    .end local v0    # "newState":Lcom/facebook/SessionState;
    :pswitch_2
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1210
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1211
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1214
    :cond_4
    iget-object v2, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v2, :cond_5

    .line 1215
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    .restart local v0    # "newState":Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_1

    .line 1217
    .end local v0    # "newState":Lcom/facebook/SessionState;
    :cond_5
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .restart local v0    # "newState":Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "allowLoginUI"    # Z
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1013
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "allowLoginUI"    # Z
    .param p3, "callback"    # Lcom/facebook/Session$StatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "allowLoginUI"    # Z
    .param p3, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1063
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "allowLoginUI"    # Z
    .param p4, "callback"    # Lcom/facebook/Session$StatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 1088
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p4}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method private static openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowLoginUI"    # Z
    .param p2, "openRequest"    # Lcom/facebook/Session$OpenRequest;

    .prologue
    .line 1126
    new-instance v1, Lcom/facebook/Session$Builder;

    invoke-direct {v1, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 1127
    .local v0, "session":Lcom/facebook/Session;
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1128
    :cond_0
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1129
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 1132
    .end local v0    # "session":Lcom/facebook/Session;
    :goto_0
    return-object v0

    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 991
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    const/4 v2, 0x0

    .line 1117
    new-instance v0, Lcom/facebook/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 1119
    .local v0, "session":Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1120
    invoke-virtual {v0, p1, p2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 1122
    return-object v0
.end method

.method static postActiveSessionAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 1562
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1565
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 3
    .param p1, "newPermissionsRequest"    # Lcom/facebook/Session$NewPermissionsRequest;
    .param p2, "authType"    # Lcom/facebook/internal/SessionAuthorizationType;

    .prologue
    .line 1236
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 1237
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1239
    if-eqz p1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Session: an attempt was made to request new permissions for a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1245
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1254
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    invoke-virtual {p0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setValidateSameFbidAsToken(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p1}, Lcom/facebook/Session$NewPermissionsRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1258
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1260
    :cond_1
    return-void

    .line 1247
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Session: an attempt was made to request new permissions for a session that has been closed."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1251
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Session: an attempt was made to request new permissions for a session that is not currently open."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1412
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1413
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 1416
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cachingStrategy"    # Lcom/facebook/TokenCachingStrategy;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 902
    if-nez p3, :cond_0

    move-object v3, v4

    .line 927
    :goto_0
    return-object v3

    .line 905
    :cond_0
    const-string/jumbo v5, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 906
    .local v0, "data":[B
    if-eqz v0, :cond_2

    .line 907
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 909
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Session;

    .line 910
    .local v3, "session":Lcom/facebook/Session;
    invoke-static {p0}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 911
    if-eqz p1, :cond_3

    .line 912
    iput-object p1, v3, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 916
    :goto_1
    if-eqz p2, :cond_1

    .line 917
    invoke-virtual {v3, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 919
    :cond_1
    const-string/jumbo v5, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 921
    .end local v3    # "session":Lcom/facebook/Session;
    :catch_0
    move-exception v1

    .line 922
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to restore session"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    :cond_2
    :goto_2
    move-object v3, v4

    .line 927
    goto :goto_0

    .line 914
    .restart local v2    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "session":Lcom/facebook/Session;
    :cond_3
    :try_start_1
    new-instance v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v5, p0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 923
    .end local v3    # "session":Lcom/facebook/Session;
    :catch_1
    move-exception v1

    .line 924
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to restore session."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1568
    if-eqz p0, :cond_0

    .line 1569
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1573
    :goto_0
    return-void

    .line 1571
    :cond_0
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 874
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string/jumbo v2, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 875
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 877
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    const-string/jumbo v2, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 882
    const-string/jumbo v2, "com.facebook.sdk.Session.authBundleKey"

    iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 884
    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void

    .line 878
    .restart local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Unable to save session."

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveTokenToCache(Lcom/facebook/AccessToken;)V
    .locals 2
    .param p1, "newToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 1510
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 1513
    :cond_0
    return-void
.end method

.method public static final setActiveSession(Lcom/facebook/Session;)V
    .locals 3
    .param p0, "session"    # Lcom/facebook/Session;

    .prologue
    .line 958
    sget-object v2, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 959
    :try_start_0
    sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-eq p0, v1, :cond_2

    .line 960
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 962
    .local v0, "oldSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 966
    :cond_0
    sput-object p0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 968
    if-eqz v0, :cond_1

    .line 969
    const-string/jumbo v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 972
    :cond_1
    if-eqz p0, :cond_2

    .line 973
    const-string/jumbo v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 976
    const-string/jumbo v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 980
    .end local v0    # "oldSession":Lcom/facebook/Session;
    :cond_2
    monitor-exit v2

    .line 981
    return-void

    .line 980
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 1433
    new-instance v0, Lcom/facebook/AuthorizationClient;

    invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 1434
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v1, Lcom/facebook/Session$3;

    invoke-direct {v1, p0}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 1446
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    .line 1447
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 1448
    return-void
.end method

.method private tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 5
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    const/4 v2, 0x0

    .line 1396
    invoke-direct {p0, p1}, Lcom/facebook/Session;->getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;

    move-result-object v1

    .line 1398
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1408
    :goto_0
    return v2

    .line 1403
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    const/4 v2, 0x1

    goto :goto_0

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method private validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 1263
    if-eqz p1, :cond_0

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1265
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1266
    invoke-direct {p0, v0}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1267
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/facebook/LoginActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1272
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 7
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;
    .param p2, "authType"    # Lcom/facebook/internal/SessionAuthorizationType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1276
    :cond_0
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1277
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1281
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1282
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1283
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1284
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :cond_3
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1291
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1298
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "permission":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 857
    new-instance v0, Lcom/facebook/Session$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/Session$SerializationProxyV1;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 808
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 809
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_0
    monitor-exit v1

    .line 813
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 1147
    const/4 v2, 0x0

    .line 1149
    .local v2, "started":Z
    iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/facebook/Session$AuthorizationRequest;->setApplicationId(Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0}, Lcom/facebook/Session;->logAuthorizationStart()V

    .line 1153
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v2

    .line 1155
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "try_login_activity"

    if-eqz v2, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    if-nez v2, :cond_0

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1159
    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "try_legacy"

    const-string/jumbo v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1163
    const/4 v2, 0x1

    .line 1166
    :cond_0
    if-nez v2, :cond_1

    .line 1167
    iget-object v4, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1170
    .local v1, "oldState":Lcom/facebook/SessionState;
    sget-object v3, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v5, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v5}, Lcom/facebook/SessionState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 1176
    sget-object v3, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1178
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"

    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1181
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1183
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "oldState":Lcom/facebook/SessionState;
    :cond_1
    :goto_1
    return-void

    .line 1155
    :cond_2
    const-string/jumbo v3, "0"

    goto :goto_0

    .line 1173
    .restart local v1    # "oldState":Lcom/facebook/SessionState;
    :pswitch_0
    :try_start_1
    monitor-exit v4

    goto :goto_1

    .line 1183
    .end local v1    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 764
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 767
    .local v0, "oldState":Lcom/facebook/SessionState;
    sget-object v1, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 786
    :goto_0
    monitor-exit v2

    .line 787
    return-void

    .line 770
    :pswitch_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 771
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    goto :goto_0

    .line 786
    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 778
    .restart local v0    # "oldState":Lcom/facebook/SessionState;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 779
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final closeAndClearTokenInformation()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {v0}, Lcom/facebook/TokenCachingStrategy;->clear()V

    .line 797
    :cond_0
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 798
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearCaches(Landroid/content/Context;)V

    .line 799
    invoke-virtual {p0}, Lcom/facebook/Session;->close()V

    .line 800
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1758
    instance-of v2, p1, Lcom/facebook/Session;

    if-nez v2, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1761
    check-cast v0, Lcom/facebook/Session;

    .line 1763
    .local v0, "other":Lcom/facebook/Session;
    iget-object v2, v0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 4

    .prologue
    .line 1582
    const/4 v0, 0x0

    .line 1583
    .local v0, "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1584
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-nez v2, :cond_0

    .line 1585
    new-instance v1, Lcom/facebook/Session$TokenRefreshRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    .end local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .local v1, "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    :try_start_1
    iput-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 1588
    .end local v1    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1590
    if-eqz v0, :cond_1

    .line 1591
    invoke-virtual {v0}, Lcom/facebook/Session$TokenRefreshRequest;->bind()V

    .line 1593
    :cond_1
    return-void

    .line 1588
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v1    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    goto :goto_0
.end method

.method extendAccessTokenIfNeeded()V
    .locals 1

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/facebook/Session;->extendAccessToken()V

    .line 1579
    :cond_0
    return-void
.end method

.method extendTokenCompleted(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 834
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 837
    .local v0, "oldState":Lcom/facebook/SessionState;
    sget-object v1, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 846
    sget-object v1, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshToken ignored in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    monitor-exit v2

    .line 854
    :goto_0
    return-void

    .line 839
    :pswitch_0
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 840
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 849
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-static {v1, p1}, Lcom/facebook/AccessToken;->createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 850
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 853
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "newToken"    # Lcom/facebook/AccessToken;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1452
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    const/4 p1, 0x0

    .line 1454
    new-instance p2, Lcom/facebook/FacebookException;

    .end local p2    # "exception":Ljava/lang/Exception;
    const-string/jumbo v0, "Invalid access token."

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1458
    .restart local p2    # "exception":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1459
    :try_start_0
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1478
    :goto_0
    monitor-exit v1

    .line 1479
    return-void

    .line 1462
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1468
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1475
    :pswitch_2
    sget-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected call to finishAuthOrReauth in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getDeclinedPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastAttemptedTokenExtendDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getState()Lcom/facebook/SessionState;
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    monitor-exit v1

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTokenInfo()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isOpened()Z
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 426
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 7
    .param p1, "currentActivity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 719
    const-string/jumbo v4, "currentActivity"

    invoke-static {p1, v4}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 723
    iget-object v4, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 724
    :try_start_0
    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v5}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v5

    if-eq p2, v5, :cond_1

    .line 725
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 756
    :goto_0
    return v3

    .line 727
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    const/4 v1, 0x0

    .line 730
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 732
    .local v0, "code":Lcom/facebook/AuthorizationClient$Result$Code;
    if-eqz p4, :cond_3

    .line 733
    const-string/jumbo v4, "com.facebook.LoginActivity:Result"

    invoke-virtual {p4, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/facebook/AuthorizationClient$Result;

    .line 735
    .local v2, "result":Lcom/facebook/AuthorizationClient$Result;
    if-eqz v2, :cond_2

    .line 737
    invoke-direct {p0, p3, v2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    goto :goto_0

    .line 727
    .end local v0    # "code":Lcom/facebook/AuthorizationClient$Result$Code;
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "result":Lcom/facebook/AuthorizationClient$Result;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 739
    .restart local v0    # "code":Lcom/facebook/AuthorizationClient$Result$Code;
    .restart local v1    # "exception":Ljava/lang/Exception;
    .restart local v2    # "result":Lcom/facebook/AuthorizationClient$Result;
    :cond_2
    iget-object v4, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    if-eqz v4, :cond_4

    .line 741
    iget-object v4, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v4, p2, p3, p4}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 744
    .end local v2    # "result":Lcom/facebook/AuthorizationClient$Result;
    :cond_3
    if-nez p3, :cond_4

    .line 745
    new-instance v1, Lcom/facebook/FacebookOperationCanceledException;

    .end local v1    # "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "User canceled operation."

    invoke-direct {v1, v4}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 746
    .restart local v1    # "exception":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 749
    :cond_4
    if-nez v1, :cond_5

    .line 750
    new-instance v1, Lcom/facebook/FacebookException;

    .end local v1    # "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "Unexpected call to Session.onActivityResult"

    invoke-direct {v1, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 753
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, v0, v6, v1}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 754
    invoke-virtual {p0, v6, v1}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    .locals 4
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 524
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 530
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Session: an attempt was made to open a previously-closed session."

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-eq v1, v3, :cond_2

    .line 534
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Session: an attempt was made to open an already opened session."

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_2
    if-eqz p2, :cond_3

    .line 539
    invoke-virtual {p0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 542
    :cond_3
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 544
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v1, :cond_4

    .line 545
    iget-object v1, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 549
    .local v0, "oldState":Lcom/facebook/SessionState;
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 550
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 551
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    return-void
.end method

.method public final openForPublish(Lcom/facebook/Session$OpenRequest;)V
    .locals 1
    .param p1, "openRequest"    # Lcom/facebook/Session$OpenRequest;

    .prologue
    .line 504
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 505
    return-void
.end method

.method public final openForRead(Lcom/facebook/Session$OpenRequest;)V
    .locals 1
    .param p1, "openRequest"    # Lcom/facebook/Session$OpenRequest;

    .prologue
    .line 469
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 470
    return-void
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "oldState"    # Lcom/facebook/SessionState;
    .param p2, "newState"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1519
    if-ne p1, p2, :cond_1

    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-eq p1, v1, :cond_1

    if-nez p3, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1526
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1532
    :cond_2
    new-instance v0, Lcom/facebook/Session$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$4;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1548
    .local v0, "runCallbacks":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1550
    sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-ne p0, v1, :cond_0

    .line 1551
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1552
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1553
    const-string/jumbo v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0

    .line 1555
    :cond_3
    const-string/jumbo v1, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final refreshPermissions()V
    .locals 2

    .prologue
    .line 605
    new-instance v0, Lcom/facebook/Request;

    const-string/jumbo v1, "me/permissions"

    invoke-direct {v0, p0, v1}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 606
    .local v0, "request":Lcom/facebook/Request;
    new-instance v1, Lcom/facebook/Session$2;

    invoke-direct {v1, p0}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 620
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 621
    return-void
.end method

.method public final removeCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 821
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 823
    monitor-exit v1

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .locals 1
    .param p1, "newPermissionsRequest"    # Lcom/facebook/Session$NewPermissionsRequest;

    .prologue
    .line 591
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 592
    return-void
.end method

.method public final requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .locals 1
    .param p1, "newPermissionsRequest"    # Lcom/facebook/Session$NewPermissionsRequest;

    .prologue
    .line 571
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 572
    return-void
.end method

.method setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/facebook/Session$TokenRefreshRequest;

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 1640
    return-void
.end method

.method setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastAttemptedTokenExtendDate"    # Ljava/util/Date;

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 1636
    return-void
.end method

.method setTokenInfo(Lcom/facebook/AccessToken;)V
    .locals 0
    .param p1, "tokenInfo"    # Lcom/facebook/AccessToken;

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1628
    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 6

    .prologue
    .line 1596
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-eqz v2, :cond_1

    .line 1597
    const/4 v1, 0x0

    .line 1610
    :cond_0
    :goto_0
    return v1

    .line 1600
    :cond_1
    const/4 v1, 0x0

    .line 1602
    .local v1, "result":Z
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1604
    .local v0, "now":Ljava/util/Date;
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1607
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    goto :goto_1
.end method
