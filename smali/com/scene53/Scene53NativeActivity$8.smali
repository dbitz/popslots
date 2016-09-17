.class Lcom/scene53/Scene53NativeActivity$8;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->purchaseProduct(Ljava/lang/String;)V
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
    .line 828
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$8;->this$0:Lcom/scene53/Scene53NativeActivity;

    iput-object p2, p0, Lcom/scene53/Scene53NativeActivity$8;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 833
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity$8;->this$0:Lcom/scene53/Scene53NativeActivity;

    # getter for: Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;
    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->access$000(Lcom/scene53/Scene53NativeActivity;)Lcom/scene53/utils/purchase/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/Scene53NativeActivity$8;->this$0:Lcom/scene53/Scene53NativeActivity;

    iget-object v2, p0, Lcom/scene53/Scene53NativeActivity$8;->val$sku:Ljava/lang/String;

    const/16 v3, 0x4749

    iget-object v4, p0, Lcom/scene53/Scene53NativeActivity$8;->this$0:Lcom/scene53/Scene53NativeActivity;

    # getter for: Lcom/scene53/Scene53NativeActivity;->mPurchaseFinishedListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;
    invoke-static {v4}, Lcom/scene53/Scene53NativeActivity;->access$100(Lcom/scene53/Scene53NativeActivity;)Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v4

    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->getIABPayload()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/scene53/utils/purchase/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 835
    return-void
.end method
