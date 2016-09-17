.class Lcom/helpshift/support/HSMessagesFragment$8;
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
    .line 689
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$8;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$8;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    # invokes: Lcom/helpshift/support/HSMessagesFragment;->resolutionAccepted()V
    invoke-static {v0}, Lcom/helpshift/support/HSMessagesFragment;->access$1300(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 693
    return-void
.end method
