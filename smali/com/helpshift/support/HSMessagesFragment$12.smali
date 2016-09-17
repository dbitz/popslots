.class Lcom/helpshift/support/HSMessagesFragment$12;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field final synthetic val$addReply:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSMessagesFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment$12;->this$0:Lcom/helpshift/support/HSMessagesFragment;

    iput-object p2, p0, Lcom/helpshift/support/HSMessagesFragment$12;->val$addReply:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 779
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment$12;->val$addReply:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 782
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
