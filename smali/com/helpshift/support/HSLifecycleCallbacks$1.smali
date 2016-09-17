.class Lcom/helpshift/support/HSLifecycleCallbacks$1;
.super Landroid/os/Handler;
.source "HSLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSLifecycleCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSLifecycleCallbacks;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/helpshift/support/HSLifecycleCallbacks$1;->this$0:Lcom/helpshift/support/HSLifecycleCallbacks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/helpshift/support/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V

    .line 75
    # getter for: Lcom/helpshift/support/HSLifecycleCallbacks;->data:Lcom/helpshift/support/HSApiData;
    invoke-static {}, Lcom/helpshift/support/HSLifecycleCallbacks;->access$000()Lcom/helpshift/support/HSApiData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "profileId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    # getter for: Lcom/helpshift/support/HSLifecycleCallbacks;->storage:Lcom/helpshift/support/HSStorage;
    invoke-static {}, Lcom/helpshift/support/HSLifecycleCallbacks;->access$100()Lcom/helpshift/support/HSStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpshift/support/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
