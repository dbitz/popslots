.class Lcom/helpshift/support/HSApiClient$2;
.super Ljava/lang/Object;
.source "HSApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiClient;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiClient;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$plainData:Ljava/util/HashMap;

.field final synthetic val$route:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiClient;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    iput-object p2, p0, Lcom/helpshift/support/HSApiClient$2;->val$plainData:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/helpshift/support/HSApiClient$2;->val$route:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/support/HSApiClient$2;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/support/HSApiClient$2;->val$success:Landroid/os/Handler;

    iput-object p6, p0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 42

    .prologue
    .line 456
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$plainData:Ljava/util/HashMap;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$route:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$method:Ljava/lang/String;

    move-object/from16 v41, v0

    # invokes: Lcom/helpshift/support/HSApiClient;->addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static/range {v38 .. v41}, Lcom/helpshift/support/HSApiClient;->access$100(Lcom/helpshift/support/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 457
    .local v11, "data":Ljava/util/HashMap;
    new-instance v33, Ljava/io/File;

    const-string/jumbo v38, "screenshot"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v33, "screenshotFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v39

    # invokes: Lcom/helpshift/support/HSApiClient;->getMimeType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v38 .. v39}, Lcom/helpshift/support/HSApiClient;->access$1100(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 459
    .local v34, "screenshotMimeType":Ljava/lang/String;
    const/16 v38, 0x7

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v38, 0x0

    const-string/jumbo v39, "image/jpeg"

    aput-object v39, v18, v38

    const/16 v38, 0x1

    const-string/jumbo v39, "image/png"

    aput-object v39, v18, v38

    const/16 v38, 0x2

    const-string/jumbo v39, "image/gif"

    aput-object v39, v18, v38

    const/16 v38, 0x3

    const-string/jumbo v39, "image/x-png"

    aput-object v39, v18, v38

    const/16 v38, 0x4

    const-string/jumbo v39, "image/x-citrix-pjpeg"

    aput-object v39, v18, v38

    const/16 v38, 0x5

    const-string/jumbo v39, "image/x-citrix-gif"

    aput-object v39, v18, v38

    const/16 v38, 0x6

    const-string/jumbo v39, "image/pjpeg"

    aput-object v39, v18, v38

    .line 466
    .local v18, "includeExts":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 467
    .local v4, "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v34

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_0

    .line 468
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v25, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v38, "status"

    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$success:Landroid/os/Handler;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v32

    .line 471
    .local v32, "result":Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_0 .. :try_end_0} :catch_1

    .line 612
    .end local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "data":Ljava/util/HashMap;
    .end local v18    # "includeExts":[Ljava/lang/String;
    .end local v25    # "messageResponse":Ljava/util/HashMap;
    .end local v32    # "result":Landroid/os/Message;
    .end local v33    # "screenshotFile":Ljava/io/File;
    .end local v34    # "screenshotMimeType":Ljava/lang/String;
    :goto_0
    return-void

    .line 476
    .restart local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "data":Ljava/util/HashMap;
    .restart local v18    # "includeExts":[Ljava/lang/String;
    .restart local v33    # "screenshotFile":Ljava/io/File;
    .restart local v34    # "screenshotMimeType":Ljava/lang/String;
    :cond_0
    const/16 v26, 0x0

    .line 478
    .local v26, "postUrl":Ljava/net/URL;
    :try_start_1
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$route:Ljava/lang/String;

    move-object/from16 v39, v0

    # invokes: Lcom/helpshift/support/HSApiClient;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v38 .. v39}, Lcom/helpshift/support/HSApiClient;->access$000(Lcom/helpshift/support/HSApiClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v26    # "postUrl":Ljava/net/URL;
    .local v27, "postUrl":Ljava/net/URL;
    move-object/from16 v26, v27

    .line 483
    .end local v27    # "postUrl":Ljava/net/URL;
    .restart local v26    # "postUrl":Ljava/net/URL;
    :goto_1
    :try_start_2
    const-string/jumbo v22, "\r\n"

    .line 484
    .local v22, "lineEnd":Ljava/lang/String;
    const-string/jumbo v36, "--"

    .line 485
    .local v36, "twoHyphens":Ljava/lang/String;
    const-string/jumbo v5, "*****"
    :try_end_2
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_2 .. :try_end_2} :catch_1

    .line 488
    .local v5, "boundary":Ljava/lang/String;
    const/4 v10, 0x0

    .line 494
    .local v10, "conn":Ljava/net/HttpURLConnection;
    if-eqz v26, :cond_6

    .line 495
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v38

    move-object/from16 v0, v38

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 497
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 499
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 501
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 503
    const-string/jumbo v38, "POST"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 504
    const/16 v38, 0x7530

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 505
    const/16 v38, 0x7530

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 507
    const-string/jumbo v38, "Connection"

    const-string/jumbo v39, "Keep-Alive"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v38, "Content-Type"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "multipart/form-data;boundary="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 511
    .local v12, "dos":Ljava/io/DataOutputStream;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 512
    new-instance v23, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 513
    .local v23, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_1
    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_2

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 514
    .local v20, "key":Ljava/lang/String;
    const-string/jumbo v39, "screenshot"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    .line 515
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 516
    .local v37, "value":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, "\"; "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 518
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Content-Type: text/plain;charset=UTF-8"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 519
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Content-Length: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 521
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 522
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 604
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .end local v20    # "key":Ljava/lang/String;
    .end local v23    # "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 605
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v38, "HelpShiftDebug"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static/range {v38 .. v40}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V
    :try_end_4
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 608
    .end local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "data":Ljava/util/HashMap;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "includeExts":[Ljava/lang/String;
    .end local v22    # "lineEnd":Ljava/lang/String;
    .end local v26    # "postUrl":Ljava/net/URL;
    .end local v33    # "screenshotFile":Ljava/io/File;
    .end local v34    # "screenshotMimeType":Ljava/lang/String;
    .end local v36    # "twoHyphens":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 609
    .local v13, "e":Lcom/helpshift/exceptions/InstallException;
    const-string/jumbo v38, "HelpShiftDebug"

    const-string/jumbo v39, "Error : "

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static/range {v38 .. v40}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 479
    .end local v13    # "e":Lcom/helpshift/exceptions/InstallException;
    .restart local v4    # "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "data":Ljava/util/HashMap;
    .restart local v18    # "includeExts":[Ljava/lang/String;
    .restart local v26    # "postUrl":Ljava/net/URL;
    .restart local v33    # "screenshotFile":Ljava/io/File;
    .restart local v34    # "screenshotMimeType":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 480
    .local v13, "e":Ljava/net/MalformedURLException;
    :try_start_5
    const-string/jumbo v38, "HelpShiftDebug"

    invoke-virtual {v13}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static/range {v38 .. v40}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V
    :try_end_5
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 526
    .end local v13    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "boundary":Ljava/lang/String;
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    .restart local v22    # "lineEnd":Ljava/lang/String;
    .restart local v23    # "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v36    # "twoHyphens":Ljava/lang/String;
    :cond_2
    :try_start_6
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 527
    .local v17, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 528
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Content-Disposition: form-data; name=\"screenshot\"; filename=\""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 529
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 528
    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 530
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Content-Type: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 531
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Content-Length: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->length()J

    move-result-wide v40

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 536
    const/high16 v24, 0x100000

    .line 538
    .local v24, "maxBufferSize":I
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 540
    .local v8, "bytesAvailable":I
    move/from16 v0, v24

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 541
    .local v7, "bufferSize":I
    new-array v6, v7, [B

    .line 544
    .local v6, "buffer":[B
    const/16 v38, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 546
    .local v9, "bytesRead":I
    :goto_3
    if-lez v9, :cond_3

    .line 547
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v12, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 548
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 549
    move/from16 v0, v24

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 550
    const/16 v38, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    goto :goto_3

    .line 553
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 554
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 558
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v35

    .line 560
    .local v35, "status":I
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v30, "responseStr":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v31

    .line 562
    .local v31, "responseStream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 563
    .local v19, "inputStream":Ljava/io/InputStreamReader;
    new-instance v28, Ljava/io/BufferedReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_6 .. :try_end_6} :catch_1

    .line 566
    .local v28, "rd":Ljava/io/BufferedReader;
    :goto_4
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, "line":Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 567
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 569
    .end local v21    # "line":Ljava/lang/String;
    :catch_3
    move-exception v16

    .line 570
    .local v16, "ex":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v38, "HelpShiftDebug"

    const-string/jumbo v39, "IO Exception ex"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static/range {v38 .. v40}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V

    .line 573
    .end local v16    # "ex":Ljava/io/IOException;
    :cond_4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 575
    .local v29, "response":Ljava/lang/String;
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 576
    .restart local v25    # "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v38, "status"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_8 .. :try_end_8} :catch_1

    .line 578
    const/16 v38, 0xc8

    move/from16 v0, v35

    move/from16 v1, v38

    if-lt v0, v1, :cond_5

    const/16 v38, 0x12c

    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_5

    .line 580
    :try_start_9
    const-string/jumbo v38, "response"

    new-instance v39, Lorg/json/JSONArray;

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_9 .. :try_end_9} :catch_1

    .line 590
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$success:Landroid/os/Handler;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v32

    .line 591
    .restart local v32    # "result":Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$success:Landroid/os/Handler;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    :goto_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 599
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 600
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 582
    .end local v32    # "result":Landroid/os/Message;
    :catch_4
    move-exception v14

    .line 584
    .local v14, "earr":Lorg/json/JSONException;
    :try_start_b
    const-string/jumbo v38, "response"

    new-instance v39, Lorg/json/JSONObject;

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 586
    :catch_5
    move-exception v15

    .line 587
    .local v15, "eobj":Lorg/json/JSONException;
    :try_start_c
    throw v15

    .line 594
    .end local v14    # "earr":Lorg/json/JSONException;
    .end local v15    # "eobj":Lorg/json/JSONException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v32

    .line 595
    .restart local v32    # "result":Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 602
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .end local v17    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v19    # "inputStream":Ljava/io/InputStreamReader;
    .end local v23    # "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "maxBufferSize":I
    .end local v25    # "messageResponse":Ljava/util/HashMap;
    .end local v28    # "rd":Ljava/io/BufferedReader;
    .end local v29    # "response":Ljava/lang/String;
    .end local v30    # "responseStr":Ljava/lang/StringBuilder;
    .end local v31    # "responseStream":Ljava/io/InputStream;
    .end local v32    # "result":Landroid/os/Message;
    .end local v35    # "status":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->this$0:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiClient$2;->val$failure:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    # invokes: Lcom/helpshift/support/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V
    invoke-static/range {v38 .. v40}, Lcom/helpshift/support/HSApiClient;->access$1000(Lcom/helpshift/support/HSApiClient;Landroid/os/Handler;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/helpshift/exceptions/InstallException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0
.end method
