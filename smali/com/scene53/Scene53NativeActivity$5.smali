.class Lcom/scene53/Scene53NativeActivity$5;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;


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
    .line 695
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$5;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/scene53/utils/purchase/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/scene53/utils/purchase/IabResult;

    .prologue
    .line 697
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problem setting up In-app Billing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 703
    .local v0, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "success"

    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->isSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string/jumbo v1, "response"

    invoke-virtual {p1}, Lcom/scene53/utils/purchase/IabResult;->getResponse()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string/jumbo v1, "playServicesVersion"

    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->getPlayServicesVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string/jumbo v1, "sale"

    const-string/jumbo v2, "debug"

    const-string/jumbo v3, "purchaseServiceSetup"

    invoke-static {v1, v2, v3, v0}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 708
    return-void
.end method
