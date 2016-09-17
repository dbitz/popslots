.class Lcom/scene53/Scene53NativeActivity$1$1;
.super Ljava/util/TimerTask;
.source "Scene53NativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity$1;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scene53/Scene53NativeActivity$1;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity$1;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$1$1;->this$1:Lcom/scene53/Scene53NativeActivity$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity$1$1;->this$1:Lcom/scene53/Scene53NativeActivity$1;

    iget-object v0, v0, Lcom/scene53/Scene53NativeActivity$1;->this$0:Lcom/scene53/Scene53NativeActivity;

    new-instance v1, Lcom/scene53/Scene53NativeActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/scene53/Scene53NativeActivity$1$1$1;-><init>(Lcom/scene53/Scene53NativeActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/scene53/Scene53NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method
