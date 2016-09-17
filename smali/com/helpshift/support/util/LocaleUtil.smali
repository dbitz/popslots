.class public Lcom/helpshift/support/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/helpshift/support/util/LocaleUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/util/LocaleUtil;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/helpshift/support/HSStorage;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/util/LocaleUtil;->storage:Lcom/helpshift/support/HSStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLanguage(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v4, Lcom/helpshift/support/util/LocaleUtil;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getSdkLanguage()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "language":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 29
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 30
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 31
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-static {v2}, Lcom/helpshift/support/util/LocaleUtil;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 32
    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 34
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public static getAcceptLanguageHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    sget-object v1, Lcom/helpshift/support/util/LocaleUtil;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getSdkLanguage()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "sdkLanguage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .end local v0    # "sdkLanguage":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "languageArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .end local v0    # "languageArray":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDefaultFallbackLanguageEnabled()Z
    .locals 5

    .prologue
    .line 54
    const/4 v1, 0x1

    .line 56
    .local v1, "defaultFallbackLanguageEnabled":Z
    :try_start_0
    sget-object v3, Lcom/helpshift/support/util/LocaleUtil;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "enableDefaultFallbackLanguage"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string/jumbo v3, "enableDefaultFallbackLanguage"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    .end local v0    # "config":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/helpshift/support/util/LocaleUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isDefaultFallbackLanguageEnabled"

    invoke-static {v3, v4, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
