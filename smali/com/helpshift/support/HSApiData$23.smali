.class Lcom/helpshift/support/HSApiData$23;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->sendFailedApiCalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$23;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$23;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->sendFailedApiCalls()V

    .line 1588
    return-void
.end method
