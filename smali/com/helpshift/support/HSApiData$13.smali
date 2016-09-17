.class Lcom/helpshift/support/HSApiData$13;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getAndStoreMessages(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$13;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$13;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1136
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 1137
    .local v2, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 1139
    .local v0, "messages":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/helpshift/support/util/IssuesUtil;->jsonArrayToMessageList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessages(Ljava/util/List;)I

    .line 1140
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$13;->val$success:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1141
    .local v1, "msgToPost":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1142
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$13;->val$success:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    return-void
.end method
