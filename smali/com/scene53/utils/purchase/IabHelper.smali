.class public Lcom/scene53/utils/purchase/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;,
        Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;,
        Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugLog:Z

    .line 77
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z

    .line 83
    iput-boolean v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    .line 86
    iput-boolean v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    .line 90
    iput-boolean v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncInProgress:Z

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/scene53/utils/purchase/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 817
    const-string/jumbo v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string/jumbo v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 833
    rsub-int v2, p0, -0x3e8

    .line 834
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 840
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 835
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 837
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 838
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 840
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    return-void
.end method

.method consume(Lcom/scene53/utils/purchase/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/scene53/utils/purchase/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scene53/utils/purchase/IabException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 724
    const-string/jumbo v4, "consume"

    invoke-virtual {p0, v4}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 726
    iget-object v4, p1, Lcom/scene53/utils/purchase/Purchase;->mItemType:Ljava/lang/String;

    const-string/jumbo v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    new-instance v4, Lcom/scene53/utils/purchase/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/scene53/utils/purchase/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 732
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 735
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 736
    new-instance v4, Lcom/scene53/utils/purchase/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/scene53/utils/purchase/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 741
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 742
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 753
    return-void

    .line 746
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 747
    new-instance v4, Lcom/scene53/utils/purchase/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/scene53/utils/purchase/Purchase;Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/scene53/utils/purchase/Purchase;
    .param p2, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 792
    const-string/jumbo v1, "consume"

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/scene53/utils/purchase/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/scene53/utils/purchase/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 796
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scene53/utils/purchase/Purchase;",
            ">;",
            "Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/scene53/utils/purchase/Purchase;>;"
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 805
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/scene53/utils/purchase/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 807
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 11
    .param p2, "singleListener"    # Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scene53/utils/purchase/Purchase;",
            ">;",
            "Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;",
            "Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/scene53/utils/purchase/Purchase;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 1015
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1016
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1017
    .local v4, "handler":Landroid/os/Handler;
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/scene53/utils/purchase/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scene53/utils/purchase/IabHelper$3;-><init>(Lcom/scene53/utils/purchase/IabHelper;Ljava/util/List;Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    .end local v4    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v6

    .line 1050
    .local v6, "e":Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to consumeAsyncInternal. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1051
    .local v7, "msg":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/scene53/utils/purchase/IabHelper;->reportAsyncFuncError(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0, v7}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 1053
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v0, -0x3f0

    invoke-direct {v8, v0, v7}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 1054
    .local v8, "result":Lcom/scene53/utils/purchase/IabResult;
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1055
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scene53/utils/purchase/Purchase;

    invoke-interface {p2, v0, v8}, Lcom/scene53/utils/purchase/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/scene53/utils/purchase/Purchase;Lcom/scene53/utils/purchase/IabResult;)V

    .line 1057
    :cond_1
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 1058
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/scene53/utils/purchase/IabResult;>;"
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-interface {p3, p1, v9}, Lcom/scene53/utils/purchase/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    const-string/jumbo v0, "Billing service Disposing."

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->logInfo(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "sale"

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "purchaseServiceDisposed"

    invoke-static {v0, v1, v2, v3}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z

    .line 306
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 307
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 310
    :cond_0
    iput-object v3, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    .line 311
    iput-object v3, p0, Lcom/scene53/utils/purchase/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 312
    iput-object v3, p0, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 313
    iput-object v3, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    .line 314
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 182
    iput-boolean p1, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugLog:Z

    .line 183
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 176
    iput-boolean p1, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugLog:Z

    .line 177
    iput-object p2, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 178
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 894
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncInProgress:Z

    .line 896
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    iput-object p1, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mAsyncInProgress:Z

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 854
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 855
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 856
    const-string/jumbo v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 857
    const/4 v1, 0x0

    .line 860
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 859
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 860
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 862
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 864
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 870
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 871
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 872
    const-string/jumbo v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 873
    const/4 v1, 0x0

    .line 876
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 875
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 876
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 878
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 880
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 475
    iget v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mRequestCode:I

    move/from16 v0, p1

    if-eq v0, v11, :cond_0

    const/4 v11, 0x0

    .line 573
    :goto_0
    return v11

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 478
    const-string/jumbo v11, "handleActivityResult"

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/scene53/utils/purchase/IabHelper;->flagEndAsync()V

    .line 483
    if-nez p3, :cond_2

    .line 484
    const-string/jumbo v11, "Null data in IAB activity result."

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 485
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v11, -0x3ea

    const-string/jumbo v12, "Null data in IAB result"

    invoke-direct {v8, v11, v12}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 486
    .local v8, "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    .line 487
    :cond_1
    const/4 v11, 0x1

    goto :goto_0

    .line 490
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v7

    .line 491
    .local v7, "responseCode":I
    const-string/jumbo v11, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, "purchaseData":Ljava/lang/String;
    const-string/jumbo v11, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "dataSignature":Ljava/lang/String;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_a

    if-nez v7, :cond_a

    .line 495
    const-string/jumbo v11, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 496
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Purchase data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 497
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Data signature: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 498
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Extras: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 499
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Expected item type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 501
    if-eqz v6, :cond_3

    if-nez v1, :cond_5

    .line 502
    :cond_3
    const-string/jumbo v11, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 503
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Extras: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 504
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v11, -0x3f0

    const-string/jumbo v12, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v8, v11, v12}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 505
    .restart local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    .line 506
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 509
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    :cond_5
    const/4 v4, 0x0

    .line 511
    .local v4, "purchase":Lcom/scene53/utils/purchase/Purchase;
    :try_start_0
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 512
    .local v3, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "purchaseDataLength"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v11, "signatureLength"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v11, "signature"

    invoke-virtual {v3, v11, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string/jumbo v11, "purchaseData"

    invoke-virtual {v3, v11, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    :try_start_1
    invoke-static {v1}, Lcom/scene53/utils/purchase/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v9

    .line 520
    .local v9, "sigLen":[B
    const-string/jumbo v11, "signature64Length"

    array-length v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/scene53/utils/purchase/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 528
    .end local v9    # "sigLen":[B
    :goto_1
    :try_start_2
    const-string/jumbo v11, "sale"

    const-string/jumbo v12, "debug"

    const-string/jumbo v13, "javaPreVerify"

    invoke-static {v11, v12, v13, v3}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 530
    new-instance v5, Lcom/scene53/utils/purchase/Purchase;

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v5, v11, v6, v1}, Lcom/scene53/utils/purchase/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 531
    .end local v4    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    .local v5, "purchase":Lcom/scene53/utils/purchase/Purchase;
    :try_start_3
    invoke-virtual {v5}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v10

    .line 534
    .local v10, "sku":Ljava/lang/String;
    const-string/jumbo v11, "android.test.purchased"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v11, v6, v1}, Lcom/scene53/utils/purchase/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 535
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Purchase signature verification FAILED for sku "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 536
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v11, -0x3eb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Signature verification failed for sku "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 537
    .restart local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v11, v8, v5}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 538
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 522
    .end local v5    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    .end local v10    # "sku":Ljava/lang/String;
    .restart local v4    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    :catch_0
    move-exception v2

    .line 524
    .local v2, "e":Lcom/scene53/utils/purchase/Base64DecoderException;
    :try_start_4
    const-string/jumbo v11, "errorBase64"

    const-string/jumbo v12, "true"

    invoke-virtual {v3, v11, v12}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 542
    .end local v2    # "e":Lcom/scene53/utils/purchase/Base64DecoderException;
    .end local v3    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 543
    .local v2, "e":Lorg/json/JSONException;
    :goto_2
    const-string/jumbo v11, "Failed to parse purchase data."

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 545
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v11, -0x3ea

    const-string/jumbo v12, "Failed to parse purchase data."

    invoke-direct {v8, v11, v12}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 546
    .restart local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    .line 547
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 540
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    .restart local v3    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    .restart local v10    # "sku":Ljava/lang/String;
    :cond_8
    :try_start_5
    const-string/jumbo v11, "Purchase signature successfully verified."

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 550
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_9

    .line 551
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v12, Lcom/scene53/utils/purchase/IabResult;

    const/4 v13, 0x0

    const-string/jumbo v14, "Success"

    invoke-direct {v12, v13, v14}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v11, v12, v5}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    .line 573
    .end local v3    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    .end local v10    # "sku":Ljava/lang/String;
    :cond_9
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 554
    :cond_a
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_b

    .line 556
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 557
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_9

    .line 558
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const-string/jumbo v11, "Problem purchashing item."

    invoke-direct {v8, v7, v11}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 559
    .restart local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    goto :goto_3

    .line 562
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 563
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Purchase canceled - Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 564
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v11, -0x3ed

    const-string/jumbo v12, "User canceled."

    invoke-direct {v8, v11, v12}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 565
    .restart local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    goto :goto_3

    .line 568
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Purchase failed. Result code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 570
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v11, -0x3ee

    const-string/jumbo v12, "Unknown purchase response."

    invoke-direct {v8, v11, v12}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 571
    .restart local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    goto/16 :goto_3

    .line 542
    .end local v8    # "result":Lcom/scene53/utils/purchase/IabResult;
    .restart local v3    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    .restart local v4    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    goto/16 :goto_2
