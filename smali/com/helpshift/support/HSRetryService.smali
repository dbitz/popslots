.class public final Lcom/helpshift/support/HSRetryService;
.super Landroid/app/Service;
.source "HSRetryService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private data:Lcom/helpshift/support/HSApiData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/HSRetryService;->data:Lcom/helpshift/support/HSApiData;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 14
    iget-object v0, p0, Lcom/helpshift/support/HSRetryService;->data:Lcom/helpshift/support/HSApiData;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/HSRetryService;->data:Lcom/helpshift/support/HSApiData;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSRetryService;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->sendFailedMessages()V

    .line 18
    iget-object v0, p0, Lcom/helpshift/support/HSRetryService;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->sendFailedApiCalls()V

    .line 20
    invoke-virtual {p0}, Lcom/helpshift/support/HSRetryService;->stopSelf()V

    .line 22
    const/4 v0, 0x2

    return v0
.end method
