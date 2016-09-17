.class public Lcom/helpshift/util/ConnectivityUtil;
.super Ljava/lang/Object;
.source "ConnectivityUtil.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultBatchSize:I

.field private final maximumBatchSize:I


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 0
    .param p1, "defaultBatchSize"    # I
    .param p2, "maximumBatchSize"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/helpshift/util/ConnectivityUtil;->defaultBatchSize:I

    .line 16
    iput p2, p0, Lcom/helpshift/util/ConnectivityUtil;->maximumBatchSize:I

    .line 17
    iput-object p3, p0, Lcom/helpshift/util/ConnectivityUtil;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getBatchSize()I
    .locals 6

    .prologue
    .line 21
    iget v2, p0, Lcom/helpshift/util/ConnectivityUtil;->defaultBatchSize:I

    .line 23
    .local v2, "returnBatchSize":I
    iget-object v4, p0, Lcom/helpshift/util/ConnectivityUtil;->context:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    .line 24
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 25
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v4, p0, Lcom/helpshift/util/ConnectivityUtil;->context:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 26
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 27
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 29
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 32
    :pswitch_0
    iget v2, p0, Lcom/helpshift/util/ConnectivityUtil;->maximumBatchSize:I

    .line 33
    goto :goto_0

    .line 35
    :pswitch_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 42
    :sswitch_0
    iget v4, p0, Lcom/helpshift/util/ConnectivityUtil;->defaultBatchSize:I

    div-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 38
    :sswitch_1
    iget v4, p0, Lcom/helpshift/util/ConnectivityUtil;->defaultBatchSize:I

    mul-int/lit8 v2, v4, 0x4

    .line 39
    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xd -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method
