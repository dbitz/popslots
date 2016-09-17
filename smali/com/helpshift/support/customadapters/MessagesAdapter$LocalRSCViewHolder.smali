.class Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalRSCViewHolder"
.end annotation


# instance fields
.field public doneBtn:Landroid/view/View;

.field public errorText:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public imagePreview:Landroid/widget/LinearLayout;

.field public progress:Landroid/widget/ProgressBar;

.field public textRetry:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/support/customadapters/MessagesAdapter$1;

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;-><init>()V

    return-void
.end method
