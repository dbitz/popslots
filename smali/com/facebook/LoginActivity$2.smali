.class Lcom/facebook/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    sget v2, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v1, v2}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "progressBarView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onBackgroundProcessingStopped()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    sget v2, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v1, v2}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "progressBarView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    return-void
.end method
