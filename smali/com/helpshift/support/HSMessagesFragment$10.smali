.class Lcom/helpshift/support/HSMessagesFragment$10;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSMessagesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSMessagesFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$10;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$10;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    const/4 v1, 0x1

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->addListViewBottomPadding(Z)V
    invoke-static {v0, v1}, Lcom/helpshift/support/HSMessagesFragment;->access$2100(Lcom/helpshift/support/HSMessagesFragment;Z)V

    .line 718
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$10;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$2200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSStorage;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment$10;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSStorage;->setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$10;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # getter for: Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1900(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/contracts/HSMessagesListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/support/contracts/HSMessagesListener;->startNewConversation()V

    .line 720
    return-void
.end method
