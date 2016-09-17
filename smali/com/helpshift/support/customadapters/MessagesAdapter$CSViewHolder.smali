.class Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSViewHolder"
.end annotation


# instance fields
.field public message:Landroid/widget/TextView;

.field public text1:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/support/customadapters/MessagesAdapter$1;

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;-><init>()V

    return-void
.end method
