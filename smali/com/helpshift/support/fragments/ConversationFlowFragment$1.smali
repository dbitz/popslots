.class Lcom/helpshift/support/fragments/ConversationFlowFragment$1;
.super Ljava/lang/Object;
.source "ConversationFlowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/ConversationFlowFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/fragments/ConversationFlowFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/ConversationFlowFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/fragments/ConversationFlowFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment$1;->this$0:Lcom/helpshift/support/fragments/ConversationFlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment$1;->this$0:Lcom/helpshift/support/fragments/ConversationFlowFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/util/PermissionUtil;->showSettingsPage(Landroid/content/Context;)V

    .line 166
    return-void
.end method
