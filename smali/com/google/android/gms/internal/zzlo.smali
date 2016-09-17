.class public final Lcom/google/android/gms/internal/zzlo;
.super Ljava/lang/Object;


# instance fields
.field private final zzabo:I

.field private final zzacX:Ljava/lang/String;

.field private final zzadn:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlo;->zzacX:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzlo;->zzabo:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlo;->zzadn:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "playerId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "playerData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzlo;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzlo;

    if-nez v1, :cond_1

    .end local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzlo;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/zzlo;->zzabo:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlo;->getPlayerState()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzacX:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzadn:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlo;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zznb;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPlayerData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzadn:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzacX:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlo;->zzabo:I

    return v0
.end method
