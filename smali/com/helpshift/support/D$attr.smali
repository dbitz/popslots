.class public final Lcom/helpshift/support/D$attr;
.super Ljava/lang/Object;
.source "D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static hs__acceptButtonIconColor:I

.field public static hs__actionButtonIconColor:I

.field public static hs__actionButtonNotificationIconColor:I

.field public static hs__attachScreenshotButtonIconColor:I

.field public static hs__buttonCompoundDrawableIconColor:I

.field public static hs__downloadAttachmentButtonIconColor:I

.field public static hs__launchAttachmentButtonIconColor:I

.field public static hs__rejectButtonIconColor:I

.field public static hs__reviewButtonIconColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/helpshift/R$attr;->hs__actionButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__actionButtonIconColor:I

    .line 119
    sget v0, Lcom/helpshift/R$attr;->hs__actionButtonNotificationIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__actionButtonNotificationIconColor:I

    .line 120
    sget v0, Lcom/helpshift/R$attr;->hs__buttonCompoundDrawableIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__buttonCompoundDrawableIconColor:I

    .line 121
    sget v0, Lcom/helpshift/R$attr;->hs__acceptButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__acceptButtonIconColor:I

    .line 122
    sget v0, Lcom/helpshift/R$attr;->hs__rejectButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__rejectButtonIconColor:I

    .line 123
    sget v0, Lcom/helpshift/R$attr;->hs__attachScreenshotButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__attachScreenshotButtonIconColor:I

    .line 124
    sget v0, Lcom/helpshift/R$attr;->hs__reviewButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__reviewButtonIconColor:I

    .line 125
    sget v0, Lcom/helpshift/R$attr;->hs__downloadAttachmentButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__downloadAttachmentButtonIconColor:I

    .line 126
    sget v0, Lcom/helpshift/R$attr;->hs__launchAttachmentButtonIconColor:I

    sput v0, Lcom/helpshift/support/D$attr;->hs__launchAttachmentButtonIconColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
