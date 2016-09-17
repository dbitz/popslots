.class public Lcom/helpshift/support/util/HSColor;
.super Ljava/lang/Object;
.source "HSColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextViewAlpha(Landroid/widget/TextView;F)V
    .locals 6
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "alpha"    # F

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 10
    .local v0, "color":I
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 10
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 14
    .local v1, "newColor":I
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    return-void
.end method
