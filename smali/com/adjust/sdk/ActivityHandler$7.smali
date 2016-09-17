.class Lcom/adjust/sdk/ActivityHandler$7;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->launchDeeplink(Lcom/adjust/sdk/ResponseData;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$deeplink:Ljava/lang/String;

.field final synthetic val$mapIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$7;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$7;->val$deeplink:Ljava/lang/String;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$7;->val$mapIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 728
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$7;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # getter for: Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$1400(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string/jumbo v1, "Open deep link (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler$7;->val$deeplink:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$7;->this$0:Lcom/adjust/sdk/ActivityHandler;

    # getter for: Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;
    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$1200(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$7;->val$mapIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method
