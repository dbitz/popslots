.class Lcom/scene53/Scene53NativeActivity$4;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->facebookLogin()V
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
    .line 486
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$4;->this$0:Lcom/scene53/Scene53NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 490
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v0

    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v1, :cond_0

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->onFacebookLogin(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
