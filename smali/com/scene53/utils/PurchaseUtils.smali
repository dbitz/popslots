.class public Lcom/scene53/utils/PurchaseUtils;
.super Ljava/lang/Object;
.source "PurchaseUtils.java"


# static fields
.field private static final IAB_PAYLOAD_PART1:Ljava/lang/String; = "AbcGt"

.field private static final IAB_PAYLOAD_PART2:Ljava/lang/String; = "Klfoe4"

.field private static final IAB_PAYLOAD_PART3:Ljava/lang/String; = "MCkdie3+"

.field private static final IAB_PAYLOAD_PART4:Ljava/lang/String; = "LEri8f"

.field private static final IAB_PAYLOAD_PART5:Ljava/lang/String; = "Qmcjd2P"

.field private static final IAB_PAYLOAD_PART6:Ljava/lang/String; = "lLdoPw12"

.field private static final PART1:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm9"

.field private static final PART2:Ljava/lang/String; = "pwDKcMpTkWO+rQbl7hfFYOIdB/h3BcdNEZRIw1dtyOs0swRK+h2X/"

.field private static final PART3:Ljava/lang/String; = "ntqTnAtaqDWsaEd89KWmhQ3sxQPKqWhOIYCAY5b3G6hKKkLR0HuMp"

.field private static final PART4:Ljava/lang/String; = "TZbv1uKTAwiw55vrmHy6pbycudsMOmw6wHQcRkklMhpkUbmqtTmr7M+H"

.field private static final PART5:Ljava/lang/String; = "pQYOJmGvSntG8iTbxLMzCEGlRYdyJv6SyiN0LwwqxPgCp8IJg/3m7NYQpFu"

.field private static final PART6:Ljava/lang/String; = "G8oWf1JAry8DgDRqB8a7qhNozqiG/jyZaj0SkMrW"

.field private static final PART7:Ljava/lang/String; = "Cn/bUpnFD/ff1kUaGnbN5t5nXO3342GOpOiHq1T"

.field private static final PART8:Ljava/lang/String; = "D8Wvq3QZcsJ0KrtUwSbSeIbNnjAALluXbnZyJDtwIDAQAB"

.field private static _instance:Lcom/scene53/utils/PurchaseUtils;


# instance fields
.field private mInvalidProducts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProducts:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/scene53/utils/purchase/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchases:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/scene53/utils/purchase/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/scene53/utils/PurchaseUtils;->mProducts:Landroid/support/v4/util/ArrayMap;

    .line 80
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/scene53/utils/PurchaseUtils;->mPurchases:Landroid/support/v4/util/ArrayMap;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/scene53/utils/PurchaseUtils;->mInvalidProducts:Ljava/util/HashSet;

    .line 82
    return-void
.end method

.method public static native analyticsReportInvalidProducts(Ljava/lang/String;)V
.end method

.method public static delPurchase(Ljava/lang/String;)V
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/scene53/utils/PurchaseUtils;->mPurchases:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public static get()Lcom/scene53/utils/PurchaseUtils;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/scene53/utils/PurchaseUtils;->_instance:Lcom/scene53/utils/PurchaseUtils;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/scene53/utils/PurchaseUtils;

    invoke-direct {v0}, Lcom/scene53/utils/PurchaseUtils;-><init>()V

    sput-object v0, Lcom/scene53/utils/PurchaseUtils;->_instance:Lcom/scene53/utils/PurchaseUtils;

    .line 75
    :cond_0
    sget-object v0, Lcom/scene53/utils/PurchaseUtils;->_instance:Lcom/scene53/utils/PurchaseUtils;

    return-object v0
.end method

.method public static getAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm9pwDKcMpTkWO+rQbl7hfFYOIdB/h3BcdNEZRIw1dtyOs0swRK+h2X/ntqTnAtaqDWsaEd89KWmhQ3sxQPKqWhOIYCAY5b3G6hKKkLR0HuMpTZbv1uKTAwiw55vrmHy6pbycudsMOmw6wHQcRkklMhpkUbmqtTmr7M+HpQYOJmGvSntG8iTbxLMzCEGlRYdyJv6SyiN0LwwqxPgCp8IJg/3m7NYQpFuG8oWf1JAry8DgDRqB8a7qhNozqiG/jyZaj0SkMrWCn/bUpnFD/ff1kUaGnbN5t5nXO3342GOpOiHq1TD8Wvq3QZcsJ0KrtUwSbSeIbNnjAALluXbnZyJDtwIDAQAB"

    return-object v0
.end method

.method public static getIABPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "AbcGtKlfoe4MCkdie3+LEri8fQmcjd2PlLdoPw12"

    return-object v0
.end method

