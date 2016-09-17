.class final Lcom/scene53/gcm/GCMUtils$1;
.super Landroid/os/AsyncTask;
.source "GCMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/gcm/GCMUtils;->getRegId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/scene53/gcm/GCMUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 24
    const-string/jumbo v1, ""

    .line 26
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/scene53/gcm/GCMUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {}, Lcom/scene53/gcm/GCMUtils;->access$000()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    if-nez v2, :cond_0

    .line 27
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scene53/Scene53App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    # setter for: Lcom/scene53/gcm/GCMUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {v2}, Lcom/scene53/gcm/GCMUtils;->access$002(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 29
    :cond_0
    # getter for: Lcom/scene53/gcm/GCMUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {}, Lcom/scene53/gcm/GCMUtils;->access$000()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "119254686464"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/scene53/gcm/GCMUtils;->regid:Ljava/lang/String;
    invoke-static {v2}, Lcom/scene53/gcm/GCMUtils;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    # getter for: Lcom/scene53/gcm/GCMUtils;->regid:Ljava/lang/String;
    invoke-static {}, Lcom/scene53/gcm/GCMUtils;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scene53/gcm/GCMUtils;->setDeviceToken(Ljava/lang/String;)V

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device registered, registration ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/scene53/gcm/GCMUtils;->regid:Ljava/lang/String;
    invoke-static {}, Lcom/scene53/gcm/GCMUtils;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string/jumbo v2, "GCM"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/scene53/gcm/GCMUtils$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GCM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
