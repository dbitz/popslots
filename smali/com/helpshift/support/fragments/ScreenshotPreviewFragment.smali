.class public Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "ScreenshotPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/fragments/ScreenshotPreviewFragment$Modes;
    }
.end annotation


# instance fields
.field private mode:I

.field private screenshotPath:Ljava/lang/String;

.field private screenshotPreview:Landroid/widget/ImageView;

.field private screenshotPreviewListener:Lcom/helpshift/support/contracts/ScreenshotPreviewListener;

.field private secondaryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 26
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/ScreenshotPreviewListener;I)Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "listener"    # Lcom/helpshift/support/contracts/ScreenshotPreviewListener;
    .param p2, "mode"    # I

    .prologue
    .line 35
    new-instance v0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;-><init>()V

    .line 36
    .local v0, "screenshotPreviewFragment":Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    iput-object p1, v0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreviewListener:Lcom/helpshift/support/contracts/ScreenshotPreviewListener;

    .line 38
    iput p2, v0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->mode:I

    .line 39
    return-object v0
.end method

.method private setScreenshotPreview()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPath:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "screenshotBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    .end local v0    # "screenshotBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private static setSecondaryButtonText(Landroid/widget/Button;I)V
    .locals 3
    .param p0, "button"    # Landroid/widget/Button;
    .param p1, "mode"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, "resources":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 86
    const-string/jumbo v0, ""

    .line 89
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void

    .line 77
    .end local v0    # "buttonText":Ljava/lang/String;
    :pswitch_0
    sget v2, Lcom/helpshift/R$string;->hs__screenshot_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "buttonText":Ljava/lang/String;
    :pswitch_1
    sget v2, Lcom/helpshift/R$string;->hs__screenshot_remove:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "buttonText":Ljava/lang/String;
    :pswitch_2
    sget v2, Lcom/helpshift/R$string;->hs__send_msg_btn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 102
    .local v0, "id":I
    sget v1, Lcom/helpshift/R$id;->secondary_button:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreviewListener:Lcom/helpshift/support/contracts/ScreenshotPreviewListener;

    iget-object v2, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/helpshift/support/contracts/ScreenshotPreviewListener;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreviewListener:Lcom/helpshift/support/contracts/ScreenshotPreviewListener;

    iget-object v2, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/helpshift/support/contracts/ScreenshotPreviewListener;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreviewListener:Lcom/helpshift/support/contracts/ScreenshotPreviewListener;

    invoke-interface {v1}, Lcom/helpshift/support/contracts/ScreenshotPreviewListener;->remove()V

    goto :goto_0

    .line 114
    :cond_1
    sget v1, Lcom/helpshift/R$id;->change:I

    if-ne v0, v1, :cond_0

    .line 115
    iget v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 116
    const/4 v1, 0x1

    iput v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->mode:I

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreviewListener:Lcom/helpshift/support/contracts/ScreenshotPreviewListener;

    invoke-interface {v1}, Lcom/helpshift/support/contracts/ScreenshotPreviewListener;->change()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    sget v0, Lcom/helpshift/R$layout;->hs__screenshot_preview_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->secondaryButton:Landroid/widget/Button;

    iget v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->mode:I

    invoke-static {v0, v1}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->setSecondaryButtonText(Landroid/widget/Button;I)V

    .line 69
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->setScreenshotPreview()V

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    sget v1, Lcom/helpshift/R$id;->screenshot_preview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPreview:Landroid/widget/ImageView;

    .line 58
    sget v1, Lcom/helpshift/R$id;->change:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, "changeButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v1, Lcom/helpshift/R$id;->secondary_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->secondaryButton:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->secondaryButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public setScreenshotPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->screenshotPath:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->setScreenshotPreview()V

    .line 45
    return-void
.end method
