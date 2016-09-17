.class public Lcom/adjust/sdk/PackageHandler;
.super Landroid/os/HandlerThread;
.source "PackageHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IPackageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/PackageHandler$InternalHandler;
    }
.end annotation


# static fields
.field private static final PACKAGE_QUEUE_FILENAME:Ljava/lang/String; = "AdjustIoPackageQueue"

.field private static final PACKAGE_QUEUE_NAME:Ljava/lang/String; = "Package queue"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private context:Landroid/content/Context;

.field private final internalHandler:Lcom/adjust/sdk/PackageHandler$InternalHandler;

.field private isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private requestHandler:Lcom/adjust/sdk/IRequestHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "startPaused"    # Z

    .prologue
    const/4 v3, 0x1

    .line 40
    const-string/jumbo v1, "Adjust"

    invoke-direct {p0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0, v3}, Lcom/adjust/sdk/PackageHandler;->setDaemon(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/adjust/sdk/PackageHandler;->start()V

    .line 43
    new-instance v1, Lcom/adjust/sdk/PackageHandler$InternalHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/PackageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/adjust/sdk/PackageHandler$InternalHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/PackageHandler;)V

    iput-object v1, p0, Lcom/adjust/sdk/PackageHandler;->internalHandler:Lcom/adjust/sdk/PackageHandler$InternalHandler;

    .line 44
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/PackageHandler;->init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 48
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 50
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->internalHandler:Lcom/adjust/sdk/PackageHandler$InternalHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/PackageHandler$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/PackageHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->initInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/PackageHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageHandler;->addInternal(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/PackageHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->sendFirstInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/PackageHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->sendNextInternal()V

    return-void
.end method

.method private addInternal(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 6
    .param p1, "newPackage"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v0

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Added package %d (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->writePackageQueue()V

    .line 169
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static deletePackageQueue(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string/jumbo v0, "AdjustIoPackageQueue"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private initInternal()V
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/adjust/sdk/AdjustFactory;->getRequestHandler(Lcom/adjust/sdk/IPackageHandler;)Lcom/adjust/sdk/IRequestHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->readPackageQueue()V

    .line 157
    return-void
.end method

.method private readPackageQueue()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    const-string/jumbo v2, "AdjustIoPackageQueue"

    const-string/jumbo v3, "Package queue"

    const-class v4, Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Package handler read %d packages"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :goto_1
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Package queue"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    goto :goto_1
.end method

.method private sendFirstInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-boolean v1, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Package handler is paused"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v2, "Package handler is already sending"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 186
    .local v0, "firstPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IRequestHandler;->sendPackage(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private sendNextInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->writePackageQueue()V

    .line 192
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 193
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->sendFirstInternal()V

    .line 194
    return-void
.end method

.method private writePackageQueue()V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    const-string/jumbo v2, "AdjustIoPackageQueue"

    const-string/jumbo v3, "Package queue"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Package handler wrote %d packages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method


# virtual methods
.method public addPackage(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2
    .param p1, "pack"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 64
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 65
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->internalHandler:Lcom/adjust/sdk/PackageHandler$InternalHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/PackageHandler$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    return-void
.end method

.method public closeFirstPackage(Lcom/adjust/sdk/ResponseData;)V
    .locals 2
    .param p1, "responseData"    # Lcom/adjust/sdk/ResponseData;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 94
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V

    .line 95
    return-void
.end method

.method public init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "startPaused"    # Z

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 56
    iput-object p2, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    .line 57
    iput-boolean p3, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    .line 58
    return-void
.end method

.method public pauseSending()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    .line 101
    return-void
.end method

.method public resumeSending()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    .line 107
    return-void
.end method

.method public sendFirstPackage()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 73
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 74
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->internalHandler:Lcom/adjust/sdk/PackageHandler$InternalHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/PackageHandler$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
    .locals 2
    .param p1, "responseData"    # Lcom/adjust/sdk/ResponseData;

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 83
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->internalHandler:Lcom/adjust/sdk/PackageHandler$InternalHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/PackageHandler$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v1, p1}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V

    .line 86
    return-void
.end method
