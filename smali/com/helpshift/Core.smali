.class public Lcom/helpshift/Core;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/Core$ApiProvider;
    }
.end annotation


# static fields
.field private static apiProvider:Lcom/helpshift/Core$ApiProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 205
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0, p0, p1}, Lcom/helpshift/Core$ApiProvider;->_handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public static handlePush(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 210
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0, p0, p1}, Lcom/helpshift/Core$ApiProvider;->_handlePush(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public static init(Lcom/helpshift/Core$ApiProvider;)V
    .locals 0
    .param p0, "apiProvider"    # Lcom/helpshift/Core$ApiProvider;

    .prologue
    .line 27
    sput-object p0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    .line 28
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 67
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/helpshift/Core$ApiProvider;->_install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "config"    # Ljava/util/Map;

    .prologue
    .line 119
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 120
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/helpshift/Core$ApiProvider;->_install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 225
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/helpshift/Core$ApiProvider;->_login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static logout()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 235
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0}, Lcom/helpshift/Core$ApiProvider;->_logout()V

    .line 236
    return-void
.end method

.method public static registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 155
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0, p0, p1}, Lcom/helpshift/Core$ApiProvider;->_registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/helpshift/Core;->verifyInit()V

    .line 48
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    invoke-interface {v0, p0, p1}, Lcom/helpshift/Core$ApiProvider;->_setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private static verifyInit()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/helpshift/Core;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string/jumbo v1, "com.Helpshift.Core.init() method not called"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method
