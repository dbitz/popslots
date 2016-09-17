.class public Lcom/helpshift/controllers/DataSyncCoordinatorImpl;
.super Ljava/lang/Object;
.source "DataSyncCoordinatorImpl.java"

# interfaces
.implements Lcom/helpshift/controllers/DataSyncCoordinator;


# instance fields
.field private storage:Lcom/helpshift/storage/KeyValueStorage;


# direct methods
.method protected constructor <init>(Lcom/helpshift/storage/KeyValueStorage;)V
    .locals 0
    .param p1, "keyValueStorage"    # Lcom/helpshift/storage/KeyValueStorage;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    .line 10
    return-void
.end method

.method private canSyncProperties(Ljava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v2, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v3, "firstDeviceSyncComplete"

    invoke-interface {v2, v3}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->isBoolean(Ljava/lang/Boolean;)Z

    move-result v0

    .line 18
    .local v0, "deviceSyncComplete":Z
    iget-object v2, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchUserCompleteFor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->isBoolean(Ljava/lang/Boolean;)Z

    move-result v1

    .line 20
    .local v1, "userSwitchComplete":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isBoolean(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 13
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSyncSessionProperties(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->canSyncProperties(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canSyncUserProperties(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->canSyncProperties(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public firstDeviceSyncComplete()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "firstDeviceSyncComplete"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 36
    return-void
.end method

.method public isFirstDeviceSyncComplete()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    const-string/jumbo v1, "firstDeviceSyncComplete"

    invoke-interface {v0, v1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->isBoolean(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public switchUserComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUserCompleteFor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 51
    return-void
.end method

.method public switchUserPending(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;->storage:Lcom/helpshift/storage/KeyValueStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUserCompleteFor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 46
    return-void
.end method
