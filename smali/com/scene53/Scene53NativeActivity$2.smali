.class Lcom/scene53/Scene53NativeActivity$2;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashlyticsListener;


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
    .line 399
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$2;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashlyticsDidDetectCrashDuringPreviousExecution()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->setAppCrashed(Z)V

    .line 403
    return-void
.end method
