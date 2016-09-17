.class Lcom/helpshift/support/HSApiData$3$1;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/support/HSApiData$3;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/helpshift/support/HSApiData$3;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$3$1;->this$1:Lcom/helpshift/support/HSApiData$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$3$1;->this$1:Lcom/helpshift/support/HSApiData$3;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData$3;->this$0:Lcom/helpshift/support/HSApiData;

    # invokes: Lcom/helpshift/support/HSApiData;->updateIndex()V
    invoke-static {v0}, Lcom/helpshift/support/HSApiData;->access$100(Lcom/helpshift/support/HSApiData;)V

    .line 214
    invoke-static {}, Lcom/helpshift/support/HSApiData;->signalSearchIndexesUpdated()V

    .line 215
    return-void
.end method
