.class Lcom/helpshift/support/HSAddIssueFragment$7;
.super Landroid/os/Handler;
.source "HSAddIssueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSAddIssueFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSAddIssueFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSAddIssueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment$7;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NO_NEW_DATA:I

    if-eq v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment$7;->this$0:Lcom/helpshift/support/HSAddIssueFragment;

    # getter for: Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;
    invoke-static {v0}, Lcom/helpshift/support/HSAddIssueFragment;->access$200(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/HSApiData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->loadIndex()V

    .line 323
    invoke-static {}, Lcom/helpshift/support/util/HSTransliterator;->init()V

    .line 325
    :cond_0
    return-void
.end method
