.class public Lcom/scene53/Scene53App;
.super Landroid/app/Application;
.source "Scene53App.java"


# static fields
.field private static _instance:Lcom/scene53/Scene53App;


# instance fields
.field private isActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scene53/Scene53App;->isActive:Z

    return-void
.end method

.method public static get()Lcom/scene53/Scene53App;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/scene53/Scene53App;->_instance:Lcom/scene53/Scene53App;

    return-object v0
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IDFA getAdvertisingId exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/scene53/Scene53App;->isActive:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    sput-object p0, Lcom/scene53/Scene53App;->_instance:Lcom/scene53/Scene53App;

    .line 25
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/scene53/Scene53App;->isActive:Z

    .line 29
    return-void
.end method
