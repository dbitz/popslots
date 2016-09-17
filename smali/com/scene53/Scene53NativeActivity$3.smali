.class Lcom/scene53/Scene53NativeActivity$3;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->initCrashlytics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/Scene53NativeActivity;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$3;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "crashEventData":Lcom/crashlytics/android/core/internal/models/SessionEventData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 418
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    invoke-static {}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_1

    .line 423
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/scene53/Scene53NativeActivity;->setAppCrashed(Z)V

    .line 427
    :cond_0
    const-string/jumbo v3, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Crashlytics NDK crash "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "detected"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 416
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_2
    const-string/jumbo v2, "not "

    goto :goto_2

    .line 419
    :catch_0
    move-exception v2

    goto :goto_1
.end method
