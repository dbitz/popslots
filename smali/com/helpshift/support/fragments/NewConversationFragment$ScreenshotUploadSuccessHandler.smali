.class Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;
.super Landroid/os/Handler;
.source "NewConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/NewConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotUploadSuccessHandler"
.end annotation


# instance fields
.field private final issueId:Ljava/lang/String;

.field private final newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/fragments/NewConversationFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final screenshotPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/fragments/NewConversationFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/fragments/NewConversationFragment;
    .param p2, "issueId"    # Ljava/lang/String;
    .param p3, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object p2, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;->issueId:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;->screenshotPath:Ljava/lang/String;

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget-object v9, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;->newConversationFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/support/fragments/NewConversationFragment;

    .line 233
    .local v5, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    if-eqz v5, :cond_2

    .line 234
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$000(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v0

    .line 235
    .local v0, "data":Lcom/helpshift/support/HSApiData;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->getLatestIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;
    invoke-static {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$100(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;

    move-result-object v3

    .line 236
    .local v3, "getLatestIssuesSuccessHandler":Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    .line 237
    .local v7, "result":Ljava/util/HashMap;
    const-string/jumbo v9, "response"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 240
    .local v4, "message":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v2, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v9, "type"

    const-string/jumbo v10, "url"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v9, "body"

    const-string/jumbo v10, "meta"

    .line 243
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "attachments"

    .line 244
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x0

    .line 245
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "url"

    .line 246
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 242
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v9, "id"

    iget-object v10, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;->issueId:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v9, "m"

    invoke-static {v9, v2}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 250
    invoke-static {}, Lcom/helpshift/support/Support;->getDelegate()Lcom/helpshift/support/Support$Delegate;

    move-result-object v8

    .line 251
    .local v8, "supportDelegate":Lcom/helpshift/support/Support$Delegate;
    if-eqz v8, :cond_0

    .line 252
    const-string/jumbo v9, "User sent a screenshot"

    invoke-interface {v8, v9}, Lcom/helpshift/support/Support$Delegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-virtual {v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;->screenshotPath:Ljava/lang/String;

    const-string/jumbo v11, "meta"

    .line 258
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "refers"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 255
    invoke-static {v9, v0, v10, v11, v12}, Lcom/helpshift/support/util/AttachmentUtil;->copyAttachment(Landroid/content/Context;Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    .end local v2    # "eventData":Lorg/json/JSONObject;
    .end local v8    # "supportDelegate":Lcom/helpshift/support/Support$Delegate;
    :goto_0
    :try_start_1
    const-string/jumbo v9, "meta"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "refers"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "refers":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 269
    invoke-static {v6}, Lcom/helpshift/support/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {v0, v3, v3}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 276
    .end local v0    # "data":Lcom/helpshift/support/HSApiData;
    .end local v3    # "getLatestIssuesSuccessHandler":Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;
    .end local v4    # "message":Lorg/json/JSONObject;
    .end local v6    # "refers":Ljava/lang/String;
    .end local v7    # "result":Ljava/util/HashMap;
    :cond_2
    :goto_1
    return-void

    .line 260
    .restart local v0    # "data":Lcom/helpshift/support/HSApiData;
    .restart local v3    # "getLatestIssuesSuccessHandler":Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;
    .restart local v4    # "message":Lorg/json/JSONObject;
    .restart local v7    # "result":Ljava/util/HashMap;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "ScreenshotUploadSuccessHandler - IOException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 262
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 263
    .local v1, "e":Lorg/json/JSONException;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "ScreenshotUploadSuccessHandler - JSONException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 272
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 273
    .restart local v1    # "e":Lorg/json/JSONException;
    # getter for: Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/support/fragments/NewConversationFragment;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "uploadSuccessHandler"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
