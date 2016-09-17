.class Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;
.super Landroid/os/Handler;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationPollerSuccessHandler"
.end annotation


# instance fields
.field private final conversationFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/fragments/ConversationFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/fragments/ConversationFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/fragments/ConversationFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;->conversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerSuccessHandler;->conversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/ConversationFragment;

    .line 88
    .local v0, "conversationFragment":Lcom/helpshift/support/fragments/ConversationFragment;
    if-eqz v0, :cond_0

    .line 89
    # invokes: Lcom/helpshift/support/fragments/ConversationFragment;->refreshMessages()V
    invoke-static {v0}, Lcom/helpshift/support/fragments/ConversationFragment;->access$000(Lcom/helpshift/support/fragments/ConversationFragment;)V

    .line 91
    :cond_0
    return-void
.end method