.end method

.method public isSetupDone()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 348
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/scene53/utils/purchase/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string/jumbo v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/scene53/utils/purchase/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 19
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 389
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 390
    const-string/jumbo v2, "launchPurchaseFlow"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v2, "launchPurchaseFlow"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v2, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    if-nez v2, :cond_1

    .line 394
    new-instance v18, Lcom/scene53/utils/purchase/IabResult;

    const/16 v2, -0x3f1

    const-string/jumbo v3, "Subscriptions are not available."

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 396
    .local v18, "result":Lcom/scene53/utils/purchase/IabResult;
    invoke-virtual/range {p0 .. p0}, Lcom/scene53/utils/purchase/IabHelper;->flagEndAsync()V

    .line 397
    if-eqz p5, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    .end local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Constructing buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "packageName":Ljava/lang/String;
    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 407
    .local v15, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sku"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v2, "itemType"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v2, "extraData"

    move-object/from16 v0, p6

    invoke-virtual {v15, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v2, "packageName"

    invoke-virtual {v15, v2, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v2, "sale"

    const-string/jumbo v3, "debug"

    const-string/jumbo v5, "prePurchase"

    invoke-static {v2, v3, v5, v15}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 414
    .local v12, "buyIntentBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/scene53/utils/purchase/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v17

    .line 415
    .local v17, "response":I
    if-eqz v17, :cond_2

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to buy item, Error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/scene53/utils/purchase/IabHelper;->flagEndAsync()V

    .line 418
    new-instance v18, Lcom/scene53/utils/purchase/IabResult;

    const-string/jumbo v2, "Unable to buy item"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 419
    .restart local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    if-eqz p5, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 433
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v12    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v15    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "response":I
    .end local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    :catch_0
    move-exception v13

    .line 434
    .local v13, "e":Landroid/content/IntentSender$SendIntentException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v13}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/scene53/utils/purchase/IabHelper;->flagEndAsync()V

    .line 438
    new-instance v18, Lcom/scene53/utils/purchase/IabResult;

    const/16 v2, -0x3ec

    const-string/jumbo v3, "Failed to send intent."

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 439
    .restart local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    if-eqz p5, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 450
    .end local v13    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    :catch_1
    move-exception v13

    .line 452
    .local v13, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to launchPurchaseFlow. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 453
    .local v14, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/scene53/utils/purchase/IabHelper;->reportAsyncFuncError(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 455
    new-instance v18, Lcom/scene53/utils/purchase/IabResult;

    const/16 v2, -0x3f0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v14}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 456
    .restart local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    if-eqz p5, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V

    goto/16 :goto_0

    .line 423
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    .end local v14    # "msg":Ljava/lang/String;
    .end local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v12    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v15    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "response":I
    :cond_2
    :try_start_3
    const-string/jumbo v2, "BUY_INTENT"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/app/PendingIntent;

    .line 424
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launching buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Request code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 425
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scene53/utils/purchase/IabHelper;->mRequestCode:I

    .line 426
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scene53/utils/purchase/IabHelper;->mPurchaseListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    .line 427
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scene53/utils/purchase/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 428
    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v5 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 441
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v12    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v15    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v17    # "response":I
    :catch_2
    move-exception v13

    .line 442
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/scene53/utils/purchase/IabHelper;->flagEndAsync()V

    .line 446
    new-instance v18, Lcom/scene53/utils/purchase/IabResult;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while starting purchase flow"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 447
    .restart local v18    # "result":Lcom/scene53/utils/purchase/IabResult;
    if-eqz p5, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Purchase;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 358
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/scene53/utils/purchase/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 363
    const-string/jumbo v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/scene53/utils/purchase/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method logInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/scene53/utils/purchase/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/scene53/utils/purchase/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scene53/utils/purchase/IabException;
        }
    .end annotation

    .prologue
    .line 577
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/scene53/utils/purchase/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/scene53/utils/purchase/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/scene53/utils/purchase/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/scene53/utils/purchase/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scene53/utils/purchase/IabException;
        }
    .end annotation

    .prologue
    .line 595
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 596
    const-string/jumbo v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 598
    :try_start_0
    new-instance v1, Lcom/scene53/utils/purchase/Inventory;

    invoke-direct {v1}, Lcom/scene53/utils/purchase/Inventory;-><init>()V

    .line 599
    .local v1, "inv":Lcom/scene53/utils/purchase/Inventory;
    const-string/jumbo v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/scene53/utils/purchase/IabHelper;->queryPurchases(Lcom/scene53/utils/purchase/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 600
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 601
    new-instance v3, Lcom/scene53/utils/purchase/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 628
    .end local v1    # "inv":Lcom/scene53/utils/purchase/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/scene53/utils/purchase/IabException;

    const/16 v4, -0x3e9

    const-string/jumbo v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/scene53/utils/purchase/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 605
    :try_start_1
    const-string/jumbo v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/scene53/utils/purchase/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/scene53/utils/purchase/Inventory;Ljava/util/List;)I

    move-result v2

    .line 606
    if-eqz v2, :cond_1

    .line 607
    new-instance v3, Lcom/scene53/utils/purchase/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    .end local v1    # "inv":Lcom/scene53/utils/purchase/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 632
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/scene53/utils/purchase/IabException;

    const/16 v4, -0x3ea

    const-string/jumbo v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 612
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/scene53/utils/purchase/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 613
    const-string/jumbo v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/scene53/utils/purchase/IabHelper;->queryPurchases(Lcom/scene53/utils/purchase/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 614
    if-eqz v2, :cond_2

    .line 615
    new-instance v3, Lcom/scene53/utils/purchase/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 618
    :cond_2
    if-eqz p1, :cond_3

    .line 619
    const-string/jumbo v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/scene53/utils/purchase/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/scene53/utils/purchase/Inventory;Ljava/util/List;)I

    move-result v2

    .line 620
    if-eqz v2, :cond_3

    .line 621
    new-instance v3, Lcom/scene53/utils/purchase/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/scene53/utils/purchase/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 626
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 705
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/scene53/utils/purchase/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V

    .line 706
    return-void
