.class public Lsfs2x/client/util/ClientDisconnectionReason;
.super Ljava/lang/Object;
.source "ClientDisconnectionReason.java"


# static fields
.field public static final BAN:Ljava/lang/String; = "ban"

.field public static final IDLE:Ljava/lang/String; = "idle"

.field public static final KICK:Ljava/lang/String; = "kick"

.field public static final MANUAL:Ljava/lang/String; = "manual"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static reasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    const-string/jumbo v2, "idle"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 45
    const-string/jumbo v2, "kick"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 46
    const-string/jumbo v2, "ban"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lsfs2x/client/util/ClientDisconnectionReason;->reasons:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "reasonId"    # I

    .prologue
    .line 53
    sget-object v0, Lsfs2x/client/util/ClientDisconnectionReason;->reasons:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
