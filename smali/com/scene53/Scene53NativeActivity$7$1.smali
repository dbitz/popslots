.class Lcom/scene53/Scene53NativeActivity$7$1;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scene53/Scene53NativeActivity$7;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity$7;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$7$1;->this$1:Lcom/scene53/Scene53NativeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/scene53/utils/purchase/IabResult;
    .param p2, "inv"    # Lcom/scene53/utils/purchase/Inventory;

    .prologue
    .line 755
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Query products finished! result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/Scene53NativeActivity$7$1;->this$1:Lcom/scene53/Scene53NativeActivity$7;

    iget-object v1, v1, Lcom/scene53/Scene53NativeActivity$7;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Lcom/scene53/utils/PurchaseUtils;->updateInventory(Ljava/util/List;Lcom/scene53/utils/purchase/Inventory;)V

    .line 757
    return-void
.end method
