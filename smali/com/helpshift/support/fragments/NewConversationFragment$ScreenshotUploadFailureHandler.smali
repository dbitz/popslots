.class Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;
.super Landroid/os/Handler;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotUploadFailureHandler"
.end annotation


# instance fields
.field private final msgData:Lcom/helpshift/support/viewstructs/HSMsg;

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
.method public constructor <init>(Lcom/helpshift/support/fragments/NewConversationFragment;Lcom/helpshift/support/viewstructs/HSMsg;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/fragments/NewConversationFragment;
    .param p2, "msgData"    # Lcom/helpshift/support/viewstructs/HSMsg;

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 284
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 285
    iput-object p2, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;->msgData:Lcom/helpshift/support/viewstructs/HSMsg;

    .line 286
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/NewConversationFragment;

    .line 291
    .local v0, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;->msgData:Lcom/helpshift/support/viewstructs/HSMsg;

    iget-object v1, v1, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 293
    # invokes: Lcom/helpshift/support/fragments/NewConversationFragment;->clearScreenshot()V
    invoke-static {v0}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$300(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    .line 294
    # invokes: Lcom/helpshift/support/fragments/NewConversationFragment;->handleExit()V
    invoke-static {v0}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$400(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    .line 296
    :cond_0
    return-void
.end method
