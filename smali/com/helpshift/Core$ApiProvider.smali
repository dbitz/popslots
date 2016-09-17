.class public interface abstract Lcom/helpshift/Core$ApiProvider;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiProvider"
.end annotation


# virtual methods
.method public abstract _handlePush(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract _handlePush(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract _install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract _install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract _login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract _logout()V
.end method

.method public abstract _registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract _setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
.end method
