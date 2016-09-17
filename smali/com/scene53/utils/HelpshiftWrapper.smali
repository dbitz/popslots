.class public Lcom/scene53/utils/HelpshiftWrapper;
.super Ljava/lang/Object;
.source "HelpshiftWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scene53/utils/HelpshiftWrapper$MyHelpshiftDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "userName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 62
    .local v6, "mutex":Ljava/lang/Object;
    monitor-enter v6

    .line 63
    :try_start_0
    new-instance v0, Lcom/scene53/utils/HelpshiftWrapper$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/scene53/utils/HelpshiftWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_0
    :try_start_2
    const-string/jumbo v0, "Scene53"

    const-string/jumbo v1, "Helpshift initialize finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v6

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static openDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "metadata"    # Ljava/util/HashMap;
    .param p3, "hashTags"    # [Ljava/lang/String;

    .prologue
    .line 113
    const-string/jumbo v1, "Scene53"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Helpshift openDialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v1, ""

    invoke-static {p1, v1}, Lcom/helpshift/Core;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "hs-tags"

    invoke-virtual {p2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, "config":Ljava/util/HashMap;
    const-string/jumbo v1, "hs-custom-metadata"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p0, v0}, Lcom/helpshift/support/Support;->showFAQs(Landroid/app/Activity;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public static registerDeviceToken(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/scene53/utils/HelpshiftWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/scene53/utils/HelpshiftWrapper$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method
