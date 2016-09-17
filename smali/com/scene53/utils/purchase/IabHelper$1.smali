.class Lcom/scene53/utils/purchase/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/purchase/IabHelper;->startSetup(Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/utils/purchase/IabHelper;

.field final synthetic val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/scene53/utils/purchase/IabHelper;Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iput-object p2, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    .line 226
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iget-boolean v4, v4, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    if-eqz v4, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const-string/jumbo v5, "Billing service connected."

    invoke-virtual {v4, v5}, Lcom/scene53/utils/purchase/IabHelper;->logInfo(Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v5

    iput-object v5, v4, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 229
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iget-object v4, v4, Lcom/scene53/utils/purchase/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const-string/jumbo v5, "Checking for in-app billing 3 support."

    invoke-virtual {v4, v5}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 233
    const/4 v3, 0x1

    .line 235
    .local v3, "success":Z
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iget-object v4, v4, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    const-string/jumbo v6, "inapp"

    invoke-interface {v4, v5, v1, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "response":I
    if-eqz v2, :cond_3

    .line 237
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    new-instance v5, Lcom/scene53/utils/purchase/IabResult;

    const-string/jumbo v6, "Error checking for billing v3 support."

    invoke-direct {v5, v2, v6}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/scene53/utils/purchase/IabResult;)V

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    .line 242
    const/4 v3, 0x0

    .line 246
    :cond_3
    if-eqz v3, :cond_4

    .line 248
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In-app billing version 3 supported for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iget-object v4, v4, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    const-string/jumbo v6, "subs"

    invoke-interface {v4, v5, v1, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 252
    if-nez v2, :cond_5

    .line 253
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const-string/jumbo v5, "Subscriptions AVAILABLE."

    invoke-virtual {v4, v5}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    .line 260
    :goto_1
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    if-eqz v4, :cond_0

    .line 273
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    new-instance v5, Lcom/scene53/utils/purchase/IabResult;

    const-string/jumbo v6, "Setup successful."

    invoke-direct {v5, v7, v6}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/scene53/utils/purchase/IabResult;)V

    goto/16 :goto_0

    .line 257
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/scene53/utils/purchase/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 263
    .end local v2    # "response":I
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    if-eqz v4, :cond_6

    .line 265
    iget-object v4, p0, Lcom/scene53/utils/purchase/IabHelper$1;->val$listener:Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;

    new-instance v5, Lcom/scene53/utils/purchase/IabResult;

    const/16 v6, -0x3e9

    const-string/jumbo v7, "RemoteException while setting up in-app billing."

    invoke-direct {v5, v6, v7}, Lcom/scene53/utils/purchase/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/scene53/utils/purchase/IabResult;)V

    .line 268
    :cond_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    const-string/jumbo v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/scene53/utils/purchase/IabHelper;->logInfo(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "sale"

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "purchaseServiceDisconnected"

    invoke-static {v0, v1, v2, v4}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    .line 218
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iput-boolean v3, v0, Lcom/scene53/utils/purchase/IabHelper;->mSetupDone:Z

    .line 219
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iput-boolean v3, v0, Lcom/scene53/utils/purchase/IabHelper;->mDisposed:Z

    .line 220
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iput-object v4, v0, Lcom/scene53/utils/purchase/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 221
    iget-object v0, p0, Lcom/scene53/utils/purchase/IabHelper$1;->this$0:Lcom/scene53/utils/purchase/IabHelper;

    iput-boolean v3, v0, Lcom/scene53/utils/purchase/IabHelper;->mSubscriptionsSupported:Z

    .line 222
    return-void
.end method
