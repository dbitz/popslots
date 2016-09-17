.class public Lcom/helpshift/support/util/MessagesUtil;
.super Ljava/lang/Object;
.source "MessagesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static final notificationsOffMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final supportedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "admin"

    const-string/jumbo v3, "txt"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "admin"

    const-string/jumbo v3, "rsc"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "admin"

    const-string/jumbo v3, "rar"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "admin"

    const-string/jumbo v3, "rfr"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "admin"

    const-string/jumbo v4, "admin_attachment_image"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "admin"

    const-string/jumbo v4, "admin_attachment_generic"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "mobile"

    const-string/jumbo v4, "txt"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "mobile"

    const-string/jumbo v4, "ncr"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "mobile"

    const-string/jumbo v4, "sc"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "mobile"

    const-string/jumbo v4, "ar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/util/MessagesUtil;->supportedMessages:Ljava/util/List;

    .line 30
    new-array v0, v8, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "admin"

    const-string/jumbo v3, "rfr"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "mobile"

    const-string/jumbo v3, "ra"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "mobile"

    const-string/jumbo v3, "rj"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/util/MessagesUtil;->notificationsOffMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMessageSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/helpshift/support/util/MessagesUtil;->supportedMessages:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRfrAccepted(Lorg/json/JSONArray;ILjava/lang/String;)Z
    .locals 9
    .param p0, "messages"    # Lorg/json/JSONArray;
    .param p1, "startIndex"    # I
    .param p2, "rfrMessageId"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v5, 0x0

    .line 44
    .local v5, "rfrAccepted":Z
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    .local v2, "message":Lorg/json/JSONObject;
    const-string/jumbo v7, "origin"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "origin":Ljava/lang/String;
    const-string/jumbo v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v7, "mobile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "ra"

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    const-string/jumbo v7, "meta"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "refers"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "refers":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    const/4 v5, 0x1

    .line 61
    .end local v2    # "message":Lorg/json/JSONObject;
    .end local v3    # "origin":Ljava/lang/String;
    .end local v4    # "refers":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_0
    return v5

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "isRfrAccepted"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static notificationsTurnedOff(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/helpshift/support/util/MessagesUtil;->notificationsOffMessages:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
