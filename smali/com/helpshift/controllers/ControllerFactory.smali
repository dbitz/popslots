.class public Lcom/helpshift/controllers/ControllerFactory;
.super Ljava/lang/Object;
.source "ControllerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/controllers/ControllerFactory$LazyHolder;
    }
.end annotation


# instance fields
.field public final dataSyncCoordinator:Lcom/helpshift/controllers/DataSyncCoordinator;

.field public final syncController:Lcom/helpshift/controllers/SyncController;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/helpshift/storage/StorageFactory;->getInstance()Lcom/helpshift/storage/StorageFactory;

    move-result-object v1

    iget-object v0, v1, Lcom/helpshift/storage/StorageFactory;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    .line 18
    .local v0, "keyValueStorage":Lcom/helpshift/storage/KeyValueStorage;
    new-instance v1, Lcom/helpshift/controllers/SyncController;

    new-instance v2, Lcom/helpshift/util/TimeUtil;

    invoke-direct {v2}, Lcom/helpshift/util/TimeUtil;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/helpshift/specifications/SyncSpecification;

    invoke-direct {v1, v0, v2, v3}, Lcom/helpshift/controllers/SyncController;-><init>(Lcom/helpshift/storage/KeyValueStorage;Lcom/helpshift/util/TimeUtil;[Lcom/helpshift/specifications/SyncSpecification;)V

    iput-object v1, p0, Lcom/helpshift/controllers/ControllerFactory;->syncController:Lcom/helpshift/controllers/SyncController;

    .line 19
    new-instance v1, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;

    invoke-direct {v1, v0}, Lcom/helpshift/controllers/DataSyncCoordinatorImpl;-><init>(Lcom/helpshift/storage/KeyValueStorage;)V

    iput-object v1, p0, Lcom/helpshift/controllers/ControllerFactory;->dataSyncCoordinator:Lcom/helpshift/controllers/DataSyncCoordinator;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/controllers/ControllerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/controllers/ControllerFactory$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/helpshift/controllers/ControllerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/helpshift/controllers/ControllerFactory;
    .locals 1

    .prologue
    .line 23
    # getter for: Lcom/helpshift/controllers/ControllerFactory$LazyHolder;->INSTANCE:Lcom/helpshift/controllers/ControllerFactory;
    invoke-static {}, Lcom/helpshift/controllers/ControllerFactory$LazyHolder;->access$000()Lcom/helpshift/controllers/ControllerFactory;

    move-result-object v0

    return-object v0
.end method
