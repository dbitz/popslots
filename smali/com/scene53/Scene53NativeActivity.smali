.class public Lcom/scene53/Scene53NativeActivity;
.super Landroid/app/NativeActivity;
.source "Scene53NativeActivity.java"


# static fields
.field private static final KEY_USER_LEFT:Ljava/lang/String; = "didUserLeave"

.field private static final PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_PURCHASE:I = 0x4749

.field private static s_instance:Lcom/scene53/Scene53NativeActivity;


# instance fields
.field private mHelper:Lcom/scene53/utils/purchase/IabHelper;

.field private mPurchaseFinishedListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

.field private performedFullScreenCalc:Z

.field private prefs:Landroid/content/SharedPreferences;

.field private shouldRunFullScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "public_profile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "user_birthday"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/scene53/Scene53NativeActivity;->PERMISSIONS:Ljava/util/List;

    .line 72
    const-string/jumbo v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "BigCasino"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scene53/Scene53NativeActivity;->performedFullScreenCalc:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scene53/Scene53NativeActivity;->shouldRunFullScreen:Z

    .line 83
    const-string/jumbo v0, "Scene53"

    const-string/jumbo v1, "Creating Scene53NativeActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sput-object p0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    .line 86
    sput-object p0, Lcom/scene53/Scene53NativeActivity;->s_instance:Lcom/scene53/Scene53NativeActivity;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/scene53/Scene53NativeActivity;)Lcom/scene53/utils/purchase/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/scene53/Scene53NativeActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scene53/Scene53NativeActivity;)Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/scene53/Scene53NativeActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mPurchaseFinishedListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method

