.class Lcom/helpshift/controllers/ControllerFactory$LazyHolder;
.super Ljava/lang/Object;
.source "ControllerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/controllers/ControllerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/controllers/ControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/helpshift/controllers/ControllerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpshift/controllers/ControllerFactory;-><init>(Lcom/helpshift/controllers/ControllerFactory$1;)V

    sput-object v0, Lcom/helpshift/controllers/ControllerFactory$LazyHolder;->INSTANCE:Lcom/helpshift/controllers/ControllerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/controllers/ControllerFactory;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/helpshift/controllers/ControllerFactory$LazyHolder;->INSTANCE:Lcom/helpshift/controllers/ControllerFactory;

    return-object v0
.end method
