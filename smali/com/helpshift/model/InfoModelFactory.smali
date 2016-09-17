.class public Lcom/helpshift/model/InfoModelFactory;
.super Ljava/lang/Object;
.source "InfoModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/model/InfoModelFactory$LazyHolder;
    }
.end annotation


# instance fields
.field public final appInfoModel:Lcom/helpshift/model/AppInfoModel;

.field public final sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/helpshift/storage/StorageFactory;->getInstance()Lcom/helpshift/storage/StorageFactory;

    move-result-object v1

    iget-object v0, v1, Lcom/helpshift/storage/StorageFactory;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    .line 17
    .local v0, "keyValueStorage":Lcom/helpshift/storage/KeyValueStorage;
    new-instance v1, Lcom/helpshift/model/AppInfoModel;

    invoke-direct {v1, v0}, Lcom/helpshift/model/AppInfoModel;-><init>(Lcom/helpshift/storage/KeyValueStorage;)V

    iput-object v1, p0, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    .line 18
    new-instance v1, Lcom/helpshift/model/SdkInfoModel;

    invoke-direct {v1, v0}, Lcom/helpshift/model/SdkInfoModel;-><init>(Lcom/helpshift/storage/KeyValueStorage;)V

    iput-object v1, p0, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/model/InfoModelFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/model/InfoModelFactory$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/helpshift/model/InfoModelFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/helpshift/model/InfoModelFactory;
    .locals 1

    .prologue
    .line 22
    # getter for: Lcom/helpshift/model/InfoModelFactory$LazyHolder;->INSTANCE:Lcom/helpshift/model/InfoModelFactory;
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory$LazyHolder;->access$000()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v0

    return-object v0
.end method
