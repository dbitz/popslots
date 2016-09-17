.class public Lcom/helpshift/model/AppInfoModel;
.super Ljava/lang/Object;
.source "AppInfoModel.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private domainName:Ljava/lang/String;

.field private notificationIconId:Ljava/lang/Integer;

.field private notificationSoundId:Ljava/lang/Integer;

.field private platformId:Ljava/lang/String;

.field private storage:Lcom/helpshift/storage/KeyValueStorage;


# direct methods
.method protected constructor <init>(Lcom/helpshift/storage/KeyValueStorage;)V
    .locals 3
    .param p1, "kvStore"    # Lcom/helpshift/storage/KeyValueStorage;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    .line 27
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "apiKey"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/model/AppInfoModel;->apiKey:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "domainName"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/SchemaUtil;->validateDomainName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iput-object v2, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "platformId"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/SchemaUtil;->validatePlatformId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iput-object v2, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "notificationSound"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/helpshift/model/AppInfoModel;->notificationSoundId:Ljava/lang/Integer;

    .line 37
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "notificationIconId"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/helpshift/model/AppInfoModel;->notificationIconId:Ljava/lang/Integer;

    .line 38
    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationIconId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->notificationIconId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationSoundId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->notificationSoundId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domainName"    # Ljava/lang/String;
    .param p3, "platformId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 81
    iput-object p1, p0, Lcom/helpshift/model/AppInfoModel;->apiKey:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/SchemaUtil;->validateDomainName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iput-object v1, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/SchemaUtil;->validatePlatformId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iput-object v1, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "apiKey"

    iget-object v2, p0, Lcom/helpshift/model/AppInfoModel;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 93
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "domainName"

    iget-object v2, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 94
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "platformId"

    iget-object v2, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 95
    return-void
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->domainName:Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->platformId:Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNotificationIconId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "notificationIconId"    # Ljava/lang/Integer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/helpshift/model/AppInfoModel;->notificationIconId:Ljava/lang/Integer;

    .line 67
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "notificationIcon"

    iget-object v2, p0, Lcom/helpshift/model/AppInfoModel;->notificationIconId:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 68
    return-void
.end method

.method public setNotificationSoundId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "notificationSoundId"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/helpshift/model/AppInfoModel;->notificationSoundId:Ljava/lang/Integer;

    .line 62
    iget-object v0, p0, Lcom/helpshift/model/AppInfoModel;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "notificationSound"

    iget-object v2, p0, Lcom/helpshift/model/AppInfoModel;->notificationSoundId:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 63
    return-void
.end method
