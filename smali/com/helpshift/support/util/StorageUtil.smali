.class public Lcom/helpshift/support/util/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearEtag(Ljava/lang/String;)V
    .locals 2
    .param p0, "route"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Lcom/helpshift/support/HSStorage;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, "storage":Lcom/helpshift/support/HSStorage;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/helpshift/support/HSStorage;->setEtag(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    return-void
.end method

.method public static clearFAQEtag()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "/faqs/"

    invoke-static {v0}, Lcom/helpshift/support/util/StorageUtil;->clearEtag(Ljava/lang/String;)V

    .line 10
    return-void
.end method
