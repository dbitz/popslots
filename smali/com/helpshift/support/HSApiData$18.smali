.class Lcom/helpshift/support/HSApiData$18;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;

.field final synthetic val$publishId:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$18;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$18;->val$publishId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/support/HSApiData$18;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1342
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1343
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1344
    .local v1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$18;->this$0:Lcom/helpshift/support/HSApiData;

    # getter for: Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;
    invoke-static {v3}, Lcom/helpshift/support/HSApiData;->access$000(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/SectionDAO;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/HSApiData$18;->val$publishId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v2

    .line 1346
    .local v2, "toReturn":Lcom/helpshift/support/Section;
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$18;->val$success:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1347
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1348
    iget-object v3, p0, Lcom/helpshift/support/HSApiData$18;->val$success:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1349
    return-void
.end method
