.class Lcom/helpshift/support/customadapters/MessagesAdapter$7;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

.field final synthetic val$item:Lcom/helpshift/support/viewstructs/HSMsg;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/customadapters/MessagesAdapter;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

    iput-object p2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    iput p3, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    iget-object v0, v0, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

    # getter for: Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;
    invoke-static {v0}, Lcom/helpshift/support/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/support/customadapters/MessagesAdapter;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    iget-object v1, v1, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget v2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$7;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSMessagesFragment;->replyReview(Ljava/lang/String;I)V

    .line 506
    :cond_0
    return-void
.end method
