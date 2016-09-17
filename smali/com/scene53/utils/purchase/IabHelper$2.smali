.class Lcom/scene53/utils/purchase/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/purchase/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/utils/purchase/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/scene53/utils/purchase/IabHelper;ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/scene53/utils/purchase/IabHelper$2;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iput-boolean p2, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$listener:Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 671
    new-instance v3, Lcom/scene53/utils/purchase/IabResult;

    const/4 v5, 0x0

    const-string/jumbo v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 672
    .local v3, "result":Lcom/scene53/utils/purchase/IabResult;
    const/4 v1, 0x0

    .line 674
    .local v1, "inv":Lcom/scene53/utils/purchase/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/scene53/utils/purchase/IabHelper$2;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iget-boolean v6, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/scene53/utils/purchase/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/scene53/utils/purchase/Inventory;
    :try_end_0
    .catch Lcom/scene53/utils/purchase/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 680
    :goto_0
    iget-object v5, p0, Lcom/scene53/utils/purchase/IabHelper$2;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    invoke-virtual {v5}, Lcom/scene53/utils/purchase/IabHelper;->flagEndAsync()V

    .line 682
    move-object v4, v3

    .line 683
    .local v4, "result_f":Lcom/scene53/utils/purchase/IabResult;
    move-object v2, v1

    .line 684
    .local v2, "inv_f":Lcom/scene53/utils/purchase/Inventory;
    iget-object v5, p0, Lcom/scene53/utils/purchase/IabHelper$2;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iget-boolean v5, v5, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$listener:Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 685
    iget-object v5, p0, Lcom/scene53/utils/purchase/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/scene53/utils/purchase/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/scene53/utils/purchase/IabHelper$2$1;-><init>(Lcom/scene53/utils/purchase/IabHelper$2;Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    :cond_0
    return-void

    .line 676
    .end local v2    # "inv_f":Lcom/scene53/utils/purchase/Inventory;
    .end local v4    # "result_f":Lcom/scene53/utils/purchase/IabResult;
    :catch_0
    move-exception v0

    .line 677
    .local v0, "ex":Lcom/scene53/utils/purchase/IabException;
    invoke-virtual {v0}, Lcom/scene53/utils/purchase/IabException;->getResult()Lcom/scene53/utils/purchase/IabResult;

    move-result-object v3

    goto :goto_0
.end method
