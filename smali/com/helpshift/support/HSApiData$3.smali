.class Lcom/helpshift/support/HSApiData$3;
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

.field final synthetic val$callback:Landroid/os/Handler;

.field final synthetic val$faqTagFilter:Lcom/helpshift/support/FaqTagFilter;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$3;->val$callback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/support/HSApiData$3;->val$faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 201
    .local v3, "result":Ljava/util/HashMap;
    if-eqz v3, :cond_0

    .line 202
    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 204
    .local v0, "faqs":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;
    invoke-static {v4}, Lcom/helpshift/support/HSApiData;->access$000(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/SectionDAO;

    move-result-object v4

    invoke-interface {v4}, Lcom/helpshift/support/storage/SectionDAO;->clearSectionsData()V

    .line 205
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;
    invoke-static {v4}, Lcom/helpshift/support/HSApiData;->access$000(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/SectionDAO;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/helpshift/support/storage/SectionDAO;->storeSections(Lorg/json/JSONArray;)V

    .line 206
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 207
    .local v2, "msgToPost":Landroid/os/Message;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;
    invoke-static {v4}, Lcom/helpshift/support/HSApiData;->access$000(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/SectionDAO;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/support/HSApiData$3;->val$faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-interface {v4, v5}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    sget v4, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NEW_DATA:I

    iput v4, v2, Landroid/os/Message;->what:I

    .line 209
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/helpshift/support/HSApiData$3$1;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSApiData$3$1;-><init>(Lcom/helpshift/support/HSApiData$3;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    .local v1, "indexThread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 218
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 225
    .end local v0    # "faqs":Lorg/json/JSONArray;
    .end local v1    # "indexThread":Ljava/lang/Thread;
    :goto_0
    invoke-static {}, Lcom/helpshift/support/HSApiData;->signalFaqsUpdated()V

    .line 226
    return-void

    .line 220
    .end local v2    # "msgToPost":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 221
    .restart local v2    # "msgToPost":Landroid/os/Message;
    sget v4, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NO_NEW_DATA:I

    iput v4, v2, Landroid/os/Message;->what:I

    .line 222
    iget-object v4, p0, Lcom/helpshift/support/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
