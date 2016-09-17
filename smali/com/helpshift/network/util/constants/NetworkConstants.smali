.class public Lcom/helpshift/network/util/constants/NetworkConstants;
.super Ljava/lang/Object;
.source "NetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x1388

.field public static DEFAULT_POOL_SIZE:I = 0x0

.field public static DEFAULT_REQUEST_MAX_SIZE:I = 0x0

.field public static final POOL_SHUTDOWN_TIMEOUT:I = 0x3c

.field public static final SOCKET_TIMEOUT:I = 0x1388

.field private static final apiBase:Ljava/lang/String; = "/api/lib/"

.field private static final apiVersion:Ljava/lang/String; = "1"

.field private static final contentType:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final libraryVersion:Ljava/lang/String; = "4.1.1-support"

.field private static final scheme:Ljava/lang/String; = "https://"

.field private static final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Helpshift-Android/4.1.1-support/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants;->userAgent:Ljava/lang/String;

    .line 24
    const/16 v0, 0x1000

    sput v0, Lcom/helpshift/network/util/constants/NetworkConstants;->DEFAULT_POOL_SIZE:I

    .line 26
    const/16 v0, 0x8

    sput v0, Lcom/helpshift/network/util/constants/NetworkConstants;->DEFAULT_REQUEST_MAX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getAcceptLangHead()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string/jumbo v0, "%s;q=1.0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApiBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "/api/lib/"

    return-object v0
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "1"

    return-object v0
.end method

.method public static getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "4.1.1-support"

    return-object v0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "https://"

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/helpshift/network/util/constants/NetworkConstants;->userAgent:Ljava/lang/String;

    return-object v0
.end method
