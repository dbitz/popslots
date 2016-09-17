.class public final enum Lsfs2x/client/bitswarm/ConnectionMode;
.super Ljava/lang/Enum;
.source "ConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsfs2x/client/bitswarm/ConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lsfs2x/client/bitswarm/ConnectionMode;

.field public static final enum HTTP:Lsfs2x/client/bitswarm/ConnectionMode;

.field public static final enum SOCKET:Lsfs2x/client/bitswarm/ConnectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lsfs2x/client/bitswarm/ConnectionMode;

    const-string/jumbo v1, "SOCKET"

    invoke-direct {v0, v1, v2}, Lsfs2x/client/bitswarm/ConnectionMode;-><init>(Ljava/lang/String;I)V

    .line 12
    sput-object v0, Lsfs2x/client/bitswarm/ConnectionMode;->SOCKET:Lsfs2x/client/bitswarm/ConnectionMode;

    .line 13
    new-instance v0, Lsfs2x/client/bitswarm/ConnectionMode;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v3}, Lsfs2x/client/bitswarm/ConnectionMode;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lsfs2x/client/bitswarm/ConnectionMode;->HTTP:Lsfs2x/client/bitswarm/ConnectionMode;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lsfs2x/client/bitswarm/ConnectionMode;

    sget-object v1, Lsfs2x/client/bitswarm/ConnectionMode;->SOCKET:Lsfs2x/client/bitswarm/ConnectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lsfs2x/client/bitswarm/ConnectionMode;->HTTP:Lsfs2x/client/bitswarm/ConnectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lsfs2x/client/bitswarm/ConnectionMode;->ENUM$VALUES:[Lsfs2x/client/bitswarm/ConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsfs2x/client/bitswarm/ConnectionMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lsfs2x/client/bitswarm/ConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsfs2x/client/bitswarm/ConnectionMode;

    return-object v0
.end method

.method public static values()[Lsfs2x/client/bitswarm/ConnectionMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lsfs2x/client/bitswarm/ConnectionMode;->ENUM$VALUES:[Lsfs2x/client/bitswarm/ConnectionMode;

    array-length v1, v0

    new-array v2, v1, [Lsfs2x/client/bitswarm/ConnectionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
