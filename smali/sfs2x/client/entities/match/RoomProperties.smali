.class public final Lsfs2x/client/entities/match/RoomProperties;
.super Ljava/lang/Object;
.source "RoomProperties.java"


# static fields
.field public static GROUP_ID:Ljava/lang/String;

.field public static HAS_FREE_PLAYER_SLOTS:Ljava/lang/String;

.field public static IS_GAME:Ljava/lang/String;

.field public static IS_PRIVATE:Ljava/lang/String;

.field public static IS_TYPE_SFSGAME:Ljava/lang/String;

.field public static MAX_SPECTATORS:Ljava/lang/String;

.field public static MAX_USERS:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static SPECTATOR_COUNT:Ljava/lang/String;

.field public static USER_COUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "${N}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->NAME:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "${G}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->GROUP_ID:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "${MXU}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->MAX_USERS:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "${MXS}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->MAX_SPECTATORS:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "${UC}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->USER_COUNT:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "${SC}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->SPECTATOR_COUNT:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "${ISG}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->IS_GAME:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "${ISP}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->IS_PRIVATE:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "${HFP}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->HAS_FREE_PLAYER_SLOTS:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "${IST}"

    sput-object v0, Lsfs2x/client/entities/match/RoomProperties;->IS_TYPE_SFSGAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method
