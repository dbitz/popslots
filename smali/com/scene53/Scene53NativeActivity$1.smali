.class Lcom/scene53/Scene53NativeActivity$1;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->runWithNavigationBar()V
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
    .line 277
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$1;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 280
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 281
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/scene53/Scene53NativeActivity$1$1;

    invoke-direct {v1, p0}, Lcom/scene53/Scene53NativeActivity$1$1;-><init>(Lcom/scene53/Scene53NativeActivity$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 292
    return-void
.end method
