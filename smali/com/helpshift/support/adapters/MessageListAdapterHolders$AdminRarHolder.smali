.class public Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MessageListAdapterHolders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/adapters/MessageListAdapterHolders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdminRarHolder"
.end annotation


# instance fields
.field private messageBody:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private reviewButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    sget v0, Lcom/helpshift/R$id;->message_body:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->messageBody:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/helpshift/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 78
    sget v0, Lcom/helpshift/R$id;->review_button:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->reviewButton:Landroid/widget/ImageButton;

    .line 79
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->reviewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public static configure(Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;Lcom/helpshift/support/model/Message;)V
    .locals 2
    .param p0, "holder"    # Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;
    .param p1, "message"    # Lcom/helpshift/support/model/Message;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->messageBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->messageBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpshift/support/model/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/helpshift/R$layout;->hs__admin_rar:I

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    .local v0, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    new-instance v1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;

    invoke-direct {v1, v0, p2}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;-><init>(Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
