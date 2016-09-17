.class Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RARViewHolder"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public message:Landroid/widget/TextView;

.field public progress:Landroid/widget/ProgressBar;

.field public reviewBtn:Landroid/widget/Button;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/support/customadapters/MessagesAdapter$1;

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;-><init>()V

    return-void
.end method
