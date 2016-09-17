.class public Lcom/helpshift/support/webkit/CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CustomWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private final customWebViewClientListeners:Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/helpshift/support/webkit/CustomWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/webkit/CustomWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customWebViewClientListeners"    # Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/helpshift/support/webkit/CustomWebViewClient;->customWebViewClientListeners:Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;

    .line 37
    iput-object p1, p0, Lcom/helpshift/support/webkit/CustomWebViewClient;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/helpshift/support/webkit/CustomWebViewClient;->customWebViewClientListeners:Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;

    invoke-interface {v0}, Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;->onPageFinished()V

    .line 65
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v0, p0, Lcom/helpshift/support/webkit/CustomWebViewClient;->customWebViewClientListeners:Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;

    invoke-interface {v0}, Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;->onPageStarted()V

    .line 59
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "inputUrl"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, "url":Ljava/net/URL;
    iget-object v5, p0, Lcom/helpshift/support/webkit/CustomWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 74
    .local v2, "storagePath":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .line 79
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_0
    if-eqz v3, :cond_0

    .line 80
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/"

    const-string/jumbo v6, "_"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, "saveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    :try_start_1
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v7, v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v1    # "saveFile":Ljava/io/File;
    :goto_1
    return-object v5

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v5, Lcom/helpshift/support/webkit/CustomWebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "MalformedURLException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "saveFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/helpshift/support/webkit/CustomWebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "FileNotFoundException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "saveFile":Ljava/io/File;
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto :goto_1

    .line 89
    .restart local v1    # "saveFile":Ljava/io/File;
    :cond_1
    invoke-static {v3}, Lcom/helpshift/support/util/FileUtil;->isImage(Ljava/net/URL;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    invoke-static {v3, v1}, Lcom/helpshift/support/util/FileUtil;->saveFile(Ljava/net/URL;Ljava/io/File;)V

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    const/4 v3, 0x1

    .line 52
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
