.class Lcom/scene53/Scene53NativeActivity$9$1;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scene53/Scene53NativeActivity$9;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity$9;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$9$1;->this$1:Lcom/scene53/Scene53NativeActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/scene53/utils/purchase/Purchase;Lcom/scene53/utils/purchase/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/scene53/utils/purchase/Purchase;
    .param p2, "result"    # Lcom/scene53/utils/purchase/IabResult;

    .prologue
    .line 854
    invoke-virtual {p2}, Lcom/scene53/utils/purchase/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error consuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_0
    return-void

    .line 858
    :cond_0
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Consumed item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scene53/utils/PurchaseUtils;->delPurchase(Ljava/lang/String;)V

    goto :goto_0
.end method
