.class public final Lsfs2x/client/requests/mmo/MapLimits;
.super Ljava/lang/Object;
.source "MapLimits.java"


# instance fields
.field private higherLimit:Lsfs2x/client/entities/data/Vec3D;

.field private lowerLimit:Lsfs2x/client/entities/data/Vec3D;


# direct methods
.method public constructor <init>(Lsfs2x/client/entities/data/Vec3D;Lsfs2x/client/entities/data/Vec3D;)V
    .locals 2
    .param p1, "low"    # Lsfs2x/client/entities/data/Vec3D;
    .param p2, "high"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 28
    iput-object p1, p0, Lsfs2x/client/requests/mmo/MapLimits;->lowerLimit:Lsfs2x/client/entities/data/Vec3D;

    .line 29
    iput-object p2, p0, Lsfs2x/client/requests/mmo/MapLimits;->higherLimit:Lsfs2x/client/entities/data/Vec3D;

    .line 33
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Map Limits arguments must be both non null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHigherLimit()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lsfs2x/client/requests/mmo/MapLimits;->higherLimit:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getLowerLimit()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lsfs2x/client/requests/mmo/MapLimits;->lowerLimit:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method
