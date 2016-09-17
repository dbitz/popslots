.class public final Lcom/helpshift/support/D$plurals;
.super Ljava/lang/Object;
.source "D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "plurals"
.end annotation


# static fields
.field public static hs__csat_rating_value:I

.field public static hs__notification_content_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/helpshift/R$plurals;->hs__notification_content_title:I

    sput v0, Lcom/helpshift/support/D$plurals;->hs__notification_content_title:I

    .line 114
    sget v0, Lcom/helpshift/R$plurals;->hs__csat_rating_value:I

    sput v0, Lcom/helpshift/support/D$plurals;->hs__csat_rating_value:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
