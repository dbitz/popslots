.class Lcom/helpshift/support/HSApiClient$1;
.super Ljava/lang/Object;
.source "HSApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiClient;

.field final synthetic val$data:Ljava/util/HashMap;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$forErrorLog:Z

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$route:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiClient;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    iput-object p2, p0, Lcom/helpshift/support/HSApiClient$1;->val$data:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/support/HSApiClient$1;->val$method:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/helpshift/support/HSApiClient$1;->val$forErrorLog:Z

    iput-object p6, p0, Lcom/helpshift/support/HSApiClient$1;->val$success:Landroid/os/Handler;

    iput-object p7, p0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 273
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$data:Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 274
    .local v5, "dataCopy":Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    # invokes: Lcom/helpshift/support/HSApiClient;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/helpshift/support/HSApiClient;->access$000(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 276
    .local v28, "url":Ljava/lang/String;
    const/4 v8, 0x0

    .line 278
    .local v8, "connection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$method:Ljava/lang/String;

    const-string/jumbo v3, "GET"

    if-ne v2, v3, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiClient$1;->val$data:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/support/HSApiClient$1;->val$method:Ljava/lang/String;

    # invokes: Lcom/helpshift/support/HSApiClient;->addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, v4, v6, v7}, Lcom/helpshift/support/HSApiClient;->access$100(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/helpshift/support/HSApiClient;->constructGetParams(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/helpshift/support/HSApiClient;->access$200(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v22

    .line 280
    .local v22, "requestStr":Ljava/lang/String;
    new-instance v29, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 281
    .local v29, "urlObj":Ljava/net/URL;
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 282
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v2, "GET"

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 283
    # invokes: Lcom/helpshift/support/HSApiClient;->addHeadersToConnection(Ljava/net/HttpURLConnection;)V
    invoke-static {v8}, Lcom/helpshift/support/HSApiClient;->access$300(Ljava/net/HttpURLConnection;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    # getter for: Lcom/helpshift/support/HSApiClient;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {v2}, Lcom/helpshift/support/HSApiClient;->access$400(Lcom/helpshift/support/HSApiClient;)Lcom/helpshift/support/HSStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSStorage;->getEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, "etag":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    const-string/jumbo v2, "If-None-Match"

    invoke-virtual {v8, v2, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    .line 314
    .end local v12    # "etag":Ljava/lang/String;
    .end local v22    # "requestStr":Ljava/lang/String;
    .end local v29    # "urlObj":Ljava/net/URL;
    :cond_0
    :goto_0
    if-eqz v8, :cond_d

    .line 315
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    .line 316
    .local v27, "status":I
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 318
    .local v15, "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 319
    .local v14, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "ETag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    # getter for: Lcom/helpshift/support/HSApiClient;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {v2}, Lcom/helpshift/support/HSApiClient;->access$400(Lcom/helpshift/support/HSApiClient;)Lcom/helpshift/support/HSStorage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Lcom/helpshift/support/HSStorage;->setEtag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 398
    .end local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v27    # "status":I
    :catch_0
    move-exception v9

    .line 399
    .local v9, "e":Lorg/json/JSONException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    .line 400
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception JSON"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v28    # "url":Ljava/lang/String;
    :goto_2
    return-void

    .line 289
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v28    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$method:Ljava/lang/String;

    const-string/jumbo v3, "POST"

    if-ne v2, v3, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$forErrorLog:Z

    if-eqz v2, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiClient$1;->val$data:Ljava/util/HashMap;

    # invokes: Lcom/helpshift/support/HSApiClient;->addAuthErrorLog(Ljava/util/HashMap;)Ljava/util/HashMap;
    invoke-static {v3, v4}, Lcom/helpshift/support/HSApiClient;->access$500(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/helpshift/support/HSApiClient;->constructPostParams(Ljava/util/HashMap;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/helpshift/support/HSApiClient;->access$600(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v20

    .line 297
    .local v20, "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    :goto_3
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v29    # "urlObj":Ljava/net/URL;
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 299
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v2, "POST"

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 301
    const-string/jumbo v2, "Content-type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    # invokes: Lcom/helpshift/support/HSApiClient;->addHeadersToConnection(Ljava/net/HttpURLConnection;)V
    invoke-static {v8}, Lcom/helpshift/support/HSApiClient;->access$300(Ljava/net/HttpURLConnection;)V

    .line 305
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 306
    .local v19, "outputStream":Ljava/io/OutputStream;
    new-instance v30, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 307
    .local v30, "writer":Ljava/io/BufferedWriter;
    # invokes: Lcom/helpshift/support/HSApiClient;->constructPostParamsQuery(Ljava/util/List;)Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/helpshift/support/HSApiClient;->access$700(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedWriter;->flush()V

    .line 309
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedWriter;->close()V

    .line 310
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    goto/16 :goto_0

    .line 415
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .end local v20    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    .end local v28    # "url":Ljava/lang/String;
    .end local v29    # "urlObj":Ljava/net/URL;
    .end local v30    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v9

    .line 416
    .local v9, "e":Lcom/helpshift/exceptions/InstallException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "install() not called"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 294
    .end local v9    # "e":Lcom/helpshift/exceptions/InstallException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v28    # "url":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiClient$1;->val$data:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/support/HSApiClient$1;->val$method:Ljava/lang/String;

    # invokes: Lcom/helpshift/support/HSApiClient;->addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, v4, v6, v7}, Lcom/helpshift/support/HSApiClient;->access$100(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/helpshift/support/HSApiClient;->constructPostParams(Ljava/util/HashMap;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/helpshift/support/HSApiClient;->access$600(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_3
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v20

    .restart local v20    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    goto/16 :goto_3

    .line 324
    .end local v20    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/network/NameValuePair;>;"
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v27    # "status":I
    :cond_4
    :try_start_4
    const-string/jumbo v17, ""

    .line 325
    .local v17, "line":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v25, "responseStr":Ljava/lang/StringBuilder;
    const/16 v2, 0xc8

    move/from16 v0, v27

    if-lt v0, v2, :cond_6

    const/16 v2, 0x12c

    move/from16 v0, v27

    if-ge v0, v2, :cond_6

    .line 328
    new-instance v23, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 330
    .local v23, "response":Ljava/io/InputStream;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v24, v23

    .end local v23    # "response":Ljava/io/InputStream;
    .local v24, "response":Ljava/io/InputStream;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 331
    .restart local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 332
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "Content-Encoding"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 333
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "gzip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 334
    new-instance v23, Ljava/util/zip/GZIPInputStream;

    invoke-direct/range {v23 .. v24}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v24    # "response":Ljava/io/InputStream;
    .restart local v23    # "response":Ljava/io/InputStream;
    :goto_5
    move-object/from16 v24, v23

    .line 336
    .end local v23    # "response":Ljava/io/InputStream;
    .restart local v24    # "response":Ljava/io/InputStream;
    goto :goto_4

    .line 338
    .end local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 339
    .local v16, "inputStream":Ljava/io/InputStreamReader;
    new-instance v21, Ljava/io/BufferedReader;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_8

    .line 342
    .local v21, "rd":Ljava/io/BufferedReader;
    :goto_6
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 343
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_6

    .line 345
    :catch_2
    move-exception v13

    .line 346
    .local v13, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "IO Exception ex"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v16    # "inputStream":Ljava/io/InputStreamReader;
    .end local v21    # "rd":Ljava/io/BufferedReader;
    .end local v24    # "response":Ljava/io/InputStream;
    :cond_6
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v18, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/16 v2, 0xc8

    move/from16 v0, v27

    if-lt v0, v2, :cond_8

    const/16 v2, 0x12c

    move/from16 v0, v27

    if-ge v0, v2, :cond_8

    .line 353
    const/4 v2, 0x0

    # setter for: Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I
    invoke-static {v2}, Lcom/helpshift/support/HSApiClient;->access$802(I)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_8

    .line 355
    :try_start_7
    const-string/jumbo v2, "response"

    new-instance v3, Lorg/json/JSONArray;

    .line 356
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_8

    .line 365
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 366
    .local v26, "result":Landroid/os/Message;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$success:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    .end local v26    # "result":Landroid/os/Message;
    :cond_7
    :goto_8
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 401
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "messageResponse":Ljava/util/HashMap;
    .end local v25    # "responseStr":Ljava/lang/StringBuilder;
    .end local v27    # "status":I
    :catch_3
    move-exception v9

    .line 402
    .local v9, "e":Ljava/net/UnknownHostException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x3

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    .line 403
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Unknown Host"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_2

    .line 418
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .end local v28    # "url":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 419
    .local v9, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Malformed URL"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 357
    .end local v9    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "messageResponse":Ljava/util/HashMap;
    .restart local v25    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v27    # "status":I
    .restart local v28    # "url":Ljava/lang/String;
    :catch_5
    move-exception v10

    .line 359
    .local v10, "earr":Lorg/json/JSONException;
    :try_start_a
    const-string/jumbo v2, "response"

    new-instance v3, Lorg/json/JSONObject;

    .line 360
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    .line 361
    :catch_6
    move-exception v11

    .line 362
    .local v11, "eobj":Lorg/json/JSONException;
    :try_start_b
    throw v11
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_8

    .line 404
    .end local v10    # "earr":Lorg/json/JSONException;
    .end local v11    # "eobj":Lorg/json/JSONException;
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "messageResponse":Ljava/util/HashMap;
    .end local v25    # "responseStr":Ljava/lang/StringBuilder;
    .end local v27    # "status":I
    :catch_7
    move-exception v9

    .line 405
    .local v9, "e":Ljava/net/SocketException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x0

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    .line 406
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception cannot connect Host"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_2

    .line 421
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljava/net/SocketException;
    .end local v28    # "url":Ljava/lang/String;
    :catch_8
    move-exception v9

    .line 422
    .local v9, "e":Ljava/net/ProtocolException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Protocol"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 368
    .end local v9    # "e":Ljava/net/ProtocolException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "messageResponse":Ljava/util/HashMap;
    .restart local v25    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v27    # "status":I
    .restart local v28    # "url":Ljava/lang/String;
    :cond_8
    const/16 v2, 0x130

    move/from16 v0, v27

    if-ne v0, v2, :cond_9

    .line 369
    :try_start_d
    # operator++ for: Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I
    invoke-static {}, Lcom/helpshift/support/HSApiClient;->access$808()I

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 371
    .restart local v26    # "result":Landroid/os/Message;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$success:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_8

    .line 407
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "messageResponse":Ljava/util/HashMap;
    .end local v25    # "responseStr":Ljava/lang/StringBuilder;
    .end local v26    # "result":Landroid/os/Message;
    .end local v27    # "status":I
    :catch_9
    move-exception v9

    .line 408
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :try_start_e
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Socket timeout"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto/16 :goto_2

    .line 424
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    .end local v28    # "url":Ljava/lang/String;
    :catch_a
    move-exception v9

    .line 425
    .local v9, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Unknown Host"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x3

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 373
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "messageResponse":Ljava/util/HashMap;
    .restart local v25    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v27    # "status":I
    .restart local v28    # "url":Ljava/lang/String;
    :cond_9
    const/16 v2, 0x1a6

    move/from16 v0, v27

    if-ne v0, v2, :cond_c

    .line 374
    :try_start_f
    # operator++ for: Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I
    invoke-static {}, Lcom/helpshift/support/HSApiClient;->access$808()I

    .line 375
    # getter for: Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I
    invoke-static {}, Lcom/helpshift/support/HSApiClient;->access$800()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_b

    .line 376
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_a
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 377
    .restart local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "HS-UEpoch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    # getter for: Lcom/helpshift/support/HSApiClient;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {v2}, Lcom/helpshift/support/HSApiClient;->access$400(Lcom/helpshift/support/HSApiClient;)Lcom/helpshift/support/HSStorage;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/TimeUtil;->calculateTimeAdjustment(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/helpshift/support/HSStorage;->setServerTimeDelta(Ljava/lang/Float;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$method:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/support/HSApiClient$1;->val$route:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/helpshift/support/HSApiClient$1;->val$success:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    # invokes: Lcom/helpshift/support/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    invoke-static/range {v2 .. v7}, Lcom/helpshift/support/HSApiClient;->access$900(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_9

    .line 409
    .end local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "messageResponse":Ljava/util/HashMap;
    .end local v25    # "responseStr":Ljava/lang/StringBuilder;
    .end local v27    # "status":I
    :catch_b
    move-exception v9

    .line 410
    .local v9, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :try_start_10
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception SSL Peer Unverified"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_2

    .line 427
    .end local v5    # "dataCopy":Ljava/util/HashMap;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .end local v28    # "url":Ljava/lang/String;
    :catch_c
    move-exception v9

    .line 428
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception IO"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_2

    .line 383
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "dataCopy":Ljava/util/HashMap;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "messageResponse":Ljava/util/HashMap;
    .restart local v25    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v27    # "status":I
    .restart local v28    # "url":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    :try_start_11
    # setter for: Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I
    invoke-static {v2}, Lcom/helpshift/support/HSApiClient;->access$802(I)I

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 385
    .restart local v26    # "result":Landroid/os/Message;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_8

    .line 411
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "messageResponse":Ljava/util/HashMap;
    .end local v25    # "responseStr":Ljava/lang/StringBuilder;
    .end local v26    # "result":Landroid/os/Message;
    .end local v27    # "status":I
    :catch_d
    move-exception v9

    .line 412
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    .line 413
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception IO"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_2

    .line 389
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v18    # "messageResponse":Ljava/util/HashMap;
    .restart local v25    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v27    # "status":I
    :cond_c
    const/4 v2, 0x0

    :try_start_13
    # setter for: Lcom/helpshift/support/HSApiClient;->timeStampErrorReplies:I
    invoke-static {v2}, Lcom/helpshift/support/HSApiClient;->access$802(I)I

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 391
    .restart local v26    # "result":Landroid/os/Message;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 396
    .end local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v17    # "line":Ljava/lang/String;
    .end local v18    # "messageResponse":Ljava/util/HashMap;
    .end local v25    # "responseStr":Ljava/lang/StringBuilder;
    .end local v26    # "result":Landroid/os/Message;
    .end local v27    # "status":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/support/HSApiClient$1;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/support/HSApiClient$1;->val$failure:Landroid/os/Handler;

    const/4 v4, 0x3

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static {v2, v3, v4}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_2

    .restart local v14    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v15    # "headers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v24    # "response":Ljava/io/InputStream;
    .restart local v25    # "responseStr":Ljava/lang/StringBuilder;
    .restart local v27    # "status":I
    :cond_e
    move-object/from16 v23, v24

    .end local v24    # "response":Ljava/io/InputStream;
    .restart local v23    # "response":Ljava/io/InputStream;
    goto/16 :goto_5
.end method