.end method

.method public queryInventoryAsync(ZLcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/scene53/utils/purchase/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V

    .line 710
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V
    .locals 10
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 666
    .local v5, "handler":Landroid/os/Handler;
    :try_start_0
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 667
    const-string/jumbo v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 668
    const-string/jumbo v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/scene53/utils/purchase/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 669
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/scene53/utils/purchase/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scene53/utils/purchase/IabHelper$2;-><init>(Lcom/scene53/utils/purchase/IabHelper;ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v6

    .line 696
    .local v6, "e":Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to queryInventoryAsync. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, "msg":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/scene53/utils/purchase/IabHelper;->reportAsyncFuncError(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, v7}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 699
    new-instance v8, Lcom/scene53/utils/purchase/IabResult;

    const/16 v0, -0x3f0

    invoke-direct {v8, v0, v7}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    .line 700
    .local v8, "result":Lcom/scene53/utils/purchase/IabResult;
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v8, v0}, Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/scene53/utils/purchase/IabResult;Lcom/scene53/utils/purchase/Inventory;)V

    goto :goto_0
.end method

.method queryPurchases(Lcom/scene53/utils/purchase/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/scene53/utils/purchase/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 902
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 903
    const/4 v12, 0x0

    .line 904
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 907
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 911
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/scene53/utils/purchase/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 912
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 913
    if-eqz v8, :cond_1

    .line 914
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 959
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 917
    .restart local v8    # "response":I
    :cond_1
    const-string/jumbo v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 920
    :cond_2
    const-string/jumbo v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 921
    const/16 v8, -0x3ea

    goto :goto_0

    .line 924
    :cond_3
    const-string/jumbo v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 926
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 928
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 931
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    .line 932
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 933
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 934
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 935
    .local v11, "sku":Ljava/lang/String;
    const-string/jumbo v13, "android.test.purchased"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scene53/utils/purchase/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/scene53/utils/purchase/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 936
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 937
    new-instance v5, Lcom/scene53/utils/purchase/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/scene53/utils/purchase/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .local v5, "purchase":Lcom/scene53/utils/purchase/Purchase;
    invoke-virtual {v5}, Lcom/scene53/utils/purchase/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 940
    const-string/jumbo v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 941
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 945
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/scene53/utils/purchase/Inventory;->addPurchase(Lcom/scene53/utils/purchase/Purchase;)V

    .line 931
    .end local v5    # "purchase":Lcom/scene53/utils/purchase/Purchase;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 948
    :cond_6
    const-string/jumbo v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 949
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 950
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 951
    const/4 v12, 0x1

    goto :goto_2

    .line 955
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_7
    const-string/jumbo v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 956
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 957
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 959
    if-eqz v12, :cond_8

    const/16 v13, -0x3eb

    :goto_3
    move v8, v13

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_3
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/scene53/utils/purchase/Inventory;Ljava/util/List;)I
    .locals 12
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/scene53/utils/purchase/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/scene53/utils/purchase/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 964
    const-string/jumbo v9, "Querying SKU details."

    invoke-virtual {p0, v9}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 965
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v7, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/scene53/utils/purchase/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 967
    if-eqz p3, :cond_1

    .line 968
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 969
    .local v5, "sku":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 970
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 976
    const-string/jumbo v9, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v9}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1005
    :cond_2
    :goto_1
    return v3

    .line 980
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 981
    .local v2, "querySkus":Landroid/os/Bundle;
    const-string/jumbo v9, "ITEM_ID_LIST"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 982
    iget-object v9, p0, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 985
    .local v6, "skuDetails":Landroid/os/Bundle;
    const-string/jumbo v9, "DETAILS_LIST"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 986
    invoke-virtual {p0, v6}, Lcom/scene53/utils/purchase/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 987
    .local v3, "response":I
    if-eqz v3, :cond_4

    .line 988
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSkuDetails() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/scene53/utils/purchase/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 992
    :cond_4
    const-string/jumbo v9, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v9}, Lcom/scene53/utils/purchase/IabHelper;->logError(Ljava/lang/String;)V

    .line 993
    const/16 v3, -0x3ea

    goto :goto_1

    .line 997
    .end local v3    # "response":I
    :cond_5
    const-string/jumbo v9, "DETAILS_LIST"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1000
    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1001
    .local v8, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/scene53/utils/purchase/SkuDetails;

    invoke-direct {v0, p1, v8}, Lcom/scene53/utils/purchase/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .local v0, "d":Lcom/scene53/utils/purchase/SkuDetails;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Got sku details: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p2, v0}, Lcom/scene53/utils/purchase/Inventory;->addSkuDetails(Lcom/scene53/utils/purchase/SkuDetails;)V

    goto :goto_2
.end method

.method reportAsyncFuncError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1068
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1069
    .local v0, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string/jumbo v1, "sale"

    const-string/jumbo v2, "debug"

    const-string/jumbo v3, "asyncError"

    invoke-static {v1, v2, v3, v0}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 1071
    return-void
.end method

.method public startSetup(Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 208
    iget-boolean v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    const-string/jumbo v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/scene53/utils/purchase/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/scene53/utils/purchase/IabHelper$1;-><init>(Lcom/scene53/utils/purchase/IabHelper;Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/scene53/utils/purchase/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    if-eqz p1, :cond_1

    .line 287
    new-instance v1, Lcom/scene53/utils/purchase/IabResult;

    const/4 v2, 0x3

    const-string/jumbo v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/scene53/utils/purchase/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/scene53/utils/purchase/IabHelper;->checkNotDisposed()V

    .line 323
    iget-boolean v0, p0, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
