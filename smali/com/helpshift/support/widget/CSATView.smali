.class public Lcom/helpshift/support/widget/CSATView;
.super Landroid/widget/RelativeLayout;
.source "CSATView.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/widget/CSATView$CSATListener;
    }
.end annotation


# instance fields
.field private csatDialog:Lcom/helpshift/support/widget/CSATDialog;

.field private csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

.field private ratingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    .line 21
    invoke-direct {p0, p1}, Lcom/helpshift/support/widget/CSATView;->initView(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    .line 26
    invoke-direct {p0, p1}, Lcom/helpshift/support/widget/CSATView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    .line 31
    invoke-direct {p0, p1}, Lcom/helpshift/support/widget/CSATView;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget v0, Lcom/helpshift/support/D$layout;->hs__csat_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    new-instance v0, Lcom/helpshift/support/widget/CSATDialog;

    invoke-direct {v0, p1}, Lcom/helpshift/support/widget/CSATDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatDialog:Lcom/helpshift/support/widget/CSATDialog;

    .line 37
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/helpshift/support/widget/CSATView;->setVisibility(I)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatDialog:Lcom/helpshift/support/widget/CSATDialog;

    .line 61
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    invoke-interface {v0}, Lcom/helpshift/support/widget/CSATView$CSATListener;->csatViewDissmissed()V

    .line 64
    :cond_0
    return-void
.end method

.method protected getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    sget v0, Lcom/helpshift/support/D$id;->ratingBar:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/helpshift/support/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    .line 43
    invoke-virtual {p0}, Lcom/helpshift/support/widget/CSATView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 45
    return-void
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 49
    if-eqz p3, :cond_0

    .line 50
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatDialog:Lcom/helpshift/support/widget/CSATDialog;

    invoke-virtual {v0, p0}, Lcom/helpshift/support/widget/CSATDialog;->show(Lcom/helpshift/support/widget/CSATView;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected sendCSATSurvey(FLjava/lang/String;)V
    .locals 2
    .param p1, "rating"    # F
    .param p2, "feedback"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/helpshift/support/widget/CSATView$CSATListener;->sendCSATSurvey(ILjava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setCSATListener(Lcom/helpshift/support/widget/CSATView$CSATListener;)V
    .locals 0
    .param p1, "csatListener"    # Lcom/helpshift/support/widget/CSATView$CSATListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/helpshift/support/widget/CSATView;->csatListener:Lcom/helpshift/support/widget/CSATView$CSATListener;

    .line 74
    return-void
.end method
