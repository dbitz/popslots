.class public Lcom/helpshift/support/flows/ConversationFlow;
.super Ljava/lang/Object;
.source "ConversationFlow.java"

# interfaces
.implements Lcom/helpshift/support/flows/Flow;


# instance fields
.field private final config:Ljava/util/HashMap;

.field private final labelResId:I

.field private supportController:Lcom/helpshift/support/controllers/SupportController;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "labelResId"    # I

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/helpshift/support/flows/ConversationFlow;-><init>(ILjava/util/Map;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .param p1, "labelResId"    # I
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/helpshift/support/flows/ConversationFlow;->labelResId:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/helpshift/support/flows/ConversationFlow;->config:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public getLabelResId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/helpshift/support/flows/ConversationFlow;->labelResId:I

    return v0
.end method

.method public performAction()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/helpshift/support/flows/ConversationFlow;->config:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "cleanConfig":Landroid/os/Bundle;
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/helpshift/support/flows/ConversationFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/support/controllers/SupportController;->startConversationFlow(Landroid/os/Bundle;Z)V

    .line 69
    return-void
.end method

.method public setSupportController(Lcom/helpshift/support/controllers/SupportController;)V
    .locals 0
    .param p1, "supportController"    # Lcom/helpshift/support/controllers/SupportController;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/helpshift/support/flows/ConversationFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 51
    return-void
.end method
