.class public Lcom/helpshift/support/util/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;ILandroid/view/View;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "showRationaleSnackbar":Landroid/support/design/widget/Snackbar;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget v1, Lcom/helpshift/R$string;->hs__permission_denied_message:I

    const/4 v2, -0x2

    .line 39
    invoke-static {p3, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__permission_rationale_snackbar_action_label:I

    new-instance v3, Lcom/helpshift/support/util/PermissionUtil$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/helpshift/support/util/PermissionUtil$1;-><init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static showSettingsPage(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 20
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v3, "settingsIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "settingsIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
