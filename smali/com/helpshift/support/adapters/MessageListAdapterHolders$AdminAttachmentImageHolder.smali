.class public Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MessageListAdapterHolders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/adapters/MessageListAdapterHolders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdminAttachmentImageHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    iput-object p1, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;->textView:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method public static configure(Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;Lcom/helpshift/support/model/Message;)V
    .locals 2
    .param p0, "holder"    # Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;
    .param p1, "message"    # Lcom/helpshift/support/model/Message;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpshift/support/model/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/View$OnLongClickListener;)Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/helpshift/R$layout;->hs__admin_txt:I

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 111
    new-instance v1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;

    invoke-direct {v1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;-><init>(Landroid/widget/TextView;)V

    return-object v1
.end method
