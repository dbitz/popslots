.class public final Lcom/helpshift/support/SupportInternal;
.super Ljava/lang/Object;
.source "SupportInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/SupportInternal$EnableContactUs;,
        Lcom/helpshift/support/SupportInternal$RateAlert;,
        Lcom/helpshift/support/SupportInternal$Delegate;
    }
.end annotation


# static fields
.field public static final CustomMetadataKey:Ljava/lang/String; = "hs-custom-metadata"

.field public static final IssueTagsKey:Ljava/lang/String; = "hs-tags"

.field public static final JSON_PREFS:Ljava/lang/String; = "HSJsonData"

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final TagsKey:Ljava/lang/String; = "hs-tags"

.field public static final UserAcceptedTheSolution:Ljava/lang/String; = "User accepted the solution"

.field public static final UserRejectedTheSolution:Ljava/lang/String; = "User rejected the solution"

.field public static final UserReviewedTheApp:Ljava/lang/String; = "User reviewed the app"

.field public static final UserSentScreenShot:Ljava/lang/String; = "User sent a screenshot"

.field private static c:Landroid/content/Context; = null

.field private static data:Lcom/helpshift/support/HSApiData; = null

.field private static delegate:Lcom/helpshift/support/SupportInternal$Delegate; = null

.field public static final libraryVersion:Ljava/lang/String; = "4.1.1-support"

