.class Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdminAttachmentGenericViewHolder"
.end annotation


# instance fields
.field public attachmentIcon:Landroid/widget/ImageView;

.field public date:Landroid/widget/TextView;

.field public downloadButton:Landroid/view/View;

.field public downloadIcon:Landroid/widget/ImageView;

.field public fileName:Landroid/widget/TextView;

.field public fileSize:Landroid/widget/TextView;

.field public fileType:Landroid/widget/TextView;

.field public progress:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/support/customadapters/MessagesAdapter$1;

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;-><init>()V

    return-void
.end method
