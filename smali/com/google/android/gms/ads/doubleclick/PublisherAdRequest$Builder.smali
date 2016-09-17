.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzaa$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    return-object v0
.end method


# virtual methods
.method public addCategoryExclusion(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "categoryExclusion"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzG(Ljava/lang/String;)V

    return-object p0
.end method

.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p2, "customEventExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addCustomTargeting(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    const-string/jumbo v1, ","

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzv;->zzcL(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzv;->zza(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzA(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "networkExtras"    # Lcom/google/android/gms/ads/mediation/NetworkExtras;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p2, "networkExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/MediationAdapter;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzB(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$1;)V

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "birthday"    # Ljava/util/Date;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 6
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Content URL must be non-null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Content URL must be non-empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Content URL must not exceed %d in length.  Provided length was %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzD(Ljava/lang/String;)V

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "gender"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzn(I)V

    return-object p0
.end method

.method public setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "isDesignedForFamilies"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzl(Z)V

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "manualImpressionsEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->setManualImpressionsEnabled(Z)V

    return-object p0
.end method

.method public setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "publisherProvidedId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzE(Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "requestAgent"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzF(Ljava/lang/String;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .param p1, "tagForChildDirectedTreatment"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzoF:Lcom/google/android/gms/ads/internal/client/zzaa$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzk(Z)V

    return-object p0
.end method
