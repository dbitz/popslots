.class public Lcom/scene53/utils/purchase/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field mCurrencyCode:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:D

.field mPriceString:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    const-string/jumbo v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/scene53/utils/purchase/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mItemType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/scene53/utils/purchase/SkuDetails;->mJson:Ljava/lang/String;

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "o":Lorg/json/JSONObject;
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mSku:Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mType:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mPriceString:Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mTitle:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mDescription:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mCurrencyCode:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "price_amount_micros"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/scene53/utils/purchase/SkuDetails;->mPrice:D

    .line 52
    const-string/jumbo v1, "SceneDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Price for itemType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/scene53/utils/purchase/SkuDetails;->mPrice:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mPrice:D

    return-wide v0
.end method

.method public getPriceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mPriceString:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/scene53/utils/purchase/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/utils/purchase/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
