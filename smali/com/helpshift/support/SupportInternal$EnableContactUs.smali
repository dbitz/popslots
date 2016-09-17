.class public Lcom/helpshift/support/SupportInternal$EnableContactUs;
.super Ljava/lang/Object;
.source "SupportInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/SupportInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnableContactUs"
.end annotation


# static fields
.field public static final AFTER_MARKING_ANSWER_UNHELPFUL:Ljava/lang/Integer;

.field public static final AFTER_VIEWING_FAQS:Ljava/lang/Integer;

.field public static final ALWAYS:Ljava/lang/Integer;

.field public static final NEVER:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1491
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->ALWAYS:Ljava/lang/Integer;

    .line 1492
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->NEVER:Ljava/lang/Integer;

    .line 1493
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->AFTER_VIEWING_FAQS:Ljava/lang/Integer;

    .line 1494
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->AFTER_MARKING_ANSWER_UNHELPFUL:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
