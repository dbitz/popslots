.class public Lcom/helpshift/support/adapters/MessageListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p2, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/model/Message;",
            ">;",
            "Landroid/view/View$OnLongClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->messages:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 32
    iput-object p3, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v3, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/model/Message;

    .line 73
    .local v0, "message":Lcom/helpshift/support/model/Message;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getOrigin()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "origin":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Message;->getType()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v3, 0x1

    .line 84
    :goto_0
    return v3

    .line 77
    :cond_0
    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v3, 0x2

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "rar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    const/4 v3, 0x3

    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "admin_attachment_image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const/4 v3, 0x4

    goto :goto_0

    .line 84
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/model/Message;

    .line 54
    .local v0, "message":Lcom/helpshift/support/model/Message;
    instance-of v1, p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$MobileTxtHolder;

    if-eqz v1, :cond_1

    .line 55
    check-cast p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$MobileTxtHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$MobileTxtHolder;->configure(Lcom/helpshift/support/adapters/MessageListAdapterHolders$MobileTxtHolder;Lcom/helpshift/support/model/Message;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    instance-of v1, p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminTxtHolder;

    if-eqz v1, :cond_2

    .line 57
    check-cast p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminTxtHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminTxtHolder;->configure(Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminTxtHolder;Lcom/helpshift/support/model/Message;)V

    goto :goto_0

    .line 58
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    instance-of v1, p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;

    if-eqz v1, :cond_3

    .line 59
    check-cast p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->configure(Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;Lcom/helpshift/support/model/Message;)V

    goto :goto_0

    .line 60
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    instance-of v1, p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;->configure(Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;Lcom/helpshift/support/model/Message;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    packed-switch p2, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$MobileTxtHolder;->create(Landroid/view/ViewGroup;Landroid/view/View$OnLongClickListener;)Lcom/helpshift/support/adapters/MessageListAdapterHolders$MobileTxtHolder;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminTxtHolder;->create(Landroid/view/ViewGroup;Landroid/view/View$OnLongClickListener;)Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminTxtHolder;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, v0, v1}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;->create(Landroid/view/ViewGroup;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminRarHolder;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/helpshift/support/adapters/MessageListAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {p1, v0}, Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;->create(Landroid/view/ViewGroup;Landroid/view/View$OnLongClickListener;)Lcom/helpshift/support/adapters/MessageListAdapterHolders$AdminAttachmentImageHolder;

    move-result-object v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
