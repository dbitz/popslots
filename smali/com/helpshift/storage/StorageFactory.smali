.class public Lcom/helpshift/storage/StorageFactory;
.super Ljava/lang/Object;
.source "StorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/storage/StorageFactory$LazyHolder;
    }
.end annotation


# instance fields
.field public final keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/helpshift/storage/KeyValueDbStorage;

    invoke-direct {v0}, Lcom/helpshift/storage/KeyValueDbStorage;-><init>()V

    iput-object v0, p0, Lcom/helpshift/storage/StorageFactory;->keyValueStorage:Lcom/helpshift/storage/KeyValueStorage;

    .line 8
    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/storage/StorageFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/storage/StorageFactory$1;

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/helpshift/storage/StorageFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/helpshift/storage/StorageFactory;
    .locals 1

    .prologue
    .line 11
    # getter for: Lcom/helpshift/storage/StorageFactory$LazyHolder;->INSTANCE:Lcom/helpshift/storage/StorageFactory;
    invoke-static {}, Lcom/helpshift/storage/StorageFactory$LazyHolder;->access$000()Lcom/helpshift/storage/StorageFactory;

    move-result-object v0

    return-object v0
.end method
