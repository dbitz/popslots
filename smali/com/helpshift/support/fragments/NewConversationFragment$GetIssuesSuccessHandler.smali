.class Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;
.super Landroid/os/Handler;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetIssuesSuccessHandler"
.end annotation


# instance fields
.field private final newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/fragments/NewConversationFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 387
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 388
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 393
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/NewConversationFragment;

    .line 394
    .local v0, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/NewConversationFragment;->startNewConversation()V

    .line 397
    :cond_0
    return-void
.end method