.method public static checkIfNeedToUseFullScreen(Landroid/content/Context;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static/range {p0 .. p0}, Lcom/scene53/Scene53NativeActivity;->getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 218
    .local v2, "appUsableSize":Landroid/graphics/Point;
    invoke-static/range {p0 .. p0}, Lcom/scene53/Scene53NativeActivity;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 220
    .local v4, "realScreenSize":Landroid/graphics/Point;
    const/4 v11, 0x3

    new-array v10, v11, [D

    fill-array-data v10, :array_0

    .line 222
    .local v10, "supportedAspectRatios":[D
    iget v11, v4, Landroid/graphics/Point;->x:I

    int-to-double v0, v11

    move-wide/from16 v16, v0

    iget v11, v4, Landroid/graphics/Point;->y:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v6, v16, v18

    .line 223
    .local v6, "reelAspectRatio":D
    iget v11, v2, Landroid/graphics/Point;->x:I

    int-to-double v0, v11

    move-wide/from16 v16, v0

    iget v11, v2, Landroid/graphics/Point;->y:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v12, v16, v18

    .line 225
    .local v12, "usableAspectRatio":D
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 226
    .local v8, "reelMinDistance":D
    const-wide v14, 0x408f400000000000L    # 1000.0

    .line 227
    .local v14, "usableMinDistance":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v10

    if-ge v3, v11, :cond_2

    .line 229
    aget-wide v16, v10, v3

    sub-double v16, v6, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v11, v16, v8

    if-gez v11, :cond_0

    .line 231
    aget-wide v16, v10, v3

    sub-double v16, v6, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 233
    :cond_0
    aget-wide v16, v10, v3

    sub-double v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v11, v16, v14

    if-gez v11, :cond_1

    .line 235
    aget-wide v16, v10, v3

    sub-double v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 227
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v5, 0x1

    .line 240
    .local v5, "shouldUseReel":Z
    cmpg-double v11, v14, v8

    if-gez v11, :cond_3

    .line 242
    const/4 v5, 0x0

    .line 245
    :cond_3
    return v5

    .line 220
    :array_0
    .array-data 8
        0x3ffc6e9780000000L    # 1.7769999504089355
        0x3ff553f7c0000000L    # 1.3329999446868896
        0x3ff8000000000000L    # 1.5
    .end array-data
.end method

.method public static getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 251
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 253
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 254
    return-object v1
.end method

.method public static native getFacebookApplicationId()Ljava/lang/String;
.end method

.method public static getNavigationBarSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/scene53/Scene53NativeActivity;->getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 200
    .local v0, "appUsableSize":Landroid/graphics/Point;
    invoke-static {p0}, Lcom/scene53/Scene53NativeActivity;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 203
    .local v1, "realScreenSize":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_0

    .line 204
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 213
    :goto_0
    return-object v2

    .line 208
    :cond_0
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_1

    .line 209
    new-instance v2, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public static getNetworkReachabilityStatus()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 671
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/scene53/Scene53App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 674
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 675
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 682
    :goto_0
    return v2

    .line 679
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 682
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 259
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 260
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 261
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 263
    .local v1, "size":Landroid/graphics/Point;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 272
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 267
    :try_start_0
    const-class v3, Landroid/view/Display;

    const-string/jumbo v4, "getRawWidth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 268
    const-class v3, Landroid/view/Display;

    const-string/jumbo v4, "getRawHeight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public static native handleOpenUrl(Ljava/lang/String;)V
.end method

.method public static native isDEBUG()Z
.end method

.method public static logException(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 436
    return-void
.end method

.method public static native onFacebookLogin(Z)V
.end method

.method public static native setAppCrashed(Z)V
.end method

.method public static native setExternalFilesDir(Ljava/lang/String;)V
.end method

.method public static native setInternalFilesDir(Ljava/lang/String;)V
.end method

.method public static native setIsNetworkEnabledOnPause(Z)V
.end method

.method public static native setNotificationData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setPushNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native settmpdir(Ljava/lang/String;)V
.end method

.method private setupIabHelper()V
    .locals 3

    .prologue
    .line 693
    new-instance v0, Lcom/scene53/utils/purchase/IabHelper;

    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->getAPIKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/scene53/utils/purchase/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    .line 694
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    const/4 v1, 0x1

    const-string/jumbo v2, "Scene53"

    invoke-virtual {v0, v1, v2}, Lcom/scene53/utils/purchase/IabHelper;->enableDebugLogging(ZLjava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    new-instance v1, Lcom/scene53/Scene53NativeActivity$5;

    invoke-direct {v1, p0}, Lcom/scene53/Scene53NativeActivity$5;-><init>(Lcom/scene53/Scene53NativeActivity;)V

    invoke-virtual {v0, v1}, Lcom/scene53/utils/purchase/IabHelper;->startSetup(Lcom/scene53/utils/purchase/IabHelper$OnIabSetupFinishedListener;)V

    .line 710
    new-instance v0, Lcom/scene53/Scene53NativeActivity$6;

    invoke-direct {v0, p0}, Lcom/scene53/Scene53NativeActivity$6;-><init>(Lcom/scene53/Scene53NativeActivity;)V

    iput-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mPurchaseFinishedListener:Lcom/scene53/utils/purchase/IabHelper$OnIabPurchaseFinishedListener;

    .line 731
    return-void
.end method


# virtual methods
.method public checkForNonVerifiedTransactions()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 770
    const-string/jumbo v7, "Scene53"

    const-string/jumbo v8, "CAndroidPurchaseManager Scene53NativeActivity::checkForNonVerifiedTransactions"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->isPurchaseSupported()Z

    move-result v7

    if-nez v7, :cond_0

    .line 818
    :goto_0
    return v1

    .line 776
    :cond_0
    const/4 v1, 0x0

    .line 778
    .local v1, "hasTransactions":Z
    :try_start_0
    iget-object v7, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/scene53/utils/purchase/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/scene53/utils/purchase/Inventory;

    move-result-object v3

    .line 779
    .local v3, "inv":Lcom/scene53/utils/purchase/Inventory;
    if-eqz v3, :cond_2

    .line 780
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->get()Lcom/scene53/utils/PurchaseUtils;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Lcom/scene53/utils/PurchaseUtils;->updateInventory(Ljava/util/List;Lcom/scene53/utils/purchase/Inventory;)V

    .line 781
    invoke-virtual {v3}, Lcom/scene53/utils/purchase/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scene53/utils/purchase/Purchase;

    .line 782
    .local v4, "p":Lcom/scene53/utils/purchase/Purchase;
    const-string/jumbo v7, "Scene53"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CAndroidPurchaseManager Found non-verified transaction "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getPurchaseState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getPurchaseState()I

    move-result v7

    if-nez v7, :cond_1

    .line 784
    const/4 v1, 0x1

    .line 785
    const/4 v6, 0x0

    .line 787
    .local v6, "verified":Z
    invoke-static {}, Lcom/scene53/utils/PurchaseUtils;->getAPIKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/scene53/utils/purchase/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 788
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/scene53/utils/PurchaseUtils;->onPurchaseCompleted(Lcom/scene53/utils/purchase/Purchase;Z)V

    .line 789
    const/4 v6, 0x1

    .line 798
    :goto_2
    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 799
    .local v5, "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "verified"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string/jumbo v7, "sku"

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string/jumbo v7, "signature"

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v7, "purchaseData"

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v7, "purchaseDataLength"

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v7, "signatureLength"

    invoke-virtual {v4}, Lcom/scene53/utils/purchase/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v7, "sale"

    const-string/jumbo v8, "debug"

    const-string/jumbo v9, "pendingPurchaseVerification"

    invoke-static {v7, v8, v9, v5}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V
    :try_end_0
    .catch Lcom/scene53/utils/purchase/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 809
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "inv":Lcom/scene53/utils/purchase/Inventory;
    .end local v4    # "p":Lcom/scene53/utils/purchase/Purchase;
    .end local v5    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "verified":Z
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Lcom/scene53/utils/purchase/IabException;
    const-string/jumbo v7, "Scene53"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CAndroidPurchaseManager: Unable to check for non verified transactions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/IabException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v0}, Lcom/scene53/utils/purchase/IabException;->printStackTrace()V

    .line 815
    .end local v0    # "e":Lcom/scene53/utils/purchase/IabException;
    :cond_2
    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 816
    .restart local v5    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "hasTransactions"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string/jumbo v7, "sale"

    const-string/jumbo v8, "debug"

    const-string/jumbo v9, "checkForNonVerifiedTransactions"

    invoke-static {v7, v8, v9, v5}, Lcom/scene53/utils/Utils;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/util/ArrayMap;)V

    goto/16 :goto_0

    .line 795
    .end local v5    # "params":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "inv":Lcom/scene53/utils/purchase/Inventory;
    .restart local v4    # "p":Lcom/scene53/utils/purchase/Purchase;
    .restart local v6    # "verified":Z
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public clearToken()V
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 511
    return-void
.end method

.method public consumeProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 841
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CAndroidPurchaseManager Scene53NativeActivity::consumeProduct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->isPurchaseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 846
    :cond_0
    new-instance v0, Lcom/scene53/Scene53NativeActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/scene53/Scene53NativeActivity$9;-><init>(Lcom/scene53/Scene53NativeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scene53/Scene53NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public facebookLogin()V
    .locals 8

    .prologue
    .line 473
    invoke-static {}, Lcom/scene53/Scene53NativeActivity;->getFacebookApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "applicationId":Ljava/lang/String;
    const-string/jumbo v5, "Scene53"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "facebookLogin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 476
    .local v2, "currentSession":Lcom/facebook/Session;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 477
    :cond_0
    new-instance v5, Lcom/facebook/Session$Builder;

    invoke-direct {v5, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v4

    .line 478
    .local v4, "session":Lcom/facebook/Session;
    invoke-static {v4}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 479
    move-object v2, v4

    .line 481
    .end local v4    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 482
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/scene53/Scene53NativeActivity;->onFacebookLogin(Z)V

    .line 502
    :goto_0
    return-void

    .line 484
    :cond_2
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 485
    .local v3, "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v5, Lcom/scene53/Scene53NativeActivity;->PERMISSIONS:Ljava/util/List;

    invoke-virtual {v3, v5}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 486
    new-instance v1, Lcom/scene53/Scene53NativeActivity$4;

    invoke-direct {v1, p0}, Lcom/scene53/Scene53NativeActivity$4;-><init>(Lcom/scene53/Scene53NativeActivity;)V

    .line 499
    .local v1, "callback":Lcom/facebook/Session$StatusCallback;
    invoke-virtual {v3, v1}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 500
    invoke-virtual {v2, v3}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 373
    const-string/jumbo v0, "didUserLeave"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scene53/Scene53NativeActivity;->setBoolPref(Ljava/lang/String;Z)V

    .line 374
    invoke-super {p0}, Landroid/app/NativeActivity;->finish()V

    .line 375
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 515
    .local v0, "session":Lcom/facebook/Session;
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scene53/Scene53App;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolPref(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 574
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExternalFilesDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/scene53/Scene53NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "external":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getFilesDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/scene53/Scene53NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, "external":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFreeMemory()F
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 611
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Lcom/scene53/Scene53NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 612
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 613
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-float v2, v2

    return v2
.end method

.method public getInternalFilesDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongPref(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 657
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 658
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 659
    .local v3, "stringRes":I
    const-string/jumbo v4, ""

    .line 660
    .local v4, "value":Ljava/lang/String;
    if-lez v3, :cond_0

    .line 661
    invoke-virtual {p0, v3}, Lcom/scene53/Scene53NativeActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 667
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "stringRes":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 664
    :catch_0
    move-exception v2

    .line 665
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Scene53"

    const-string/jumbo v6, "Unable to load metadata"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public getOpenUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 440
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 441
    const-string/jumbo v2, "Scene53"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got openUrl from Intent data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "OPEN_URL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "openUrlExtra":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 446
    const-string/jumbo v2, "Scene53"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got openUrl from Intent extra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getStringPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 596
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Lcom/scene53/Scene53NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 597
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 599
    const-wide/16 v2, 0x0

    .line 600
    .local v2, "totalMem":J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 601
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 605
    :goto_0
    const-wide/32 v4, 0x100000

    div-long v4, v2, v4

    return-wide v4

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getTotalMemoryPreJB()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getTotalMemoryPreJB()J
    .locals 14

    .prologue
    .line 633
    const-string/jumbo v10, "/proc/meminfo"

    .line 636
    .local v10, "str1":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 638
    .local v4, "initial_memory":J
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 639
    .local v8, "localFileReader":Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v12, 0x2000

    invoke-direct {v7, v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 640
    .local v7, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 641
    .local v11, "str2":Ljava/lang/String;
    const-string/jumbo v12, "\\s+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "arrayOfString":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v9, v0, v3

    .line 643
    .local v9, "num":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 646
    .end local v9    # "num":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/lit16 v12, v12, 0x400

    int-to-long v4, v12

    .line 647
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v12, v4

    .line 650
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "arrayOfString":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "localFileReader":Ljava/io/FileReader;
    .end local v11    # "str2":Ljava/lang/String;
    :goto_1
    return-wide v12

    .line 649
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/io/IOException;
    const-wide/16 v12, -0x1

    goto :goto_1
.end method

.method public getUsedMemory()F
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {}, Lcom/scene53/Scene53NativeActivity;->isDEBUG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    const/4 v2, 0x0

    .line 629
    :goto_0
    return v2

    .line 627
    :cond_0
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long v0, v4, v6

    .line 628
    .local v0, "total":J
    const-wide/16 v4, 0x400

    div-long v4, v0, v4

    long-to-float v2, v4

    .line 629
    .local v2, "totalF":F
    goto :goto_0
.end method

.method public initCrashlytics()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 393
    const-string/jumbo v3, "didUserLeave"

    invoke-virtual {p0, v3, v7}, Lcom/scene53/Scene53NativeActivity;->getBoolPref(Ljava/lang/String;Z)Z

    move-result v2

    .line 394
    .local v2, "userLeft":Z
    const-string/jumbo v3, "didUserLeave"

    invoke-virtual {p0, v3, v6}, Lcom/scene53/Scene53NativeActivity;->setBoolPref(Ljava/lang/String;Z)V

    .line 396
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    .line 398
    .local v0, "core":Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    if-nez v2, :cond_0

    .line 399
    new-instance v1, Lcom/scene53/Scene53NativeActivity$2;

    invoke-direct {v1, p0}, Lcom/scene53/Scene53NativeActivity$2;-><init>(Lcom/scene53/Scene53NativeActivity;)V

    .line 405
    .local v1, "listener":Lcom/crashlytics/android/core/CrashlyticsListener;
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    .line 408
    .end local v1    # "listener":Lcom/crashlytics/android/core/CrashlyticsListener;
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lio/fabric/sdk/android/Kit;

    new-instance v4, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v4}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v4}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v4, v3, v7

    invoke-static {p0, v3}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 410
    if-nez v2, :cond_1

    .line 411
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/scene53/Scene53NativeActivity$3;

    invoke-direct {v4, p0}, Lcom/scene53/Scene53NativeActivity$3;-><init>(Lcom/scene53/Scene53NativeActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 431
    :cond_1
    const-string/jumbo v3, "Scene53"

    const-string/jumbo v4, "Crashlytics initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public isLoggedInToFacebook()Z
    .locals 2

    .prologue
    .line 505
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 506
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPurchaseSupported()Z
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/IabHelper;->isSetupDone()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 524
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 525
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/scene53/utils/purchase/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 527
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 528
    .local v0, "FBSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 532
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getFilesDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/scene53/Scene53NativeActivity;->settmpdir(Ljava/lang/String;)V

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getInternalFilesDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "internalFilesDir":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getExternalFilesDirectory()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "externalFilesDir":Ljava/lang/String;
    const-string/jumbo v8, ""

    if-eq v0, v8, :cond_0

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    invoke-static {v3}, Lcom/scene53/Scene53NativeActivity;->setInternalFilesDir(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->setExternalFilesDir(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    .line 108
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getOpenUrl()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "openUrl":Ljava/lang/String;
    const-string/jumbo v8, "Scene53"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handling URL intent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v5, :cond_1

    .line 111
    invoke-static {v5}, Lcom/scene53/Scene53NativeActivity;->handleOpenUrl(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v8}, Lbolts/AppLinks;->getTargetUrlFromInboundIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v7

    .line 114
    .local v7, "targetUrl":Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 115
    const-string/jumbo v8, "Scene53"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handling AppLinks Target URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/scene53/Scene53NativeActivity;->handleOpenUrl(Ljava/lang/String;)V

    .line 118
    :cond_2
    invoke-static {}, Lcom/scene53/gcm/GCMUtils;->getRegId()V

    .line 120
    invoke-direct {p0}, Lcom/scene53/Scene53NativeActivity;->setupIabHelper()V

    .line 140
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v8, "Scene53"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Intent action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string/jumbo v8, "Scene53"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Intent data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 144
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    .local v4, "k":Ljava/lang/String;
    const-string/jumbo v8, "Scene53"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Intent Extra: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v6

    .line 150
    .local v6, "session":Lcom/facebook/Session;
    if-nez v6, :cond_5

    .line 151
    if-eqz p1, :cond_6

    .line 152
    invoke-static {p0, v11, v11, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v6

    .line 156
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v8

    sget-object v9, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v8, v9}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 157
    invoke-virtual {v6, v11}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 159
    :cond_4
    invoke-static {v6}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 162
    :cond_5
    return-void

    .line 154
    :cond_6
    new-instance v8, Lcom/facebook/Session$Builder;

    invoke-direct {v8, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/scene53/Scene53NativeActivity;->getFacebookApplicationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v6

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    invoke-virtual {v0}, Lcom/scene53/utils/purchase/IabHelper;->dispose()V

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;

    .line 368
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 369
    return-void
.end method

.method protected onResume()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 323
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->setViewVisibilityFlags()V

    .line 325
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 386
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 387
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 388
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 390
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 330
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scene53/Scene53App;->setActive(Z)V

    .line 331
    invoke-static {p0}, Lcom/scene53/utils/NetworkMonitor;->onNetworkChanged(Landroid/content/Context;)V

    .line 332
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scene53/Scene53App;->setActive(Z)V

    .line 351
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 352
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/NativeActivity;->onUserLeaveHint()V

    .line 381
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 337
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->setViewVisibilityFlags()V

    .line 346
    :cond_0
    return-void
.end method

.method public parseIntentNotificationData()V
    .locals 8

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 458
    .local v3, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    sget-object v6, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v6, "pushNotif"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 461
    sget-object v6, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_AGENCY:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "agencyString":Ljava/lang/String;
    sget-object v6, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_CAMPAIGN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "campaignString":Ljava/lang/String;
    sget-object v6, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_AD_SET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "adSetNameString":Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/scene53/Scene53NativeActivity;->setPushNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v0    # "adSetNameString":Ljava/lang/String;
    .end local v1    # "agencyString":Ljava/lang/String;
    .end local v2    # "campaignString":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 466
    .restart local v5    # "type":Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/scene53/utils/NotificationUtils;->NOTIFICATION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "name":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/scene53/Scene53NativeActivity;->setNotificationData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public purchaseProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 822
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CAndroidPurchaseManager Scene53NativeActivity::purchaseProduct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->isPurchaseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 827
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->setIsNetworkEnabledOnPause(Z)V

    .line 828
    new-instance v0, Lcom/scene53/Scene53NativeActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/scene53/Scene53NativeActivity$8;-><init>(Lcom/scene53/Scene53NativeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scene53/Scene53NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 4
    .param p1, "productIds"    # [Ljava/lang/String;

    .prologue
    .line 738
    const-string/jumbo v1, "Scene53"

    const-string/jumbo v2, "CAndroidPurchaseManager Scene53NativeActivity::queryProducts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 741
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->isPurchaseSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    const-string/jumbo v1, "Scene53"

    const-string/jumbo v2, "Query products while purchase not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    return-void

    .line 745
    :cond_0
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query products for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " products started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v1, Lcom/scene53/Scene53NativeActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/scene53/Scene53NativeActivity$7;-><init>(Lcom/scene53/Scene53NativeActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/scene53/Scene53NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected runWithFullScreen()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 196
    return-void
.end method

.method protected runWithNavigationBar()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scene53/Scene53NativeActivity$1;

    invoke-direct {v1, p0}, Lcom/scene53/Scene53NativeActivity$1;-><init>(Lcom/scene53/Scene53NativeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 294
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 295
    return-void
.end method

.method public setBoolPref(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    return-void
.end method

.method public setBoolPrefDefault(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/scene53/Scene53NativeActivity;->setBoolPref(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setLongPref(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 586
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 587
    return-void
.end method

.method public setStringPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 579
    return-void
.end method

.method protected setViewVisibilityFlags()V
    .locals 2

    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 300
    iget-boolean v0, p0, Lcom/scene53/Scene53NativeActivity;->performedFullScreenCalc:Z

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scene53/Scene53NativeActivity;->performedFullScreenCalc:Z

    .line 303
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->checkIfNeedToUseFullScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/scene53/Scene53NativeActivity;->shouldRunFullScreen:Z

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/scene53/Scene53NativeActivity;->shouldRunFullScreen:Z

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->runWithFullScreen()V

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->runWithNavigationBar()V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/scene53/Scene53NativeActivity;->runWithNavigationBar()V

    goto :goto_0
.end method
