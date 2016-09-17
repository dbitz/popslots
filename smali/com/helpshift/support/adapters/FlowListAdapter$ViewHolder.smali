.class public Lcom/helpshift/support/adapters/FlowListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FlowListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/adapters/FlowListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    iput-object p1, p0, Lcom/helpshift/support/adapters/FlowListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/adapters/FlowListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/adapters/FlowListAdapter$ViewHolder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/support/adapters/FlowListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method
