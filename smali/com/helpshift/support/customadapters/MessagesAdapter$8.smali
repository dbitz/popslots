.class Lcom/helpshift/support/customadapters/MessagesAdapter$8;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

.field final synthetic val$attachmentObj:Lorg/json/JSONObject;

.field final synthetic val$item:Lcom/helpshift/support/viewstructs/HSMsg;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;Lorg/json/JSONObject;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/customadapters/MessagesAdapter;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

    iput-object p2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    iput-object p3, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$attachmentObj:Lorg/json/JSONObject;

    iput p4, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    iget v0, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

    # getter for: Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;
    invoke-static {v0}, Lcom/helpshift/support/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/support/customadapters/MessagesAdapter;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSMessagesFragment;->launchAttachment(Lcom/helpshift/support/viewstructs/HSMsg;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$item:Lcom/helpshift/support/viewstructs/HSMsg;

    iget v0, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->this$0:Lcom/helpshift/support/customadapters/MessagesAdapter;

    # getter for: Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;
    invoke-static {v0}, Lcom/helpshift/support/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/support/customadapters/MessagesAdapter;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$attachmentObj:Lorg/json/JSONObject;

    iget v2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter$8;->val$position:I

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSMessagesFragment;->downloadAdminAttachment(Lorg/json/JSONObject;II)V

    goto :goto_0
.end method
