.class public Lcom/helpshift/support/widget/CSATDialog;
.super Landroid/app/Dialog;
.source "CSATDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private addtionalFeedback:Landroid/widget/EditText;

.field private context:Landroid/content/Context;

.field private csatView:Lcom/helpshift/support/widget/CSATView;

.field private dialogRatingBar:Landroid/widget/RatingBar;

.field private likeStatus:Landroid/widget/TextView;

.field private rating:F

.field private submitted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/widget/CSATDialog;->submitted:Z

    .line 38
    iput-object p1, p0, Lcom/helpshift/support/widget/CSATDialog;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private showSubmitToast()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATDialog;->csatView:Lcom/helpshift/support/widget/CSATView;

    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->context:Landroid/content/Context;

    sget v2, Lcom/helpshift/R$string;->hs__csat_submit_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;Ljava/lang/String;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    .local v0, "id":I
    sget v1, Lcom/helpshift/support/D$id;->submit:I

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->csatView:Lcom/helpshift/support/widget/CSATView;

    iget-object v2, p0, Lcom/helpshift/support/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    iget-object v3, p0, Lcom/helpshift/support/widget/CSATDialog;->addtionalFeedback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/support/widget/CSATView;->sendCSATSurvey(FLjava/lang/String;)V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/support/widget/CSATDialog;->submitted:Z

    .line 91
    invoke-direct {p0}, Lcom/helpshift/support/widget/CSATDialog;->showSubmitToast()V

    .line 92
    invoke-virtual {p0}, Lcom/helpshift/support/widget/CSATDialog;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/support/widget/CSATDialog;->requestWindowFeature(I)Z

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v1, Lcom/helpshift/support/D$layout;->hs__csat_dialog:I

    invoke-virtual {p0, v1}, Lcom/helpshift/support/widget/CSATDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0, p0}, Lcom/helpshift/support/widget/CSATDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 47
    invoke-virtual {p0, p0}, Lcom/helpshift/support/widget/CSATDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    sget v1, Lcom/helpshift/support/D$id;->ratingBar:I

    invoke-virtual {p0, v1}, Lcom/helpshift/support/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    .line 50
    invoke-virtual {p0}, Lcom/helpshift/support/widget/CSATDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/Styles;->setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, p0}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    sget v1, Lcom/helpshift/support/D$id;->like_status:I

    invoke-virtual {p0, v1}, Lcom/helpshift/support/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->likeStatus:Landroid/widget/TextView;

    .line 54
    sget v1, Lcom/helpshift/support/D$id;->additional_feedback:I

    invoke-virtual {p0, v1}, Lcom/helpshift/support/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->addtionalFeedback:Landroid/widget/EditText;

    .line 56
    sget v1, Lcom/helpshift/support/D$id;->submit:I

    invoke-virtual {p0, v1}, Lcom/helpshift/support/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "submit":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/helpshift/support/widget/CSATDialog;->submitted:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATDialog;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/support/widget/CSATView;->dismiss()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "cr"

    invoke-static {v0}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATDialog;->csatView:Lcom/helpshift/support/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/support/widget/CSATView;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 62
    const-string/jumbo v1, "sr"

    invoke-static {v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    iget v2, p0, Lcom/helpshift/support/widget/CSATDialog;->rating:F

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 65
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$plurals;->hs__csat_rating_value:I

    iget v3, p0, Lcom/helpshift/support/widget/CSATDialog;->rating:F

    float-to-int v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/helpshift/support/widget/CSATDialog;->rating:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "ratingValue":Ljava/lang/CharSequence;
    iget v1, p0, Lcom/helpshift/support/widget/CSATDialog;->rating:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->likeStatus:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/support/D$string;->hs__csat_like_message:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/widget/CSATDialog;->likeStatus:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/support/D$string;->hs__csat_dislike_message:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    .local v0, "id":I
    sget v1, Lcom/helpshift/support/D$id;->ratingBar:I

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected show(Lcom/helpshift/support/widget/CSATView;)V
    .locals 1
    .param p1, "csatView"    # Lcom/helpshift/support/widget/CSATView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/helpshift/support/widget/CSATDialog;->csatView:Lcom/helpshift/support/widget/CSATView;

    .line 107
    invoke-virtual {p1}, Lcom/helpshift/support/widget/CSATView;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    iput v0, p0, Lcom/helpshift/support/widget/CSATDialog;->rating:F

    .line 108
    invoke-virtual {p0}, Lcom/helpshift/support/widget/CSATDialog;->show()V

    .line 109
    return-void
.end method
