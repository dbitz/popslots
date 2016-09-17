.class public final Lcom/helpshift/support/HSStorage;
.super Ljava/lang/Object;
.source "HSStorage.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static cacheIndex:Ljava/util/HashMap;


# instance fields
.field private context:Landroid/content/Context;

.field private final dbFile:Ljava/lang/String;

.field private storage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, "fullIndex.db"

    iput-object v0, p0, Lcom/helpshift/support/HSStorage;->dbFile:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/helpshift/support/HSStorage;->context:Landroid/content/Context;

    .line 50
    const-string/jumbo v0, "HSJsonData"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method

.method private concatJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "arr1"    # Lorg/json/JSONArray;
    .param p2, "arr2"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 59
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_1
    return-object v1
.end method

.method private getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v2, 0x0

    .line 718
    .local v2, "failedMessages":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v3, "failedMessages"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 719
    .local v0, "allFailedMessages":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 724
    .end local v0    # "allFailedMessages":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_0

    .line 725
    new-instance v2, Lorg/json/JSONArray;

    .end local v2    # "failedMessages":Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 728
    .restart local v2    # "failedMessages":Lorg/json/JSONArray;
    :cond_0
    return-object v2

    .line 720
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getFailedMessages"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4
    .param p1, "failedMessages"    # Lorg/json/JSONArray;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 707
    :try_start_0
    const-string/jumbo v2, "failedMessages"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 708
    .local v0, "allFailedMessages":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    const-string/jumbo v2, "failedMessages"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v0    # "allFailedMessages":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setFailedMessages"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setNotifications(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "notifications"    # Lorg/json/JSONObject;

    .prologue
    .line 1239
    :try_start_0
    const-string/jumbo v2, "notifications"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1240
    .local v0, "allNotifications":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    const-string/jumbo v2, "notifications"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .end local v0    # "allNotifications":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1242
    :catch_0
    move-exception v1

    .line 1243
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setNotifications"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private storageGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private storageGetArr(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "[]"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private storageGetFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private storageGetLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "{}"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Boolean;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Float;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Integer;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Long;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method private storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method private storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method private updateOpenConversations(Ljava/lang/String;)V
    .locals 7
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "openConversations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/model/Issue;

    .line 188
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "issueId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 190
    .local v4, "status":Ljava/lang/Integer;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    .line 191
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/helpshift/support/HSStorage;->setOpenConversations(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "issue":Lcom/helpshift/support/model/Issue;
    .end local v1    # "issueId":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/Integer;
    :cond_2
    return-void
.end method


# virtual methods
.method protected addMessages(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "issue"    # Lorg/json/JSONObject;
    .param p2, "messages"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 174
    const-string/jumbo v0, "messages"

    const-string/jumbo v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/helpshift/support/HSStorage;->mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    return-object p1
.end method

.method protected addToActiveDownloads(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1191
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getActiveDownloads()Lorg/json/JSONObject;

    move-result-object v0

    .line 1192
    .local v0, "activeDownloads":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1193
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setActiveDownloads(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .end local v0    # "activeDownloads":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1194
    :catch_0
    move-exception v1

    .line 1195
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToActiveDownloads : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToCachedAttachmentFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1039
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1040
    .local v0, "cachedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1041
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setCachedAttachmentFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v0    # "cachedFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToCachedAttachmentFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToDownloadedGenericFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1055
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1056
    .local v0, "downloadedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setDownloadedAttachmentFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    .end local v0    # "downloadedFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v1

    .line 1059
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToDownloadedGenericFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToDownloadedImageFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1150
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedImageFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1151
    .local v0, "downloadedImageFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1152
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setDownloadedImageFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v0    # "downloadedImageFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v1

    .line 1154
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToDownloadedImageFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToDownloadedThumbnailFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1109
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedThumbnailFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1110
    .local v0, "downloadedThumbnailFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setDownloadedThumbnailFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    .end local v0    # "downloadedThumbnailFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToDownloadedThumbnailFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected clearAndUpdateActiveConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0, p2}, Lcom/helpshift/support/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "openConvs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0, v0, p2}, Lcom/helpshift/support/HSStorage;->setOpenConversations(Ljava/util/List;Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/HSStorage;->setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/helpshift/support/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected clearBreadCrumbs()V
    .locals 2

    .prologue
    .line 529
    const-string/jumbo v0, "breadCrumbs"

    const-string/jumbo v1, "[]"

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method protected clearDatabase()V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->clearDB()V

    .line 294
    new-instance v1, Lcom/helpshift/support/storage/FaqsDataSource;

    invoke-direct {v1}, Lcom/helpshift/support/storage/FaqsDataSource;-><init>()V

    .line 295
    .local v1, "faqsDataSource":Lcom/helpshift/support/storage/FaqsDataSource;
    invoke-virtual {v1}, Lcom/helpshift/support/storage/FaqsDataSource;->clearDB()V

    .line 296
    iget-object v2, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method protected clearNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-static {p1}, Lcom/helpshift/support/model/Issue;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, "profileId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/helpshift/support/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1266
    .local v1, "notifications":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    invoke-direct {p0, v2, v1}, Lcom/helpshift/support/HSStorage;->setNotifications(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    .end local v1    # "notifications":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "clearNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected deleteIndex()V
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/HSStorage;->cacheIndex:Ljava/util/HashMap;

    .line 701
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->context:Landroid/content/Context;

    const-string/jumbo v1, "fullIndex.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 702
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->unsetDBFlag()V

    .line 703
    return-void
.end method

.method protected enableReview()V
    .locals 2

    .prologue
    .line 613
    const-string/jumbo v0, "reviewed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    return-void
.end method

.method public getActiveConversation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "activeConversation":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "activeConversation"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 400
    .local v1, "allActiveConversations":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    .end local v1    # "allActiveConversations":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getActiveConversation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getActiveDownloads()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1178
    :try_start_0
    const-string/jumbo v1, "activeDownloads"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1182
    :goto_0
    return-object v1

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getActiveDownloads : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    .local v0, "activeNotifCnt":Ljava/lang/Integer;
    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "issueId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    invoke-static {v2}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v1

    .line 279
    .local v1, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v1}, Lcom/helpshift/support/model/Issue;->getNewMessagesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    .end local v1    # "issue":Lcom/helpshift/support/model/Issue;
    :cond_0
    return-object v0
.end method

.method protected getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string/jumbo v0, "apiKey"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppConfig()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 585
    const-string/jumbo v0, "appConfig"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const-string/jumbo v0, "applicationVersion"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 427
    .local v1, "archivedConversation":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "archivedConversations"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 428
    .local v0, "allArchivedConversations":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 432
    .end local v0    # "allArchivedConversations":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getArchivedConversation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBreadCrumbs()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 489
    const-string/jumbo v0, "breadCrumbs"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetArr(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getBreadCrumbsLimit()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 539
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "bcl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .local v1, "limit":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 540
    .end local v1    # "limit":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Lorg/json/JSONException;
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "limit":Ljava/lang/Integer;
    goto :goto_0
.end method

.method protected getCSatDraft()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 989
    :try_start_0
    const-string/jumbo v1, "csatDraft"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 993
    :goto_0
    return-object v1

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 993
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getCachedAttachmentFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1026
    :try_start_0
    const-string/jumbo v1, "cachedAttachmentFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1030
    :goto_0
    return-object v1

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getCachedAttachmentFiles : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getConfig()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 577
    const-string/jumbo v0, "config"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getConversationDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 856
    const-string/jumbo v2, ""

    .line 858
    .local v2, "conversationText":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "allConversationDetails"

    invoke-direct {p0, v6}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 859
    .local v0, "allConversationDetails":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 860
    .local v1, "conversationDetail":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 861
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-string/jumbo v8, "conversationTextSetTime"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 863
    .local v4, "timeDiff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 864
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1c20

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 865
    :cond_0
    const-string/jumbo v6, ""

    invoke-virtual {p0, p1, v6}, Lcom/helpshift/support/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .end local v1    # "conversationDetail":Lorg/json/JSONObject;
    .end local v4    # "timeDiff":J
    :cond_1
    :goto_0
    return-object v2

    .line 867
    .restart local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .restart local v1    # "conversationDetail":Lorg/json/JSONObject;
    .restart local v4    # "timeDiff":J
    :cond_2
    const-string/jumbo v6, "conversationText"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 870
    .end local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .end local v1    # "conversationDetail":Lorg/json/JSONObject;
    .end local v4    # "timeDiff":J
    :catch_0
    move-exception v3

    .line 871
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "getConversationDetail"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConversationPrefillText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    const-string/jumbo v0, "conversationPrefillText"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationScreenshot(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "loginIdentifier"    # Ljava/lang/String;

    .prologue
    .line 903
    const-string/jumbo v2, ""

    .line 905
    .local v2, "screenshot":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "conversationScreenshots"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 906
    .local v0, "allScreenshots":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 910
    .end local v0    # "allScreenshots":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 907
    :catch_0
    move-exception v1

    .line 908
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getConversationScreenshot"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCustomMetaData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 959
    :try_start_0
    const-string/jumbo v1, "customMetaData"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 962
    :goto_0
    return-object v1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception getting meta from storage "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDBFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 688
    const-string/jumbo v0, "dbFlag"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "loginIdentifier":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string/jumbo v2, "deviceId"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "deviceIdentifier":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 347
    .end local v0    # "deviceIdentifier":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .restart local v0    # "deviceIdentifier":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const-string/jumbo v0, "deviceToken"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string/jumbo v0, "domain"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadedAttachmentFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1083
    :try_start_0
    const-string/jumbo v1, "downloadedAttachmentFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1087
    :goto_0
    return-object v1

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getDownloadedImageFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1137
    :try_start_0
    const-string/jumbo v1, "downloadedImageFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1141
    :goto_0
    return-object v1

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getDownloadedImageFiles : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getDownloadedThumbnailFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1096
    :try_start_0
    const-string/jumbo v1, "downloadedThumbnailFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1100
    :goto_0
    return-object v1

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getDownloadedThumbnailFiles "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string/jumbo v0, "email"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableFullPrivacy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 938
    const-string/jumbo v0, "fullPrivacy"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string/jumbo v1, ""

    .line 645
    .local v1, "etag":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getEtags()Lorg/json/JSONObject;

    move-result-object v2

    .line 646
    .local v2, "etags":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 650
    .end local v2    # "etags":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "set etag"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getEtags()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 629
    const-string/jumbo v0, "etags"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getFailedApiCalls()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 811
    const-string/jumbo v0, "failedApiCalls"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getFailedMessages(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-direct {p0, p2}, Lcom/helpshift/support/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 772
    .local v1, "failedMessages":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 773
    .local v2, "failedMessagesIssue":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 774
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 775
    .local v0, "failedMessage":Lorg/json/JSONObject;
    const-string/jumbo v4, "issue_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 776
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 773
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "failedMessage":Lorg/json/JSONObject;
    :cond_1
    return-object v2
.end method

.method protected getFilePathForGenericAttachment(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1071
    .local v0, "downloadedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1078
    :goto_0
    return-object v2

    .line 1074
    :catch_0
    move-exception v1

    .line 1075
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getFilePathForGenericAttachment : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method protected getFilePathForImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1166
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedImageFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1167
    .local v0, "downloadedImageFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1173
    .end local v0    # "downloadedImageFiles":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 1170
    :catch_0
    move-exception v1

    .line 1171
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getFilePathForImage : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method protected getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1125
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedThumbnailFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1126
    .local v0, "downloadedThumbnailFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1132
    .end local v0    # "downloadedThumbnailFiles":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getFilePathForThumbnail : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getForegroundIssue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string/jumbo v0, "foregroundIssue"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHideNameAndEmail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1001
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-string/jumbo v0, "identity"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsConversationShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 922
    const-string/jumbo v0, "isConversationShowing"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getIssueCSatStates()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 976
    :try_start_0
    const-string/jumbo v1, "issueCSatStates"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 980
    :goto_0
    return-object v1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getIssuePushCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v1, 0x1

    .line 437
    .local v1, "updatedCount":I
    const-string/jumbo v2, "pushData"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 439
    .local v0, "pushData":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 442
    :cond_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 443
    const-string/jumbo v2, "pushData"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 445
    return v1
.end method

.method protected getIssuesTs(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v3, "result":Ljava/util/HashMap;
    const-string/jumbo v2, ""

    .line 241
    .local v2, "issuesTs":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "issuesTs"

    invoke-direct {p0, v4}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    .local v0, "allIssuesTs":Lorg/json/JSONObject;
    const-string/jumbo v4, ""

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 247
    .end local v0    # "allIssuesTs":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    const-string/jumbo v4, "ts"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v4, "success"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    return-object v3

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "getIssuesTs"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastErrorReportedTime()J
    .locals 2

    .prologue
    .line 1307
    const-string/jumbo v0, "lastErrorReportedTime"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLaunchReviewCounter()I
    .locals 1

    .prologue
    .line 601
    const-string/jumbo v0, "launchReviewCounter"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string/jumbo v0, "libraryVersion"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1211
    const-string/jumbo v0, "loginIdentifier"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 1248
    const/4 v2, 0x0

    .line 1250
    .local v2, "notifications":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "notifications"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1251
    .local v0, "allNotifications":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1255
    .end local v0    # "allNotifications":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_0

    .line 1256
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "notifications":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1258
    .restart local v2    # "notifications":Lorg/json/JSONObject;
    :cond_0
    return-object v2

    .line 1252
    :catch_0
    move-exception v1

    .line 1253
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getNotifications"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getOpenConversations(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v6, "openConversations"

    invoke-direct {p0, v6}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 411
    .local v0, "allOpenConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 412
    .local v5, "openConversations":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 413
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 414
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 415
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "allOpenConversations":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v5    # "openConversations":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "getOpenConversations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method protected getReply(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 832
    const-string/jumbo v2, ""

    .line 834
    .local v2, "replyText":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "allReplyTexts"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 835
    .local v0, "allReplyTexts":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 839
    .end local v0    # "allReplyTexts":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "storeReply"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRequireEmail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 930
    const-string/jumbo v0, "requireEmail"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getReviewCounter()I
    .locals 1

    .prologue
    .line 593
    const-string/jumbo v0, "reviewCounter"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getReviewed()I
    .locals 1

    .prologue
    .line 617
    const-string/jumbo v0, "reviewed"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScreenShotDraft()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 914
    const-string/jumbo v0, "screenShotDraft"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSdkLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    const-string/jumbo v0, "sdkLanguage"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSdkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string/jumbo v0, "sdkType"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimeDelta()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 877
    const-string/jumbo v0, "serverTimeDelta"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getShowConversationResolutionQuestion()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 954
    iget-object v0, p0, Lcom/helpshift/support/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "showConversationResolutionQuestion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getShowSearchOnNewConversation()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1017
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getStoredFiles()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 621
    const-string/jumbo v0, "cachedImages"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetArr(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    const-string/jumbo v0, "uuid"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string/jumbo v0, "username"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDownloadActive(Ljava/lang/String;)Z
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getActiveDownloads()Lorg/json/JSONObject;

    move-result-object v0

    .line 1207
    .local v0, "activeDownloads":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isHelpshiftBrandingDisabled()Z
    .locals 1

    .prologue
    .line 1303
    const-string/jumbo v0, "disableHelpshiftBranding"

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected loadIndex()V
    .locals 7

    .prologue
    .line 669
    sget-object v5, Lcom/helpshift/support/HSStorage;->cacheIndex:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 670
    const/4 v3, 0x0

    .line 672
    .local v3, "fullIndex":Ljava/util/HashMap;
    :try_start_0
    iget-object v5, p0, Lcom/helpshift/support/HSStorage;->context:Landroid/content/Context;

    const-string/jumbo v6, "fullIndex.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 673
    .local v2, "fStream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 674
    .local v4, "oStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 675
    sput-object v3, Lcom/helpshift/support/HSStorage;->cacheIndex:Ljava/util/HashMap;

    .line 676
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v2    # "fStream":Ljava/io/FileInputStream;
    .end local v3    # "fullIndex":Ljava/util/HashMap;
    .end local v4    # "oStream":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-void

    .line 677
    .restart local v3    # "fullIndex":Ljava/util/HashMap;
    :catch_0
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "read index"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9
    .param p1, "messages1"    # Lorg/json/JSONArray;
    .param p2, "messages2"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v5, "messagesMap":Ljava/util/HashMap;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 138
    .local v4, "messagesList":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v6, "messagesMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/HSStorage;->concatJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 141
    .local v3, "messages":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 142
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 143
    .local v1, "message":Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    const-string/jumbo v7, "id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v2, "messageMap":Ljava/util/HashMap;
    const-string/jumbo v7, "id"

    const-string/jumbo v8, "id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v7, "created_at"

    const-string/jumbo v8, "created_at"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v2    # "messageMap":Ljava/util/HashMap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "message":Lorg/json/JSONObject;
    :cond_1
    new-instance v7, Lcom/helpshift/support/HSStorage$1;

    invoke-direct {v7, p0}, Lcom/helpshift/support/HSStorage$1;-><init>(Lcom/helpshift/support/HSStorage;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 166
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string/jumbo v8, "id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_2
    return-object v4
.end method

.method protected popFailedMessage(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 733
    .local v2, "failedMessages":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 734
    .local v3, "failedMessagesStore":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 735
    .local v1, "failedMessageRes":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 736
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 737
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 738
    .local v0, "failedMessage":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const-string/jumbo v5, "state"

    .line 739
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x2

    if-le v5, v6, :cond_0

    .line 740
    move-object v1, v0

    .line 736
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 745
    .end local v0    # "failedMessage":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/helpshift/support/HSStorage;->setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 747
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method protected popFailedMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-direct {p0, p2}, Lcom/helpshift/support/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 753
    .local v2, "failedMessages":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 754
    .local v3, "failedMessagesStore":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 755
    .local v1, "failedMessageRes":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 756
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 757
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 758
    .local v0, "failedMessage":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const-string/jumbo v5, "id"

    .line 759
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 760
    move-object v1, v0

    .line 756
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 765
    .end local v0    # "failedMessage":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/helpshift/support/HSStorage;->setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 767
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method protected pushBreadCrumb(Ljava/lang/String;)V
    .locals 11
    .param p1, "breadCrumb"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getBreadCrumbsLimit()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 502
    .local v6, "limit":I
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v1

    .line 503
    .local v1, "crumbsList":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 504
    .local v0, "crumbObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "action"

    invoke-virtual {v0, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string/jumbo v8, "datetime"

    sget-object v9, Lcom/helpshift/util/HSFormat;->breadCrumbTsFormat:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 508
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 509
    .local v5, "length":I
    if-le v5, v6, :cond_1

    .line 510
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 511
    .local v7, "newArray":Lorg/json/JSONArray;
    sub-int v2, v5, v6

    .line 513
    .local v2, "diff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 514
    add-int v8, v4, v2

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 513
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    :cond_0
    move-object v1, v7

    .line 518
    .end local v2    # "diff":I
    .end local v4    # "i":I
    .end local v7    # "newArray":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v8, "breadCrumbs"

    invoke-direct {p0, v8, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v0    # "crumbObj":Lorg/json/JSONObject;
    .end local v1    # "crumbsList":Lorg/json/JSONArray;
    .end local v5    # "length":I
    :goto_1
    return-void

    .line 519
    :catch_0
    move-exception v3

    .line 520
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "HelpShiftDebug"

    const-string/jumbo v9, "Error while leaving breadcrumb"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected readIndex()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcom/helpshift/support/HSStorage;->cacheIndex:Ljava/util/HashMap;

    return-object v0
.end method

.method protected removeFromActiveDownloads(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getActiveDownloads()Lorg/json/JSONObject;

    move-result-object v0

    .line 1201
    .local v0, "activeDownloads":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1202
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setActiveDownloads(Lorg/json/JSONObject;)V

    .line 1203
    return-void
.end method

.method protected removeFromCachedAttachmentFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1049
    .local v0, "cachedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1050
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setCachedAttachmentFiles(Lorg/json/JSONObject;)V

    .line 1051
    return-void
.end method

.method protected removeFromDownloadedGenericFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1065
    .local v0, "downloadedGenericFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1066
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setDownloadedAttachmentFiles(Lorg/json/JSONObject;)V

    .line 1067
    return-void
.end method

.method protected removeFromDownloadedImageFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedImageFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1160
    .local v0, "downloadedImageFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1161
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setDownloadedImageFiles(Lorg/json/JSONObject;)V

    .line 1162
    return-void
.end method

.method protected removeFromDownloadedThumbnailFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getDownloadedThumbnailFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1119
    .local v0, "downloadedThumbnailFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSStorage;->setDownloadedThumbnailFiles(Lorg/json/JSONObject;)V

    .line 1121
    return-void
.end method

.method protected resetIssueCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Lcom/helpshift/support/model/Issue;->resetIssueCount(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "pushData"

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 288
    .local v0, "pushData":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string/jumbo v1, "pushData"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 290
    return-void
.end method

.method public saveNotification(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "issueTs"    # I
    .param p3, "newMessageCount"    # I
    .param p4, "chatLaunchSource"    # Ljava/lang/String;
    .param p5, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 1220
    invoke-static {p1}, Lcom/helpshift/support/model/Issue;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .local v3, "profileId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1222
    invoke-virtual {p0, v3}, Lcom/helpshift/support/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1224
    .local v2, "notifications":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1225
    .local v1, "newNotification":Lorg/json/JSONObject;
    const-string/jumbo v4, "issueTs"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1226
    const-string/jumbo v4, "newMessageCount"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1227
    const-string/jumbo v4, "chatLaunchSource"

    invoke-virtual {v1, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    const-string/jumbo v4, "contentTitle"

    invoke-virtual {v1, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1230
    invoke-direct {p0, v3, v2}, Lcom/helpshift/support/HSStorage;->setNotifications(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    .end local v1    # "newNotification":Lorg/json/JSONObject;
    .end local v2    # "notifications":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1231
    .restart local v2    # "notifications":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "saveNotification"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setActiveConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 454
    :try_start_0
    const-string/jumbo v2, "activeConversation"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 455
    .local v0, "allActiveConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    const-string/jumbo v2, "activeConversation"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0    # "allActiveConversations":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setActiveConversation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setActiveDownloads(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "activeDownloads"    # Lorg/json/JSONObject;

    .prologue
    .line 1186
    const-string/jumbo v0, "activeDownloads"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1187
    return-void
.end method

.method protected setApiKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string/jumbo v0, "apiKey"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected setAppConfig(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "appConfig"    # Lorg/json/JSONObject;

    .prologue
    .line 589
    const-string/jumbo v0, "appConfig"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 590
    return-void
.end method

.method protected setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method protected setApplicationVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationVersion"    # Ljava/lang/String;

    .prologue
    .line 385
    const-string/jumbo v0, "applicationVersion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method protected setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "archivedConversationId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 475
    :try_start_0
    const-string/jumbo v2, "archivedConversations"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 476
    .local v0, "allArchivedConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v2, "archivedConversations"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v0    # "allArchivedConversations":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setArchivedConversation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setCSatDraft(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "draft"    # Lorg/json/JSONObject;

    .prologue
    .line 997
    const-string/jumbo v0, "csatDraft"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 998
    return-void
.end method

.method protected setCachedAttachmentFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "cachedFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1034
    const-string/jumbo v0, "cachedAttachmentFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1035
    return-void
.end method

.method protected setConfig(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 581
    const-string/jumbo v0, "config"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 582
    return-void
.end method

.method public setConversationPrefillText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1013
    const-string/jumbo v0, "conversationPrefillText"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "screenshotPath"    # Ljava/lang/String;
    .param p2, "loginIdentifier"    # Ljava/lang/String;

    .prologue
    .line 894
    :try_start_0
    const-string/jumbo v2, "conversationScreenshots"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 895
    .local v0, "allScreenshots":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    const-string/jumbo v2, "conversationScreenshots"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v0    # "allScreenshots":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setConversationScreenshot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCustomMetaData(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "metaData"    # Lorg/json/JSONObject;

    .prologue
    .line 968
    if-nez p1, :cond_0

    .line 969
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "metaData":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 971
    .restart local p1    # "metaData":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "customMetaData"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 972
    return-void
.end method

.method protected setDBFlag()V
    .locals 2

    .prologue
    .line 692
    const-string/jumbo v0, "dbFlag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 693
    return-void
.end method

.method protected setDeviceIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string/jumbo v0, "deviceId"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method protected setDeviceToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string/jumbo v0, "deviceToken"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method protected setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string/jumbo v0, "domain"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method protected setDownloadedAttachmentFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "downloadedAttachmentFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1091
    const-string/jumbo v0, "downloadedAttachmentFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1092
    return-void
.end method

.method protected setDownloadedImageFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "downloadedImageFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1145
    const-string/jumbo v0, "downloadedImageFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1146
    return-void
.end method

.method protected setDownloadedThumbnailFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "downloadedThumbnailFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1104
    const-string/jumbo v0, "downloadedThumbnailFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1105
    return-void
.end method

.method protected setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "email"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setEnableFullPrivacy(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 942
    const-string/jumbo v0, "fullPrivacy"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 943
    return-void
.end method

.method public setEtag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    .line 634
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getEtags()Lorg/json/JSONObject;

    move-result-object v1

    .line 635
    .local v1, "etags":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string/jumbo v2, "etags"

    invoke-direct {p0, v2, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v1    # "etags":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "set etag"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setForeground(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Boolean;

    .prologue
    .line 449
    const-string/jumbo v0, "foreground"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 450
    return-void
.end method

.method public setForegroundIssue(Ljava/lang/String;)V
    .locals 1
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string/jumbo v0, "foregroundIssue"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method protected setHideNameAndEmail(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 1005
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1006
    return-void
.end method

.method protected setIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string/jumbo v0, "identity"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setIsConversationShowing(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 926
    const-string/jumbo v0, "isConversationShowing"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 927
    return-void
.end method

.method protected setIssueCSatStates(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "states"    # Lorg/json/JSONObject;

    .prologue
    .line 984
    const-string/jumbo v0, "issueCSatStates"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 985
    return-void
.end method

.method public setIssuesTs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 257
    :try_start_0
    const-string/jumbo v2, "issuesTs"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 258
    .local v0, "allIssuesTs":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v2, "issuesTs"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "allIssuesTs":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setIssuesTs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLastErrorReportedTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1311
    const-string/jumbo v0, "lastErrorReportedTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1312
    return-void
.end method

.method protected setLaunchReviewCounter(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 605
    const-string/jumbo v0, "launchReviewCounter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    return-void
.end method

.method protected setLibraryVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string/jumbo v0, "libraryVersion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method protected setLoginIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "loginIdentifier"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string/jumbo v0, "loginIdentifier"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method protected setOpenConversations(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "openConversationsList"    # Ljava/util/List;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 463
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v2, "openConversations":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v3, "openConversations"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 466
    .local v0, "allOpenConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string/jumbo v3, "openConversations"

    invoke-direct {p0, v3, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "allOpenConversations":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "setOpenConversations"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireEmail(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 934
    const-string/jumbo v0, "requireEmail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 935
    return-void
.end method

.method protected setReviewCounter(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 597
    const-string/jumbo v0, "reviewCounter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    return-void
.end method

.method protected setReviewed()V
    .locals 2

    .prologue
    .line 609
    const-string/jumbo v0, "reviewed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    return-void
.end method

.method public setScreenShotDraft(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 918
    const-string/jumbo v0, "screenShotDraft"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 919
    return-void
.end method

.method protected setSdkLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1279
    const-string/jumbo v0, "sdkLanguage"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method protected setSdkType(Ljava/lang/String;)V
    .locals 1
    .param p1, "sdkType"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string/jumbo v0, "sdkType"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method protected setServerTimeDelta(Ljava/lang/Float;)V
    .locals 1
    .param p1, "delta"    # Ljava/lang/Float;

    .prologue
    .line 881
    const-string/jumbo v0, "serverTimeDelta"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Float;)V

    .line 882
    return-void
.end method

.method public setShowConversationResolutionQuestion(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 946
    const-string/jumbo v0, "showConversationResolutionQuestion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 947
    return-void
.end method

.method protected setShowSearchOnNewConversation(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 1021
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1022
    return-void
.end method

.method protected setStoredFiles(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "filenames"    # Lorg/json/JSONArray;

    .prologue
    .line 625
    const-string/jumbo v0, "cachedImages"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 626
    return-void
.end method

.method protected setUUID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 889
    const-string/jumbo v0, "uuid"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method protected setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string/jumbo v0, "username"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "conversationText"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 844
    :try_start_0
    const-string/jumbo v3, "allConversationDetails"

    invoke-direct {p0, v3}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 845
    .local v0, "allConversationDetails":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 846
    .local v1, "conversationDetail":Lorg/json/JSONObject;
    const-string/jumbo v3, "conversationText"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    const-string/jumbo v3, "conversationTextSetTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 848
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    const-string/jumbo v3, "allConversationDetails"

    invoke-direct {p0, v3, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .end local v1    # "conversationDetail":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v2

    .line 851
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "storeConversationDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected storeFailedApiCall(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "failedApiCall"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getFailedApiCalls()Lorg/json/JSONObject;

    move-result-object v0

    .line 817
    .local v0, "failedApiCalls":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    const-string/jumbo v1, "failedApiCalls"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 819
    return-void
.end method

.method protected storeFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "refers"    # Ljava/lang/String;
    .param p5, "failedState"    # I
    .param p6, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 790
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 791
    .local v0, "failedMessage":Lorg/json/JSONObject;
    const-string/jumbo v2, "issue_id"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string/jumbo v2, "created_at"

    sget-object v3, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 796
    const-string/jumbo v2, "origin"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string/jumbo v2, "refers"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string/jumbo v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 800
    invoke-virtual {p0, v0, p6}, Lcom/helpshift/support/HSStorage;->storeFailedMessage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method protected storeFailedMessage(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "failedMessage"    # Lorg/json/JSONObject;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-direct {p0, p2}, Lcom/helpshift/support/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 806
    .local v0, "failedMessages":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 807
    invoke-direct {p0, v0, p2}, Lcom/helpshift/support/HSStorage;->setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method protected storeIndex(Ljava/util/HashMap;)V
    .locals 6
    .param p1, "fullIndex"    # Ljava/util/HashMap;

    .prologue
    .line 654
    sput-object p1, Lcom/helpshift/support/HSStorage;->cacheIndex:Ljava/util/HashMap;

    .line 656
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/HSStorage;->context:Landroid/content/Context;

    const-string/jumbo v4, "fullIndex.db"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 657
    .local v1, "fStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 659
    .local v2, "oStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 661
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 662
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->setDBFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1    # "fStream":Ljava/io/FileOutputStream;
    .end local v2    # "oStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "store index"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public storeIssues(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 1
    .param p1, "issues"    # Lorg/json/JSONArray;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p2, p1}, Lcom/helpshift/support/util/IssuesUtil;->jsonArrayToIssueList(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->storeIssues(Ljava/util/List;)I

    .line 180
    invoke-direct {p0, p2}, Lcom/helpshift/support/HSStorage;->updateOpenConversations(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/helpshift/support/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public storeReply(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "replyText"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 823
    :try_start_0
    const-string/jumbo v2, "allReplyTexts"

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 824
    .local v0, "allReplyTexts":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string/jumbo v2, "allReplyTexts"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0    # "allReplyTexts":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "storeReply"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected unsetDBFlag()V
    .locals 2

    .prologue
    .line 696
    const-string/jumbo v0, "dbFlag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 697
    return-void
.end method

.method protected updateActiveConversation(Ljava/lang/String;)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v6, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v7, "dia"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 201
    .local v0, "dia":Ljava/lang/Boolean;
    const-string/jumbo v6, ""

    invoke-virtual {p0, v6, p1}, Lcom/helpshift/support/HSStorage;->setActiveConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 203
    invoke-static {p1}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/model/Issue;

    .line 205
    .local v1, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v1}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "issueId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 207
    .local v5, "status":Ljava/lang/Integer;
    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 209
    .local v4, "openConversations":Ljava/util/List;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x2

    .line 211
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 213
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/helpshift/support/HSStorage;->setActiveConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v1    # "issue":Lcom/helpshift/support/model/Issue;
    .end local v2    # "issueId":Ljava/lang/String;
    .end local v3    # "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    .end local v4    # "openConversations":Ljava/util/List;
    .end local v5    # "status":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 217
    .restart local v1    # "issue":Lcom/helpshift/support/model/Issue;
    .restart local v2    # "issueId":Ljava/lang/String;
    .restart local v3    # "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    .restart local v4    # "openConversations":Ljava/util/List;
    .restart local v5    # "status":Ljava/lang/Integer;
    :cond_3
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    const-string/jumbo v7, ""

    invoke-virtual {p0, v7, p1}, Lcom/helpshift/support/HSStorage;->setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateBreadCrumbsLimit(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "newLimit"    # Ljava/lang/Integer;

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getBreadCrumbsLimit()Ljava/lang/Integer;

    move-result-object v1

    .line 558
    .local v1, "currentLimit":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v0

    .line 561
    .local v0, "crumbsList":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 562
    .local v5, "newArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 564
    .local v2, "diff":Ljava/lang/Integer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 565
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 564
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    :cond_0
    const-string/jumbo v6, "breadCrumbs"

    invoke-direct {p0, v6, v5}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0    # "crumbsList":Lorg/json/JSONArray;
    .end local v2    # "diff":Ljava/lang/Integer;
    .end local v4    # "i":I
    .end local v5    # "newArray":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-void

    .line 569
    :catch_0
    move-exception v3

    .line 570
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while updating breadcrumbs limit"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateDisableHelpshiftBranding()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1283
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1285
    .local v0, "brandingDisabledFromInstall":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v2

    .line 1286
    .local v2, "config":Lorg/json/JSONObject;
    const-string/jumbo v4, "disableHelpshiftBranding"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1287
    const-string/jumbo v4, "disableHelpshiftBranding"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1293
    .end local v2    # "config":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1294
    .local v1, "brandingDisabledFromThemeData":Ljava/lang/Boolean;
    sget-object v4, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v7, "hl"

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1295
    sget-object v4, Lcom/helpshift/support/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v7, "hl"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1298
    :cond_1
    const-string/jumbo v4, "disableHelpshiftBranding"

    .line 1299
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1298
    invoke-direct {p0, v4, v5}, Lcom/helpshift/support/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1300
    return-void

    .line 1289
    .end local v1    # "brandingDisabledFromThemeData":Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    .line 1290
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v7, "isHelpshiftBrandingDisabled"

    invoke-static {v4, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "brandingDisabledFromThemeData":Ljava/lang/Boolean;
    :cond_4
    move v4, v6

    .line 1295
    goto :goto_1
.end method