.field private static storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    sput-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    .line 169
    sput-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    .line 170
    sput-object v0, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/support/HSApiData;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method static synthetic access$100()Lcom/helpshift/support/HSStorage;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method public static cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 9
    .param p0, "configMap"    # Ljava/util/HashMap;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1175
    invoke-static {p0}, Lcom/helpshift/support/ContactUsFilter;->setConfig(Ljava/util/HashMap;)V

    .line 1176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1177
    .local v0, "cleanConfig":Landroid/os/Bundle;
    if-eqz p0, :cond_9

    .line 1178
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->createMetadataCallback(Ljava/util/HashMap;)V

    .line 1179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1180
    .local v1, "config":Lorg/json/JSONObject;
    const-string/jumbo v7, "gotoCoversationAfterContactUs"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "gotoConversationAfterContactUs"

    .line 1181
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1180
    :cond_0
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1183
    .local v4, "showConvOnReportIssue":Ljava/lang/Boolean;
    :try_start_0
    const-string/jumbo v5, "requireEmail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1184
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v7, "requireEmail"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/support/HSStorage;->setRequireEmail(Ljava/lang/Boolean;)V

    .line 1186
    :cond_1
    const-string/jumbo v5, "hideNameAndEmail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1187
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v7, "hideNameAndEmail"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/support/HSStorage;->setHideNameAndEmail(Ljava/lang/Boolean;)V

    .line 1189
    :cond_2
    const-string/jumbo v5, "showSearchOnNewConversation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1190
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v7, "showSearchOnNewConversation"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/support/HSStorage;->setShowSearchOnNewConversation(Ljava/lang/Boolean;)V

    .line 1192
    :cond_3
    const-string/jumbo v5, "enableFullPrivacy"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1193
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v7, "enableFullPrivacy"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/support/HSStorage;->setEnableFullPrivacy(Ljava/lang/Boolean;)V

    .line 1195
    :cond_4
    const-string/jumbo v5, "showConversationResolutionQuestion"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1196
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v7, "showConversationResolutionQuestion"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/support/HSStorage;->setShowConversationResolutionQuestion(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :cond_5
    :goto_1
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/helpshift/support/HSStorage;->setConversationPrefillText(Ljava/lang/String;)V

    .line 1207
    :try_start_1
    const-string/jumbo v5, "conversationPrefillText"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "conversationPrefillText"

    .line 1210
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1214
    const-string/jumbo v5, "hs-custom-metadata"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1215
    const-string/jumbo v5, "dropMeta"

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1218
    :cond_6
    const-string/jumbo v5, "conversationPrefillText"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1219
    .local v3, "prefillText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1220
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5, v3}, Lcom/helpshift/support/HSStorage;->setConversationPrefillText(Ljava/lang/String;)V

    .line 1224
    .end local v3    # "prefillText":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "toolbarId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1225
    const-string/jumbo v5, "toolbarId"

    const-string/jumbo v7, "toolbarId"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1231
    :cond_8
    :goto_2
    const-string/jumbo v5, "showConvOnReportIssue"

    .line 1232
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1231
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1234
    const-string/jumbo v5, "showSearchOnNewConversation"

    const-string/jumbo v7, "showSearchOnNewConversation"

    .line 1235
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1234
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1238
    const-string/jumbo v5, "withTagsMatching"

    const-string/jumbo v6, "withTagsMatching"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/helpshift/support/SupportInternal;->cleanFaqTagFilter(Ljava/lang/Object;)Lcom/helpshift/support/FaqTagFilter;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1241
    .end local v1    # "config":Lorg/json/JSONObject;
    .end local v4    # "showConvOnReportIssue":Ljava/lang/Boolean;
    :cond_9
    return-object v0

    .restart local v1    # "config":Lorg/json/JSONObject;
    :cond_a
    move v5, v6

    .line 1181
    goto/16 :goto_0

    .line 1198
    .restart local v4    # "showConvOnReportIssue":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 1199
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception parsing config : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1227
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 1228
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v7, "JSON exception while parsing config : "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static cleanFaqTagFilter(Ljava/lang/Object;)Lcom/helpshift/support/FaqTagFilter;
    .locals 8
    .param p0, "filterTagsConfigObject"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1245
    if-nez p0, :cond_0

    move-object v5, v6

    .line 1273
    :goto_0
    return-object v5

    .line 1250
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 1252
    .local v2, "filterTagsConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "operator"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1253
    .local v3, "operator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1254
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1255
    const-string/jumbo v5, "tags"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 1257
    .local v4, "tags":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 1258
    const-string/jumbo v5, "and"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1259
    new-instance v5, Lcom/helpshift/support/FaqTagFilter;

    sget-object v7, Lcom/helpshift/support/FaqTagFilter$Operator;->AND:Lcom/helpshift/support/FaqTagFilter$Operator;

    invoke-direct {v5, v7, v4}, Lcom/helpshift/support/FaqTagFilter;-><init>(Lcom/helpshift/support/FaqTagFilter$Operator;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1269
    .end local v2    # "filterTagsConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "tags":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v7, "Invalid FaqTagFilter object in config"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    move-object v5, v6

    .line 1273
    goto :goto_0

    .line 1261
    .restart local v2    # "filterTagsConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "operator":Ljava/lang/String;
    .restart local v4    # "tags":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "or"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1262
    new-instance v5, Lcom/helpshift/support/FaqTagFilter;

    sget-object v7, Lcom/helpshift/support/FaqTagFilter$Operator;->OR:Lcom/helpshift/support/FaqTagFilter$Operator;

    invoke-direct {v5, v7, v4}, Lcom/helpshift/support/FaqTagFilter;-><init>(Lcom/helpshift/support/FaqTagFilter$Operator;[Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_3
    const-string/jumbo v5, "not"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1265
    new-instance v5, Lcom/helpshift/support/FaqTagFilter;

    sget-object v7, Lcom/helpshift/support/FaqTagFilter$Operator;->NOT:Lcom/helpshift/support/FaqTagFilter$Operator;

    invoke-direct {v5, v7, v4}, Lcom/helpshift/support/FaqTagFilter;-><init>(Lcom/helpshift/support/FaqTagFilter$Operator;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static cleanStorage()V
    .locals 11

    .prologue
    .line 201
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getIdentity()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "identity":Ljava/lang/String;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getUUID()Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "uuid":Ljava/lang/String;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getRequireEmail()Ljava/lang/Boolean;

    move-result-object v5

    .line 205
    .local v5, "requireEmail":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    .line 206
    .local v0, "fullPrivacy":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getHideNameAndEmail()Ljava/lang/Boolean;

    move-result-object v1

    .line 207
    .local v1, "hideNameEmail":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getShowSearchOnNewConversation()Ljava/lang/Boolean;

    move-result-object v6

    .line 208
    .local v6, "showSearchOnNewConversation":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getCustomMetaData()Lorg/json/JSONObject;

    move-result-object v3

    .line 210
    .local v3, "metaData":Lorg/json/JSONObject;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v7

    .line 211
    .local v7, "timeDelta":Ljava/lang/Float;
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->getLibraryVersion()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "oldVersion":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string/jumbo v9, "4.1.1-support"

    .line 214
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 215
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/support/HSStorage;->clearDatabase()V

    .line 217
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v2}, Lcom/helpshift/support/HSStorage;->setIdentity(Ljava/lang/String;)V

    .line 218
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 219
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v8}, Lcom/helpshift/support/HSStorage;->setUUID(Ljava/lang/String;)V

    .line 222
    :cond_0
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v5}, Lcom/helpshift/support/HSStorage;->setRequireEmail(Ljava/lang/Boolean;)V

    .line 223
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v0}, Lcom/helpshift/support/HSStorage;->setEnableFullPrivacy(Ljava/lang/Boolean;)V

    .line 224
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v1}, Lcom/helpshift/support/HSStorage;->setHideNameAndEmail(Ljava/lang/Boolean;)V

    .line 225
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v6}, Lcom/helpshift/support/HSStorage;->setShowSearchOnNewConversation(Ljava/lang/Boolean;)V

    .line 226
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v3}, Lcom/helpshift/support/HSStorage;->setCustomMetaData(Lorg/json/JSONObject;)V

    .line 228
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v9, v7}, Lcom/helpshift/support/HSStorage;->setServerTimeDelta(Ljava/lang/Float;)V

    .line 230
    :cond_1
    sget-object v9, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v10, "4.1.1-support"

    invoke-virtual {v9, v10}, Lcom/helpshift/support/HSStorage;->setLibraryVersion(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static clearBreadCrumbs()V
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->clearBreadCrumbs()V

    .line 643
    return-void
.end method

.method private static createMetadataCallback(Ljava/util/HashMap;)V
    .locals 2
    .param p0, "config"    # Ljava/util/HashMap;

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "f":Lcom/helpshift/support/Callable;
    const-string/jumbo v1, "hs-custom-metadata"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    new-instance v0, Lcom/helpshift/support/SupportInternal$3;

    .end local v0    # "f":Lcom/helpshift/support/Callable;
    invoke-direct {v0, p0}, Lcom/helpshift/support/SupportInternal$3;-><init>(Ljava/util/HashMap;)V

    .line 1027
    .restart local v0    # "f":Lcom/helpshift/support/Callable;
    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public static getConversationFragment(Landroid/app/Activity;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/support/SupportInternal;->getConversationFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x1

    .line 1513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1514
    .local v1, "configHashMap":Ljava/util/HashMap;
    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1515
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1516
    const-string/jumbo v2, "support_mode"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1517
    const-string/jumbo v2, "decomp"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1518
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1519
    const-string/jumbo v2, "chatLaunchSource"

    const-string/jumbo v3, "support"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1521
    const-string/jumbo v2, "search_performed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1522
    invoke-static {v0}, Lcom/helpshift/support/fragments/SupportFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    return-object v2
.end method

.method public static getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;
    .locals 1

    .prologue
    .line 1408
    sget-object v0, Lcom/helpshift/support/SupportInternal;->delegate:Lcom/helpshift/support/SupportInternal$Delegate;

    return-object v0
.end method

.method public static getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;)",
            "Lcom/helpshift/support/fragments/SupportFragment;"
        }
    .end annotation

    .prologue
    .line 1556
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/SupportInternal;->getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getDynamicFormFragment(Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lcom/helpshift/support/fragments/SupportFragment;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    invoke-static {p1}, Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;->setFlowList(Ljava/util/List;)V

    .line 1561
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1562
    .local v1, "configHashMap":Ljava/util/HashMap;
    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1563
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "support_mode"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1564
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1565
    invoke-static {v0}, Lcom/helpshift/support/fragments/SupportFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    return-object v2
.end method

.method public static getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 1526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/SupportInternal;->getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getFAQSectionFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x1

    .line 1530
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1531
    .local v1, "configHashMap":Ljava/util/HashMap;
    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1532
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "support_mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1533
    const-string/jumbo v2, "sectionPublishId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1535
    const-string/jumbo v2, "decomp"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1536
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1537
    invoke-static {v0}, Lcom/helpshift/support/fragments/SupportFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    return-object v2
.end method

.method public static getFAQsFragment(Landroid/app/Activity;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/support/SupportInternal;->getFAQsFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getFAQsFragment(Landroid/app/Activity;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    .line 1502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1503
    .local v1, "configHashMap":Ljava/util/HashMap;
    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1504
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1505
    invoke-static {v0}, Lcom/helpshift/support/fragments/SupportFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    return-object v2
.end method

.method public static getNotificationCount()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 437
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    sget-object v1, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 9
    .param p0, "success"    # Landroid/os/Handler;
    .param p1, "failure"    # Landroid/os/Handler;

    .prologue
    .line 469
    if-eqz p0, :cond_2

    .line 470
    sget-object v7, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    if-nez v7, :cond_1

    .line 471
    :cond_0
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 472
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/support/SupportInternal;->init(Landroid/content/Context;)V

    .line 477
    :cond_1
    sget-object v7, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    sget-object v8, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v8}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/helpshift/support/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 478
    .local v0, "activeCnt":Ljava/lang/Integer;
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 479
    .local v5, "msgToPost":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v1, "countData":Landroid/os/Bundle;
    const-string/jumbo v7, "value"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string/jumbo v7, "cache"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 483
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 485
    new-instance v4, Lcom/helpshift/support/SupportInternal$2;

    invoke-direct {v4, p1}, Lcom/helpshift/support/SupportInternal$2;-><init>(Landroid/os/Handler;)V

    .line 496
    .local v4, "localFailure":Landroid/os/Handler;
    sget-object v7, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v7}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "profileId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 499
    sget-object v7, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v7, p0, v4}, Lcom/helpshift/support/HSApiData;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 508
    .end local v0    # "activeCnt":Ljava/lang/Integer;
    .end local v1    # "countData":Landroid/os/Bundle;
    .end local v4    # "localFailure":Landroid/os/Handler;
    .end local v5    # "msgToPost":Landroid/os/Message;
    .end local v6    # "profileId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 501
    .restart local v0    # "activeCnt":Ljava/lang/Integer;
    .restart local v1    # "countData":Landroid/os/Bundle;
    .restart local v4    # "localFailure":Landroid/os/Handler;
    .restart local v5    # "msgToPost":Landroid/os/Message;
    .restart local v6    # "profileId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 502
    .local v3, "failureMsg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v2, "failureCount":Landroid/os/Bundle;
    const-string/jumbo v7, "value"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;

    .prologue
    .line 1541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/SupportInternal;->getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleFAQFragment(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x1

    .line 1545
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1546
    .local v1, "configHashMap":Ljava/util/HashMap;
    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1547
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "support_mode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1548
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1550
    const-string/jumbo v2, "decomp"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1551
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1552
    invoke-static {v0}, Lcom/helpshift/support/fragments/SupportFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v2

    return-object v2
.end method

.method public static handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1322
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->init(Landroid/content/Context;)V

    .line 1323
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "issue_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, "issueId":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getForegroundIssue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1327
    :try_start_0
    sget-object v4, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4, v2}, Lcom/helpshift/support/HSStorage;->getIssuePushCount(Ljava/lang/String;)I

    move-result v3

    .line 1328
    .local v3, "messCnt":I
    invoke-static {v2}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v1

    .line 1329
    .local v1, "issue":Lcom/helpshift/support/model/Issue;
    if-eqz v1, :cond_0

    .line 1330
    sget-object v4, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    const-string/jumbo v5, "push"

    invoke-static {v4, v1, v3, v5, p1}, Lcom/helpshift/support/util/HSNotification;->showNotif(Landroid/content/Context;Lcom/helpshift/support/model/Issue;ILjava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    .end local v1    # "issue":Lcom/helpshift/support/model/Issue;
    .end local v3    # "messCnt":I
    :cond_0
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "handlePush JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static handlePush(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1340
    .local v0, "pushIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1341
    invoke-static {p0, v0}, Lcom/helpshift/support/SupportInternal;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1342
    return-void
.end method

.method private static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->initialize(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->initialize(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {p0}, Lcom/helpshift/util/HelpshiftContext;->setApplicationContext(Landroid/content/Context;)V

    .line 187
    sget-object v0, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    .line 189
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    sput-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    .line 190
    invoke-static {p0}, Lcom/helpshift/support/ContactUsFilter;->init(Landroid/content/Context;)V

    .line 191
    invoke-static {p0}, Lcom/helpshift/support/Initializer;->init(Landroid/content/Context;)V

    .line 192
    sput-object p0, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    .line 194
    :cond_0
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/helpshift/support/SupportInternal;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 24
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "config"    # Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 308
    invoke-static/range {p0 .. p0}, Lcom/helpshift/support/SupportInternal;->init(Landroid/app/Application;)V

    .line 309
    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 310
    .end local p4    # "config":Ljava/util/Map;
    .local v5, "config":Ljava/util/Map;
    const-string/jumbo v20, "disableErrorLogging"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "disableErrorLogging"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_1

    .line 311
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/helpshift/support/UncaughtExceptionHandler;->init(Landroid/content/Context;)V

    .line 313
    :cond_1
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->cleanStorage()V

    .line 314
    const-string/jumbo v20, "__hs__db_profiles"

    invoke-static/range {v20 .. v20}, Lcom/helpshift/support/util/DBUtil;->restoreDatabaseBackup(Ljava/lang/String;)V

    .line 315
    if-nez v5, :cond_c

    .line 316
    new-instance p4, Ljava/util/HashMap;

    invoke-direct/range {p4 .. p4}, Ljava/util/HashMap;-><init>()V

    .line 319
    .end local v5    # "config":Ljava/util/Map;
    .restart local p4    # "config":Ljava/util/Map;
    :goto_0
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v18

    .line 321
    .local v18, "profileId":Ljava/lang/String;
    const-string/jumbo v20, "sdkType"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    if-eqz v20, :cond_8

    .line 322
    sget-object v21, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v20, "sdkType"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setSdkType(Ljava/lang/String;)V

    .line 327
    :goto_1
    const-string/jumbo v20, "notificationIcon"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 328
    .local v16, "notifIcon":Ljava/lang/Object;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v13, v16

    .line 330
    check-cast v13, Ljava/lang/String;

    .line 331
    .local v13, "mDrawableName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string/jumbo v21, "drawable"

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 331
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 334
    .local v19, "resId":I
    const-string/jumbo v20, "notificationIcon"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v13    # "mDrawableName":Ljava/lang/String;
    .end local v19    # "resId":I
    :cond_2
    const-string/jumbo v20, "notificationSound"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 338
    .local v17, "notifSound":Ljava/lang/Object;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v13, v17

    .line 340
    check-cast v13, Ljava/lang/String;

    .line 341
    .restart local v13    # "mDrawableName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string/jumbo v21, "raw"

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 341
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 344
    .restart local v19    # "resId":I
    const-string/jumbo v20, "notificationSound"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v13    # "mDrawableName":Ljava/lang/String;
    .end local v19    # "resId":I
    :cond_3
    const-string/jumbo v20, "enableDialogUIForTablets"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 348
    .local v9, "enableDialogUIForTablets":Ljava/lang/Object;
    if-eqz v9, :cond_4

    instance-of v0, v9, Ljava/lang/Boolean;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object v10, v9

    .line 350
    check-cast v10, Ljava/lang/Boolean;

    .line 351
    .local v10, "enableDialogUi":Ljava/lang/Boolean;
    const-string/jumbo v20, "enableDialogUIForTablets"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v10    # "enableDialogUi":Ljava/lang/Boolean;
    :cond_4
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSStorage;->updateDisableHelpshiftBranding()V

    .line 357
    :try_start_0
    sget-object v20, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    sget-object v21, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    .line 358
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 360
    .local v4, "applicationVersion":Ljava/lang/String;
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSStorage;->getApplicationVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 361
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->resetReviewCounter()V

    .line 362
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->enableReview()V

    .line 363
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->setApplicationVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v4    # "applicationVersion":Ljava/lang/String;
    :cond_5
    :goto_2
    sget-object v20, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/helpshift/support/res/drawable/HSImages;->initImages(Landroid/content/Context;)V

    .line 370
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v20 .. v21}, Lcom/helpshift/support/HSStorage;->setAppConfig(Lorg/json/JSONObject;)V

    .line 371
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v20 .. v21}, Lcom/helpshift/support/HSStorage;->setActiveDownloads(Lorg/json/JSONObject;)V

    .line 373
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSApiData;->install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 377
    :try_start_1
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    new-instance v21, Landroid/os/Handler;

    invoke-direct/range {v21 .. v21}, Landroid/os/Handler;-><init>()V

    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v20 .. v22}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :cond_6
    :goto_3
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 384
    invoke-static {}, Lcom/helpshift/support/HSLifecycleCallbacks;->getInstance()Lcom/helpshift/support/HSLifecycleCallbacks;

    move-result-object v11

    .line 386
    .local v11, "hsLifecycleCallbacks":Lcom/helpshift/support/HSLifecycleCallbacks;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 425
    .end local v11    # "hsLifecycleCallbacks":Lcom/helpshift/support/HSLifecycleCallbacks;
    :cond_7
    :goto_4
    return-void

    .line 324
    .end local v9    # "enableDialogUIForTablets":Ljava/lang/Object;
    .end local v16    # "notifIcon":Ljava/lang/Object;
    .end local v17    # "notifSound":Ljava/lang/Object;
    :cond_8
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v21, "android"

    invoke-virtual/range {v20 .. v21}, Lcom/helpshift/support/HSStorage;->setSdkType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 365
    .restart local v9    # "enableDialogUIForTablets":Ljava/lang/Object;
    .restart local v16    # "notifIcon":Ljava/lang/Object;
    .restart local v17    # "notifSound":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 366
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v20, "HelpShiftDebug"

    const-string/jumbo v21, "Application Name Not Found"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 378
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v8

    .line 379
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v20, "HelpShiftDebug"

    const-string/jumbo v21, "Install - Get Latest Issues"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 389
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_9
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->updateReviewCounter()V

    .line 390
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->showReviewP()Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 391
    new-instance v12, Landroid/content/Intent;

    sget-object v20, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    const-class v21, Lcom/helpshift/support/HSReview;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v12, "i":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    sget-object v20, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 397
    .end local v12    # "i":Landroid/content/Intent;
    :cond_a
    :try_start_2
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    new-instance v21, Lcom/helpshift/support/SupportInternal$1;

    invoke-direct/range {v21 .. v21}, Lcom/helpshift/support/SupportInternal$1;-><init>()V

    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v20 .. v22}, Lcom/helpshift/support/HSApiData;->getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 407
    :goto_5
    sget-object v20, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/helpshift/util/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 408
    sget-object v20, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    new-instance v21, Landroid/content/Intent;

    sget-object v22, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    const-class v23, Lcom/helpshift/support/HSRetryService;

    invoke-direct/range {v21 .. v23}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 411
    :cond_b
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->startInAppService()V

    .line 412
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSApiData;->reportAppStartEvent()V

    .line 415
    invoke-static {}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->hasReports()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 416
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSStorage;->getLastErrorReportedTime()J

    move-result-wide v14

    .line 417
    .local v14, "lastReportedTime":J
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimeInMillis(Ljava/lang/Float;)J

    move-result-wide v6

    .line 419
    .local v6, "currentElapsedTime":J
    sub-long v20, v6, v14

    const-wide/32 v22, 0x5265c00

    cmp-long v20, v20, v22

    if-lez v20, :cond_7

    .line 420
    sget-object v20, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Lcom/helpshift/support/HSStorage;->setLastErrorReportedTime(J)V

    .line 421
    sget-object v20, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    sget-object v21, Lcom/helpshift/support/constants/ErrorReportTypes;->RUNTIME_ERROR:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lcom/helpshift/support/HSApiData;->sendErrorReports(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 403
    .end local v6    # "currentElapsedTime":J
    .end local v14    # "lastReportedTime":J
    :catch_2
    move-exception v8

    .line 404
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string/jumbo v20, "HelpShiftDebug"

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "enableDialogUIForTablets":Ljava/lang/Object;
    .end local v16    # "notifIcon":Ljava/lang/Object;
    .end local v17    # "notifSound":Ljava/lang/Object;
    .end local v18    # "profileId":Ljava/lang/String;
    .end local p4    # "config":Ljava/util/Map;
    .restart local v5    # "config":Ljava/util/Map;
    :cond_c
    move-object/from16 p4, v5

    .end local v5    # "config":Ljava/util/Map;
    .restart local p4    # "config":Ljava/util/Map;
    goto/16 :goto_0
.end method

.method public static leaveBreadCrumb(Ljava/lang/String;)V
    .locals 1
    .param p0, "breadCrumb"    # Ljava/lang/String;

    .prologue
    .line 623
    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    sget-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p0}, Lcom/helpshift/support/HSStorage;->pushBreadCrumb(Ljava/lang/String;)V

    .line 627
    :cond_0
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 1433
    sget-object v1, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1, p0}, Lcom/helpshift/support/HSApiData;->login(Ljava/lang/String;)Z

    move-result v0

    .line 1434
    .local v0, "loginSucceeded":Z
    if-eqz v0, :cond_0

    .line 1435
    invoke-static {p1, p2}, Lcom/helpshift/support/SupportInternal;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_0
    return-void
