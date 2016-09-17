.class public Lsfs2x/client/requests/mmo/MMORoomSettings;
.super Lsfs2x/client/requests/RoomSettings;
.source "MMORoomSettings.java"


# instance fields
.field private defaultAOI:Lsfs2x/client/entities/data/Vec3D;

.field private mapLimits:Lsfs2x/client/requests/mmo/MapLimits;

.field private proximityListUpdateMillis:I

.field private sendAOIEntryPoint:Z

.field private userMaxLimboSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lsfs2x/client/requests/RoomSettings;-><init>(Ljava/lang/String;)V

    .line 21
    const/16 v0, 0x32

    iput v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->userMaxLimboSeconds:I

    .line 22
    const/16 v0, 0xfa

    iput v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->proximityListUpdateMillis:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->sendAOIEntryPoint:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getDefaultAOI()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->defaultAOI:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getMapLimits()Lsfs2x/client/requests/mmo/MapLimits;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->mapLimits:Lsfs2x/client/requests/mmo/MapLimits;

    return-object v0
.end method

.method public getProximityListUpdateMillis()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->proximityListUpdateMillis:I

    return v0
.end method

.method public getUserMaxLimboSeconds()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->userMaxLimboSeconds:I

    return v0
.end method

.method public isSendAOIEntryPoint()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->sendAOIEntryPoint:Z

    return v0
.end method

.method public setDefaultAOI(Lsfs2x/client/entities/data/Vec3D;)V
    .locals 0
    .param p1, "defaultAOI"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 60
    iput-object p1, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->defaultAOI:Lsfs2x/client/entities/data/Vec3D;

    .line 61
    return-void
.end method

.method public setMapLimits(Lsfs2x/client/requests/mmo/MapLimits;)V
    .locals 0
    .param p1, "mapLimits"    # Lsfs2x/client/requests/mmo/MapLimits;

    .prologue
    .line 81
    iput-object p1, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->mapLimits:Lsfs2x/client/requests/mmo/MapLimits;

    .line 82
    return-void
.end method

.method public setProximityListUpdateMillis(I)V
    .locals 0
    .param p1, "proximityListUpdateMillis"    # I

    .prologue
    .line 124
    iput p1, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->proximityListUpdateMillis:I

    .line 125
    return-void
.end method

.method public setSendAOIEntryPoint(Z)V
    .locals 0
    .param p1, "sendAOIEntryPoint"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->sendAOIEntryPoint:Z

    .line 148
    return-void
.end method

.method public setUserMaxLimboSeconds(I)V
    .locals 0
    .param p1, "userMaxLimboSeconds"    # I

    .prologue
    .line 101
    iput p1, p0, Lsfs2x/client/requests/mmo/MMORoomSettings;->userMaxLimboSeconds:I

    .line 102
    return-void
.end method
