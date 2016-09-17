.class public Lcom/helpshift/support/adapters/SectionListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Section;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/helpshift/support/adapters/SectionListAdapter;->sections:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/helpshift/support/adapters/SectionListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/support/adapters/SectionListAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/adapters/SectionListAdapter;->onBindViewHolder(Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/helpshift/support/adapters/SectionListAdapter;->sections:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Section;

    .line 36
    .local v0, "section":Lcom/helpshift/support/Section;
    # getter for: Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;->access$000(Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpshift/support/Section;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    # getter for: Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;->access$000(Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/adapters/SectionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/helpshift/R$layout;->hs_simple_recycler_view_item:I

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/helpshift/support/adapters/SectionListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance v1, Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/helpshift/support/adapters/SectionListAdapter$ViewHolder;-><init>(Landroid/widget/TextView;)V

    return-object v1
.end method
