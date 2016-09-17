.class public final Lcom/helpshift/support/HSReview;
.super Landroid/support/v4/app/FragmentActivity;
.source "HSReview.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/helpshift/support/HSReview;->setContentView(Landroid/view/View;)V

    .line 18
    invoke-static {p0}, Lcom/helpshift/support/util/LocaleUtil;->changeLanguage(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/helpshift/support/HSReview;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 21
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v1, Lcom/helpshift/support/HSReviewFragment;

    invoke-direct {v1}, Lcom/helpshift/support/HSReviewFragment;-><init>()V

    .line 22
    .local v1, "reviewDialog":Lcom/helpshift/support/HSReviewFragment;
    const-string/jumbo v2, "hs__review_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/support/HSReviewFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 23
    return-void
.end method
