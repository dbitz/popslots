.class public Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/adapters/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FooterViewHolder"
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field private rootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 208
    iput-object p1, p0, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->rootView:Landroid/widget/LinearLayout;

    .line 209
    sget v0, Lcom/helpshift/R$id;->send_anyway_button:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->button:Landroid/widget/Button;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->button:Landroid/widget/Button;

    return-object v0
.end method
