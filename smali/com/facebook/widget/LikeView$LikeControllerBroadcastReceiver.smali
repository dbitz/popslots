.class Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeControllerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/LikeView;
    .param p2, "x1"    # Lcom/facebook/widget/LikeView$1;

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 679
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "intentAction":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 681
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v3, 0x1

    .line 682
    .local v3, "shouldRespond":Z
    if-eqz v1, :cond_1

    .line 684
    const-string/jumbo v4, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "broadcastObjectId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/widget/LikeView;->access$600(Lcom/facebook/widget/LikeView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 689
    .end local v0    # "broadcastObjectId":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 704
    :cond_2
    :goto_1
    return-void

    .line 685
    .restart local v0    # "broadcastObjectId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 693
    .end local v0    # "broadcastObjectId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 694
    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # invokes: Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V
    invoke-static {v4}, Lcom/facebook/widget/LikeView;->access$700(Lcom/facebook/widget/LikeView;)V

    goto :goto_1

    .line 695
    :cond_5
    const-string/jumbo v4, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 696
    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;
    invoke-static {v4}, Lcom/facebook/widget/LikeView;->access$800(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 697
    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;
    invoke-static {v4}, Lcom/facebook/widget/LikeView;->access$800(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/facebook/widget/LikeView$OnErrorListener;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    .line 699
    :cond_6
    const-string/jumbo v4, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    iget-object v5, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/widget/LikeView;->access$600(Lcom/facebook/widget/LikeView;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/facebook/widget/LikeView;->access$900(Lcom/facebook/widget/LikeView;Ljava/lang/String;)V

    .line 702
    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # invokes: Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V
    invoke-static {v4}, Lcom/facebook/widget/LikeView;->access$700(Lcom/facebook/widget/LikeView;)V

    goto :goto_1
.end method
