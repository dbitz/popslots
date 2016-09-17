.class final Lcom/scene53/utils/HelpshiftWrapper$1;
.super Ljava/lang/Object;
.source "HelpshiftWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/HelpshiftWrapper;->initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apiKey:Ljava/lang/String;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$mutex:Ljava/lang/Object;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$userName:Ljava/lang/String;

    iput-object p6, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$mutex:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/helpshift/support/Support;->getInstance()Lcom/helpshift/support/Support;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/Core;->init(Lcom/helpshift/Core$ApiProvider;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "config":Ljava/util/HashMap;
    const-string/jumbo v1, "notificationIcon"

    const v2, 0x7f0200c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v1

    iget-object v2, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$apiKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$appId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/helpshift/Core;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    iget-object v1, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$userName:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/helpshift/Core;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/scene53/utils/HelpshiftWrapper$MyHelpshiftDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/scene53/utils/HelpshiftWrapper$MyHelpshiftDelegate;-><init>(Lcom/scene53/utils/HelpshiftWrapper$1;)V

    invoke-static {v1}, Lcom/helpshift/support/Support;->setDelegate(Lcom/helpshift/support/Support$Delegate;)V

    .line 73
    new-instance v1, Lcom/scene53/utils/HelpshiftWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/scene53/utils/HelpshiftWrapper$1$1;-><init>(Lcom/scene53/utils/HelpshiftWrapper$1;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/helpshift/support/Support;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 87
    iget-object v2, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/scene53/utils/HelpshiftWrapper$1;->val$mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 89
    monitor-exit v2

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
