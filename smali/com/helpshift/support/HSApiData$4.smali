.class Lcom/helpshift/support/HSApiData$4;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$4;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$4;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 233
    .local v1, "result":Ljava/util/HashMap;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/helpshift/support/HSApiData;->faqsSyncing:Z

    .line 234
    iget-object v2, p0, Lcom/helpshift/support/HSApiData$4;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    sget v2, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_FAILURE:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 237
    iget-object v2, p0, Lcom/helpshift/support/HSApiData$4;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    return-void
.end method
