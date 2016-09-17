.class public Lcom/helpshift/controllers/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lcom/helpshift/app/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/controllers/SyncController$DataTypes;
    }
.end annotation


# static fields
.field protected static final COUNT:Ljava/lang/String; = "count"

.field protected static final SYNC_TIME:Ljava/lang/String; = "sync_time"


# instance fields
.field private final keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

.field private final syncListeners:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/helpshift/listeners/SyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private final syncSpecificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/helpshift/specifications/SyncSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUtil:Lcom/helpshift/util/TimeUtil;


# direct methods
.method protected varargs constructor <init>(Lcom/helpshift/storage/KeyValueStorage;Lcom/helpshift/util/TimeUtil;[Lcom/helpshift/specifications/SyncSpecification;)V
    .locals 5
    .param p1, "keyValueStorage"    # Lcom/helpshift/storage/KeyValueStorage;
    .param p2, "timeUtil"    # Lcom/helpshift/util/TimeUtil;
    .param p3, "syncSpecifications"    # [Lcom/helpshift/specifications/SyncSpecification;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/helpshift/controllers/SyncController;->syncListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/helpshift/controllers/SyncController;->syncSpecificationMap:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcom/helpshift/controllers/SyncController;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    .line 38
    iput-object p2, p0, Lcom/helpshift/controllers/SyncController;->timeUtil:Lcom/helpshift/util/TimeUtil;

    .line 39
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p3, v1

    .line 40
    .local v0, "syncSpecification":Lcom/helpshift/specifications/SyncSpecification;
    iget-object v3, p0, Lcom/helpshift/controllers/SyncController;->syncSpecificationMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/helpshift/specifications/SyncSpecification;->getDataType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "syncSpecification":Lcom/helpshift/specifications/SyncSpecification;
    :cond_0
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getMainLifecycleCallback()Lcom/helpshift/app/MainLifecycleCallback;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/helpshift/app/MainLifecycleCallback;->addLifecycleListener(Lcom/helpshift/app/LifecycleListener;)V

    .line 43
    return-void
.end method

.method private dispatchSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/helpshift/controllers/SyncController;->syncListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/listeners/SyncListener;

    .line 96
    .local v0, "listener":Lcom/helpshift/listeners/SyncListener;
    invoke-virtual {v0}, Lcom/helpshift/listeners/SyncListener;->getDataType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/helpshift/listeners/SyncListener;->sync()V

    goto :goto_0

    .line 100
    .end local v0    # "listener":Lcom/helpshift/listeners/SyncListener;
    :cond_1
    return-void
.end method

.method private getDataChangeCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/helpshift/controllers/SyncController;->getSyncInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getElapsedTimeSinceLastSync(Ljava/lang/String;)J
    .locals 4
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/helpshift/controllers/SyncController;->timeUtil:Lcom/helpshift/util/TimeUtil;

    invoke-virtual {v0}, Lcom/helpshift/util/TimeUtil;->elapsedTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/helpshift/controllers/SyncController;->getSyncInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "sync_time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    return-wide v0
.end method

.method private getSyncInformation(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lcom/helpshift/controllers/SyncController;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    invoke-interface {v1, p1}, Lcom/helpshift/storage/KeyValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 171
    .local v0, "information":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "information":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .restart local v0    # "information":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v1, "sync_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    return-object v0
.end method

.method private varargs triggerSync([Ljava/lang/String;)V
    .locals 8
    .param p1, "dataTypes"    # [Ljava/lang/String;

    .prologue
    .line 79
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 80
    .local v0, "dataType":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/controllers/SyncController;->syncSpecificationMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/specifications/SyncSpecification;

    .line 81
    .local v1, "specification":Lcom/helpshift/specifications/SyncSpecification;
    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lcom/helpshift/controllers/SyncController;->getDataChangeCount(Ljava/lang/String;)I

    move-result v4

    .line 83
    invoke-direct {p0, v0}, Lcom/helpshift/controllers/SyncController;->getElapsedTimeSinceLastSync(Ljava/lang/String;)J

    move-result-wide v6

    .line 82
    invoke-interface {v1, v4, v6, v7}, Lcom/helpshift/specifications/SyncSpecification;->isSatisfied(IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lcom/helpshift/controllers/SyncController;->dispatchSync(Ljava/lang/String;)V

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "dataType":Ljava/lang/String;
    .end local v1    # "specification":Lcom/helpshift/specifications/SyncSpecification;
    :cond_1
    return-void
.end method


# virtual methods
.method public addSpecification(Lcom/helpshift/specifications/SyncSpecification;)V
    .locals 2
    .param p1, "syncSpecification"    # Lcom/helpshift/specifications/SyncSpecification;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/helpshift/controllers/SyncController;->syncSpecificationMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/helpshift/specifications/SyncSpecification;->getDataType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public varargs addSyncListeners([Lcom/helpshift/listeners/SyncListener;)V
    .locals 5
    .param p1, "listeners"    # [Lcom/helpshift/listeners/SyncListener;

    .prologue
    .line 65
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 66
    .local v0, "listener":Lcom/helpshift/listeners/SyncListener;
    iget-object v3, p0, Lcom/helpshift/controllers/SyncController;->syncSpecificationMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/helpshift/listeners/SyncListener;->getDataType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/helpshift/controllers/SyncController;->syncListeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "listener":Lcom/helpshift/listeners/SyncListener;
    :cond_1
    return-void
.end method

.method public dataSynced(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/helpshift/controllers/SyncController;->getSyncInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 138
    .local v0, "information":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "sync_time"

    iget-object v2, p0, Lcom/helpshift/controllers/SyncController;->timeUtil:Lcom/helpshift/util/TimeUtil;

    invoke-virtual {v2}, Lcom/helpshift/util/TimeUtil;->elapsedTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/helpshift/controllers/SyncController;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    invoke-interface {v1, p1, v0}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 141
    return-void
.end method

.method public incrementDataChangeCount(Ljava/lang/String;I)V
    .locals 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/helpshift/controllers/SyncController;->getSyncInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 111
    .local v0, "information":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "count"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    .local v1, "previousCount":I
    const-string/jumbo v2, "count"

    add-int v3, v1, p2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lcom/helpshift/controllers/SyncController;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    invoke-interface {v2, p1, v0}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 114
    return-void
.end method

.method public onBackground()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "data_type_switch_user"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data_type_device"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data_type_user"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "data_type_session"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "data_type_analytics_event"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/helpshift/controllers/SyncController;->triggerSync([Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onForeground()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public setDataChangeCount(Ljava/lang/String;I)V
    .locals 3
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/helpshift/controllers/SyncController;->getSyncInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 125
    .local v0, "information":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/helpshift/controllers/SyncController;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    invoke-interface {v1, p1, v0}, Lcom/helpshift/storage/KeyValueStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 127
    return-void
.end method
