.class final Lcom/helpshift/model/InfoModelFactory$LazyHolder;
.super Ljava/lang/Object;
.source "InfoModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/model/InfoModelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/model/InfoModelFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/helpshift/model/InfoModelFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpshift/model/InfoModelFactory;-><init>(Lcom/helpshift/model/InfoModelFactory$1;)V

    sput-object v0, Lcom/helpshift/model/InfoModelFactory$LazyHolder;->INSTANCE:Lcom/helpshift/model/InfoModelFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/model/InfoModelFactory;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/helpshift/model/InfoModelFactory$LazyHolder;->INSTANCE:Lcom/helpshift/model/InfoModelFactory;

    return-object v0
.end method
