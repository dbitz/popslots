.class public Lcom/helpshift/model/SdkInfoModel;
.super Ljava/lang/Object;
.source "SdkInfoModel.java"


# instance fields
.field private etags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Lcom/helpshift/storage/KeyValueStorage;


# direct methods
.method protected constructor <init>(Lcom/helpshift/storage/KeyValueStorage;)V
    .locals 2
    .param p1, "kvStore"    # Lcom/helpshift/storage/KeyValueStorage;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    .line 24
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "etags"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    .line 25
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public addDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "hs-device-id"

    invoke-interface {v0, v1, p1}, Lcom/helpshift/storage/KeyValueStorage;->setWithBackup(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public addEtag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "etag"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "etags"

    iget-object v2, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 39
    return-void
.end method

.method public clearEtag(Ljava/lang/String;)V
    .locals 3
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "etags"

    iget-object v2, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 61
    :cond_0
    return-void
.end method

.method public getCurrentLoggedInId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "current-logged-in-id"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "hs-device-id"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->etags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeDelta()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "server-time-delta"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public setCurrentLoggedInId(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "current-logged-in-id"

    invoke-interface {v0, v1, p1}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 104
    return-void

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setServerTimeDelta(Ljava/lang/Float;)V
    .locals 2
    .param p1, "serverTimeDelta"    # Ljava/lang/Float;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/helpshift/model/SdkInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "server-time-delta"

    invoke-interface {v0, v1, p1}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 79
    return-void
.end method