.method public static getPlayServicesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchase(Ljava/lang/String;)Lcom/scene53/utils/purchase/Purchase;
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/scene53/utils/PurchaseUtils;->mPurchases:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scene53/utils/purchase/Purchase;

    return-object v0
.end method

.method public static getSkuDetails(Ljava/lang/String;)Lcom/scene53/utils/purchase/SkuDetails;
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/scene53/utils/PurchaseUtils;->mProducts:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scene53/utils/purchase/SkuDetails;

    return-object v0
.end method

.method public static isOfferValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/scene53/utils/PurchaseUtils;->mInvalidProducts:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native onProductsResponse()V
.end method

.method public static onPurchaseCompleted(Lcom/scene53/utils/purchase/Purchase;Z)V
    .locals 7
    .param p0, "p"    # Lcom/scene53/utils/purchase/Purchase;
    .param p1, "showAlert"    # Z

    .prologue
    .line 142
    const-string/jumbo v0, "Scene53"

    const-string/jumbo v1, "CAndroidPurchaseManager::onPurchaseCompleted(Purchase p, boolean showAlert)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 145
    .local v6, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "productId"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v0, "signature"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v0, "signatureLength"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v0, "purchaseData"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v0, "purchaseDataLength"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v0, "transactionId"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v0, "receipt"

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v0, "sale"

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "javaTransComplete"

    invoke-static {v0, v1, v2, v6}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 155
    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/scene53/utils/PurchaseUtils;->onTransactionCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static onPurchaseFailed(ILjava/lang/String;Z)V
    .locals 4
    .param p0, "errCode"    # I
    .param p1, "errDesc"    # Ljava/lang/String;
    .param p2, "canPurchase"    # Z

    .prologue
    .line 159
    const-string/jumbo v1, "Scene53"

    const-string/jumbo v2, "CAndroidPurchaseManager::onPurchaseFailed(int errCode, String errDesc)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 162
    .local v0, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "errDesc"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "errCode"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "canPurchase"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "sale"

    const-string/jumbo v2, "debug"

    const-string/jumbo v3, "javaTransFailed"

    invoke-static {v1, v2, v3, v0}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 167
    const-string/jumbo v2, ""

    const/16 v1, -0x3ed

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, p0, p1, v1}, Lcom/scene53/utils/PurchaseUtils;->onTransactionFailed(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static native onTransactionCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onTransactionFailed(Ljava/lang/String;ILjava/lang/String;Z)V
.end method

.method public static savePurchase(Lcom/scene53/utils/purchase/Purchase;)V
    .locals 2
    .param p0, "p"    # Lcom/scene53/utils/purchase/Purchase;

    .prologue
    .line 177
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/scene53/utils/PurchaseUtils;->mPurchases:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method


# virtual methods
.method public updateInventory(Ljava/util/List;Lcom/scene53/utils/purchase/Inventory;)V
    .locals 10
    .param p2, "inv"    # Lcom/scene53/utils/purchase/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/scene53/utils/purchase/Inventory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 90
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->onProductsResponse()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p2}, Lcom/scene53/utils/purchase/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scene53/utils/purchase/Purchase;

    .line 94
    .local v3, "p":Lcom/scene53/utils/purchase/Purchase;
    iget-object v5, p0, Lcom/scene53/utils/PurchaseUtils;->mPurchases:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    .end local v3    # "p":Lcom/scene53/utils/purchase/Purchase;
    :cond_2
    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/scene53/utils/purchase/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/scene53/utils/purchase/SkuDetails;

    move-result-object v0

    .line 99
    .local v0, "details":Lcom/scene53/utils/purchase/SkuDetails;
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received product from app store "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez v0, :cond_3

    .line 101
    iget-object v5, p0, Lcom/scene53/utils/PurchaseUtils;->mInvalidProducts:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_3
    iget-object v5, p0, Lcom/scene53/utils/PurchaseUtils;->mInvalidProducts:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v5, p0, Lcom/scene53/utils/PurchaseUtils;->mProducts:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Product title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Product description: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Product price: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/SkuDetails;->getPrice()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Product id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Product type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 114
    .end local v0    # "details":Lcom/scene53/utils/purchase/SkuDetails;
    .end local v3    # "p":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/scene53/utils/PurchaseUtils;->mInvalidProducts:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 115
    const-string/jumbo v2, ""

    .line 116
    .local v2, "invalidProductIds":Ljava/lang/String;
    iget-object v5, p0, Lcom/scene53/utils/PurchaseUtils;->mInvalidProducts:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    goto :goto_3

    .line 120
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Lcom/scene53/utils/PurchaseUtils;->analyticsReportInvalidProducts(Ljava/lang/String;)V

    .line 124
    .end local v2    # "invalidProductIds":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->onProductsResponse()V

    goto/16 :goto_0
.end method
