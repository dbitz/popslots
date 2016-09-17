.class Lcom/helpshift/support/DownloadManager$Holder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/support/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/helpshift/support/DownloadManager;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/DownloadManager$Holder;->INSTANCE:Lcom/helpshift/support/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/helpshift/support/DownloadManager;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/helpshift/support/DownloadManager$Holder;->INSTANCE:Lcom/helpshift/support/DownloadManager;

    return-object v0
.end method
