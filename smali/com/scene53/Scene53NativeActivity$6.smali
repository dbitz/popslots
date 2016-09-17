.class Lcom/scene53/Scene53NativeActivity$6;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->setupIabHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/Scene53NativeActivity;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$6;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/scene53/utils/purchase/IabResult;
    .param p2, "purchase"    # Lcom/scene53/utils/purchase/Purchase;

    .prologue
    .line 712
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIabPurchaseFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->setIsNetworkEnabledOnPause(Z)V

    .line 714
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity$6;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-virtual {v0}, Lcom/scene53/Scene53NativeActivity;->checkForNonVerifiedTransactions()Z

    .line 728
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->getResponse()I

    move-result v0

    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/scene53/Scene53NativeActivity$6;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-virtual {v2}, Lcom/scene53/Scene53NativeActivity;->isPurchaseSupported()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/scene53/utils/PurchaseUtils;->onPurchaseFailed(ILjava/lang/String;Z)V

    .line 719
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error purchasing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/scene53/utils/purchase/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->getIABPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Purchased item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {p2}, Lcom/scene53/utils/PurchaseUtils;->savePurchase(Lcom/scene53/utils/purchase/Purchase;)V

    .line 724
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/scene53/utils/PurchaseUtils;->onPurchaseCompleted(Lcom/scene53/utils/purchase/Purchase;Z)V

    goto :goto_0

    .line 726
    :cond_2
    const-string/jumbo v0, "Scene53"

    const-string/jumbo v1, "Invalid purchase or developer payload for purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
