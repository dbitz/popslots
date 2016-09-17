.class public Lcom/scene53/gcm/Scene53GcmInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "Scene53GcmInstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "Scene53"

    const-string/jumbo v1, "GCM onTokenRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method
