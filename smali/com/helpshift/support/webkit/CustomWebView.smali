.class public Lcom/helpshift/support/webkit/CustomWebView;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-direct {p0}, Lcom/helpshift/support/webkit/CustomWebView;->configureWebView()V

    .line 12
    return-void
.end method

.method private configureWebView()V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/helpshift/support/webkit/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 16
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 17
    return-void
.end method
