.class final Lcom/helpshift/support/SupportInternal$1;
.super Landroid/os/Handler;
.source "SupportInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/SupportInternal;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/support/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V

    .line 400
    # getter for: Lcom/helpshift/support/SupportInternal;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->access$100()Lcom/helpshift/support/HSStorage;

    move-result-object v0

    # getter for: Lcom/helpshift/support/SupportInternal;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->access$000()Lcom/helpshift/support/HSApiData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 401
    return-void
.end method