.end method

.method public static logout()V
    .locals 1

    .prologue
    .line 1445
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->logout()V

    .line 1446
    return-void
.end method

.method public static registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-static {p0}, Lcom/helpshift/support/SupportInternal;->init(Landroid/content/Context;)V

    .line 599
    if-eqz p1, :cond_1

    .line 600
    sget-object v1, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "profileId":Ljava/lang/String;
    sget-object v1, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSStorage;->setDeviceToken(Ljava/lang/String;)V

    .line 603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    sget-object v1, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->updateUAToken()V

    .line 609
    .end local v0    # "profileId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Device Token is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .param p0, "config"    # Ljava/util/HashMap;

    .prologue
    const/4 v3, 0x0

    .line 1159
    if-nez p0, :cond_0

    .line 1160
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "config":Ljava/util/HashMap;
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1163
    .restart local p0    # "config":Ljava/util/HashMap;
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "conversationPrefillText"

    aput-object v2, v1, v3

    .line 1164
    .local v1, "unsupportedConfigs":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 1165
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string/jumbo v5, "showSearchOnNewConversation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1168
    sget-object v5, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->setShowSearchOnNewConversation(Ljava/lang/Boolean;)V

    .line 1164
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1171
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public static setDelegate(Lcom/helpshift/support/SupportInternal$Delegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/helpshift/support/SupportInternal$Delegate;

    .prologue
    .line 1418
    sput-object p0, Lcom/helpshift/support/SupportInternal;->delegate:Lcom/helpshift/support/SupportInternal$Delegate;

    .line 1419
    return-void
.end method

.method public static setMetadataCallback(Lcom/helpshift/support/Callable;)V
    .locals 3
    .param p0, "f"    # Lcom/helpshift/support/Callable;

    .prologue
    .line 1006
    invoke-static {p0}, Lcom/helpshift/support/util/Meta;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    .line 1008
    :try_start_0
    sget-object v1, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-static {}, Lcom/helpshift/support/util/Meta;->getCustomMeta()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSStorage;->setCustomMetaData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception getting custom meta "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 524
    if-nez p0, :cond_3

    .line 525
    const-string/jumbo p0, ""

    .line 530
    :goto_0
    if-nez p1, :cond_4

    .line 531
    const-string/jumbo p1, ""

    .line 536
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSApiData;->setUsername(Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSApiData;->setEmail(Ljava/lang/String;)V

    .line 541
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0, p0}, Lcom/helpshift/support/HSApiData;->setUsername(Ljava/lang/String;)V

    .line 545
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    sget-object v0, Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0, p1}, Lcom/helpshift/support/HSApiData;->setEmail(Ljava/lang/String;)V

    .line 549
    :cond_2
    return-void

    .line 527
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 533
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static setSDKLanguage(Ljava/lang/String;)V
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 1472
    sget-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p0}, Lcom/helpshift/support/HSStorage;->setSdkLanguage(Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 562
    if-eqz p0, :cond_0

    .line 563
    sget-object v0, Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method public static showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/support/AlertToRateAppListener;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "alertToRateAppListener"    # Lcom/helpshift/support/AlertToRateAppListener;

    .prologue
    .line 1381
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1383
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1386
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    .line 1387
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1388
    :cond_1
    if-eqz p1, :cond_2

    .line 1389
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/helpshift/support/AlertToRateAppListener;->onAction(I)V

    .line 1401
    :cond_2
    :goto_0
    return-void

    .line 1394
    :cond_3
    invoke-static {p1}, Lcom/helpshift/support/HSReviewFragment;->setAlertToRateAppListener(Lcom/helpshift/support/AlertToRateAppListener;)V

    .line 1396
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    const-class v3, Lcom/helpshift/support/HSReview;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1397
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "disableReview"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1398
    const-string/jumbo v2, "rurl"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1400
    sget-object v2, Lcom/helpshift/support/SupportInternal;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showConversation(Landroid/app/Activity;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/support/SupportInternal;->showConversation(Landroid/app/Activity;Ljava/util/Map;)V

    .line 662
    return-void
.end method

.method public static showConversation(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x1

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 738
    .local v0, "configHashMap":Ljava/util/HashMap;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "support_mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string/jumbo v2, "decomp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 742
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 743
    const-string/jumbo v2, "chatLaunchSource"

    const-string/jumbo v3, "support"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 745
    const-string/jumbo v2, "search_performed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 747
    return-void
.end method

.method public static showDynamicForm(Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p1, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;->setFlowList(Ljava/util/List;)V

    .line 1153
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v1, "support_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1156
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/SupportInternal;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 771
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x1

    .line 869
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 870
    .local v0, "configHashMap":Ljava/util/HashMap;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "support_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 872
    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 873
    const-string/jumbo v2, "sectionPublishId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 875
    const-string/jumbo v2, "decomp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 876
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 878
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 1048
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/support/SupportInternal;->showFAQs(Landroid/app/Activity;Ljava/util/Map;)V

    .line 1049
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/Map;

    .prologue
    .line 1141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1142
    .local v0, "configHashMap":Ljava/util/HashMap;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1143
    .local v1, "i":Landroid/content/Intent;
    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1144
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1145
    const-string/jumbo v2, "decomp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1146
    const-string/jumbo v2, "isRoot"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1148
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;

    .prologue
    .line 900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/SupportInternal;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 901
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x1

    .line 971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 972
    .local v0, "configHashMap":Ljava/util/HashMap;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 973
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "support_mode"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    invoke-static {v0}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 975
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string/jumbo v2, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/support/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 977
    const-string/jumbo v2, "decomp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 978
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 980
    return-void
.end method
