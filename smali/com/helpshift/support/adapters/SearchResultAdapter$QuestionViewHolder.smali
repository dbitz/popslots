.class public Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/adapters/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QuestionViewHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 198
    iput-object p1, p0, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;

    .line 199
    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method
