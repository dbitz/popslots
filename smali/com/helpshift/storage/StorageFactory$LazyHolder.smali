.class final Lcom/helpshift/storage/StorageFactory$LazyHolder;
.super Ljava/lang/Object;
.source "StorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/storage/StorageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/storage/StorageFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/helpshift/storage/StorageFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpshift/storage/StorageFactory;-><init>(Lcom/helpshift/storage/StorageFactory$1;)V

    sput-object v0, Lcom/helpshift/storage/StorageFactory$LazyHolder;->INSTANCE:Lcom/helpshift/storage/StorageFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/storage/StorageFactory;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/helpshift/storage/StorageFactory$LazyHolder;->INSTANCE:Lcom/helpshift/storage/StorageFactory;

    return-object v0
.end method
