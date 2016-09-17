.class Lcom/scene53/Scene53NativeActivity$1$1$1;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/scene53/Scene53NativeActivity$1$1;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity$1$1;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$1$1$1;->this$2:Lcom/scene53/Scene53NativeActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity$1$1$1;->this$2:Lcom/scene53/Scene53NativeActivity$1$1;

    iget-object v0, v0, Lcom/scene53/Scene53NativeActivity$1$1;->this$1:Lcom/scene53/Scene53NativeActivity$1;

    iget-object v0, v0, Lcom/scene53/Scene53NativeActivity$1;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-virtual {v0}, Lcom/scene53/Scene53NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 288
    return-void
.end method
