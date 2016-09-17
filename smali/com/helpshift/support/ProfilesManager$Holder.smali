.class Lcom/helpshift/support/ProfilesManager$Holder;
.super Ljava/lang/Object;
.source "ProfilesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/ProfilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/support/ProfilesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/helpshift/support/ProfilesManager;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/ProfilesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/ProfilesManager$Holder;->INSTANCE:Lcom/helpshift/support/ProfilesManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/support/ProfilesManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/helpshift/support/ProfilesManager$Holder;->INSTANCE:Lcom/helpshift/support/ProfilesManager;

    return-object v0
.end method
