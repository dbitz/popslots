.class final Lcom/helpshift/support/util/HSNotification$1;
.super Landroid/os/Handler;
.source "HSNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/util/HSNotification;->getNotifHandler(Landroid/content/Context;Lcom/helpshift/support/util/HSPolling;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$data:Lcom/helpshift/support/HSApiData;

.field final synthetic val$notifCountPoller:Lcom/helpshift/support/util/HSPolling;


# direct methods
.method constructor <init>(Lcom/helpshift/support/util/HSPolling;Lcom/helpshift/support/HSApiData;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/helpshift/support/util/HSNotification$1;->val$notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    iput-object p2, p0, Lcom/helpshift/support/util/HSNotification$1;->val$data:Lcom/helpshift/support/HSApiData;

    iput-object p3, p0, Lcom/helpshift/support/util/HSNotification$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lorg/json/JSONArray;

    .line 171
    .local v12, "issues":Lorg/json/JSONArray;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/util/HSNotification$1;->val$notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    if-eqz v2, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/util/HSNotification$1;->val$notifCountPoller:Lcom/helpshift/support/util/HSPolling;

    invoke-virtual {v2}, Lcom/helpshift/support/util/HSPolling;->resetInterval()V

    .line 174
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_3

    .line 175
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 176
    .local v10, "issue":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "issueId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/util/HSNotification$1;->val$data:Lcom/helpshift/support/HSApiData;

    iget-object v2, v2, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getForegroundIssue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-static {v11}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v16

    .line 179
    .local v16, "storedIssue":Lcom/helpshift/support/model/Issue;
    const-string/jumbo v2, "messages"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 181
    .local v14, "messages":Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 182
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 183
    .local v13, "lastMessage":Lorg/json/JSONObject;
    const-string/jumbo v2, "origin"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "origin":Ljava/lang/String;
    const-string/jumbo v2, "type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 185
    .local v17, "type":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/helpshift/support/util/MessagesUtil;->notificationsTurnedOff(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    .end local v13    # "lastMessage":Lorg/json/JSONObject;
    .end local v14    # "messages":Lorg/json/JSONArray;
    .end local v15    # "origin":Ljava/lang/String;
    .end local v16    # "storedIssue":Lcom/helpshift/support/model/Issue;
    .end local v17    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 190
    .restart local v14    # "messages":Lorg/json/JSONArray;
    .restart local v16    # "storedIssue":Lcom/helpshift/support/model/Issue;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/helpshift/support/model/Issue;->getNewMessagesCount()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 191
    .local v5, "messCnt":I
    if-eqz v5, :cond_1

    .line 193
    :try_start_1
    sget-object v2, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "created_at"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-int v4, v2

    .line 194
    .local v4, "ts":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/util/HSNotification$1;->val$c:Landroid/content/Context;

    const-string/jumbo v3, "id"

    .line 195
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "inapp"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/support/util/HSNotification$1;->val$c:Landroid/content/Context;

    .line 199
    invoke-static {v7}, Lcom/helpshift/support/util/HSNotification;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-static/range {v2 .. v7}, Lcom/helpshift/support/util/HSNotification;->showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 200
    .end local v4    # "ts":I
    :catch_0
    move-exception v8

    .line 201
    .local v8, "e":Ljava/text/ParseException;
    :try_start_2
    # getter for: Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/util/HSNotification;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 206
    .end local v5    # "messCnt":I
    .end local v8    # "e":Ljava/text/ParseException;
    .end local v9    # "i":I
    .end local v10    # "issue":Lorg/json/JSONObject;
    .end local v11    # "issueId":Ljava/lang/String;
    .end local v14    # "messages":Lorg/json/JSONArray;
    .end local v16    # "storedIssue":Lcom/helpshift/support/model/Issue;
    :catch_1
    move-exception v8

    .line 207
    .local v8, "e":Lorg/json/JSONException;
    # getter for: Lcom/helpshift/support/util/HSNotification;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/util/HSNotification;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    return-void
.end method
