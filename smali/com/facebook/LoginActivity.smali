.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginActivity:Result"

.field private static final SAVED_AUTH_CLIENT:Ljava/lang/String; = "authorizationClient"

.field private static final SAVED_CALLING_PKG_KEY:Ljava/lang/String; = "callingPackage"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private callingPackage:Ljava/lang/String;

.field private request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/LoginActivity;
    .param p1, "x1"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/LoginActivity;->onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method private onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 5
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 95
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 97
    iget-object v3, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v4, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    .line 100
    .local v1, "resultCode":I
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "com.facebook.LoginActivity:Result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 103
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v1, v2}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    .line 108
    return-void

    .line 97
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "resultCode":I
    .end local v2    # "resultIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 153
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_login_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->setContentView(I)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string/jumbo v0, "callingPackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "authorizationClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient;

    iput-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p0}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/app/Activity;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v1, Lcom/facebook/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v1, Lcom/facebook/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V

    .line 92
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/facebook/AuthorizationClient;

    invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V

    iput-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 65
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    iput-object v0, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->cancelCurrentHandler()V

    .line 131
    sget v1, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {p0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "progressBarView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 133
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    iget-object v1, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string/jumbo v0, "callingPackage"

    iget-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "authorizationClient"

    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 143
    return-void
.end method
