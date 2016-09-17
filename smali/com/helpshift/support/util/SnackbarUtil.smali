.class public Lcom/helpshift/support/util/SnackbarUtil;
.super Ljava/lang/Object;
.source "SnackbarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showErrorSnackbar(ILandroid/view/View;)V
    .locals 5
    .param p0, "errorCode"    # I
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 23
    if-eqz p1, :cond_0

    if-ne p0, v4, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    if-nez p0, :cond_2

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__network_unavailable_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "message":Ljava/lang/String;
    :goto_1
    invoke-static {p1, v1, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 30
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x194

    if-ne p0, v2, :cond_3

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__data_not_found_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 32
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__screenshot_upload_error_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 34
    .end local v1    # "message":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x3

    if-ne p0, v2, :cond_5

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__could_not_reach_support_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 36
    .end local v1    # "message":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x4

    if-ne p0, v2, :cond_6

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__could_not_open_attachment_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 38
    .end local v1    # "message":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x5

    if-ne p0, v2, :cond_7

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__file_not_found_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 41
    .end local v1    # "message":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$string;->hs__network_error_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method public static showSnackbar(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 20
    :cond_0
    return-void
.end method

.method public static showSnackbar(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 11
    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 14
    :cond_0
    return-void
.end method
