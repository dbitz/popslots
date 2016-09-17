.class public final Lcom/helpshift/support/res/values/HSConfig;
.super Ljava/lang/Object;
.source "HSConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static configData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static themeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    .line 21
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "Help"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v1, "sp"

    const-string/jumbo v2, "Describe your problem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v1, "hc"

    const-string/jumbo v2, "516B90"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v1, "tc"

    const-string/jumbo v2, "535353"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v1, "hl"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    .line 30
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "bcl"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "dbgl"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "rurl"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "t"

    sget-object v2, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "pfe"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "pr"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "rne"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "dia"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "csat"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "san"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateConfig(Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "config"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "rurl"

    const-string/jumbo v3, "rurl"

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "bcl"

    const-string/jumbo v3, "bcl"

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "dbgl"

    const-string/jumbo v3, "dbgl"

    const/16 v4, 0x19

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "pr"

    const-string/jumbo v3, "pr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "pfe"

    const-string/jumbo v3, "pfe"

    invoke-virtual {p0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "rne"

    const-string/jumbo v3, "rne"

    invoke-virtual {p0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "dia"

    const-string/jumbo v3, "dia"

    invoke-virtual {p0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "csat"

    const-string/jumbo v3, "csat"

    invoke-virtual {p0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v2, "san"

    const-string/jumbo v3, "san"

    invoke-virtual {p0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :try_start_0
    const-string/jumbo v1, "t"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string/jumbo v1, "t"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/res/values/HSConfig;->updateThemeData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateThemeData(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "theme"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v2, "sp"

    const-string/jumbo v3, "sp"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v2, "hc"

    const-string/jumbo v3, "hc"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v2, "tc"

    const-string/jumbo v3, "tc"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v2, "hl"

    const-string/jumbo v3, "hl"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/helpshift/support/HSStorage;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "storage":Lcom/helpshift/support/HSStorage;
    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->updateDisableHelpshiftBranding()V

    .line 51
    return-void
.end method
