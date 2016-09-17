.class public Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/adapters/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FooterViewHolder"
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field private contactUsHintText:Landroid/widget/TextView;

.field private contactUsView:Landroid/widget/LinearLayout;

.field private noFaqsView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 222
    sget v0, Lcom/helpshift/R$id;->contact_us_view:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->contactUsView:Landroid/widget/LinearLayout;

    .line 223
    sget v0, Lcom/helpshift/R$id;->contact_us_hint_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->contactUsHintText:Landroid/widget/TextView;

    .line 224
    sget v0, Lcom/helpshift/R$id;->report_issue:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->button:Landroid/widget/Button;

    .line 225
    sget v0, Lcom/helpshift/R$id;->no_faqs_view:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->noFaqsView:Landroid/widget/TextView;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->contactUsHintText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->contactUsView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchListAdapter$FooterViewHolder;->noFaqsView:Landroid/widget/TextView;

    return-object v0
.end method
