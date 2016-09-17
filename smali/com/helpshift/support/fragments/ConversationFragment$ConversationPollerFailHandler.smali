.class Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;
.super Landroid/os/Handler;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationPollerFailHandler"
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
    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;->conversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/helpshift/support/fragments/ConversationFragment$ConversationPollerFailHandler;->conversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/ConversationFragment;

    .line 104
    .local v0, "conversationFragment":Lcom/helpshift/support/fragments/ConversationFragment;
    if-eqz v0, :cond_0

    .line 107
    :cond_0
    return-void
.end method
