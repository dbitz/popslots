.class Lcom/scene53/Scene53NativeActivity$9;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->consumeProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/Scene53NativeActivity;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$9;->this$0:Lcom/scene53/Scene53NativeActivity;

    iput-object p2, p0, Lcom/scene53/Scene53NativeActivity$9;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity$9;->this$0:Lcom/scene53/Scene53NativeActivity;

    # getter for: Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;
    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->access$000(Lcom/scene53/Scene53NativeActivity;)Lcom/scene53/utils/purchase/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/Scene53NativeActivity$9;->val$sku:Ljava/lang/String;

    invoke-static {v1}, Lcom/scene53/utils/PurchaseUtils;->getPurchase(Ljava/lang/String;)Lcom/scene53/utils/purchase/Purchase;

    move-result-object v1

    new-instance v2, Lcom/scene53/Scene53NativeActivity$9$1;

    invoke-direct {v2, p0}, Lcom/scene53/Scene53NativeActivity$9$1;-><init>(Lcom/scene53/Scene53NativeActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper;->consumeAsync(Lcom/scene53/utils/purchase/Purchase;Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;)V

    .line 863
    return-void
.end method
