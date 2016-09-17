.class public Lcom/helpshift/support/flows/FAQsFlow;
.super Ljava/lang/Object;
.source "FAQsFlow.java"

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
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/helpshift/support/flows/FAQsFlow;-><init>(ILjava/util/Map;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .param p1, "labelResId"    # I
    .param p2, "config"    # Ljava/util/Map;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/helpshift/support/flows/FAQsFlow;->labelResId:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/helpshift/support/flows/FAQsFlow;->config:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public getLabelResId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/helpshift/support/flows/FAQsFlow;->labelResId:I

    return v0
.end method

.method public performAction()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/helpshift/support/flows/FAQsFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    iget-object v1, p0, Lcom/helpshift/support/flows/FAQsFlow;->config:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/controllers/SupportController;->startFaqFlow(Landroid/os/Bundle;Z)V

    .line 65
    return-void
.end method

.method public setSupportController(Lcom/helpshift/support/controllers/SupportController;)V
    .locals 0
    .param p1, "supportController"    # Lcom/helpshift/support/controllers/SupportController;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/helpshift/support/flows/FAQsFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 49
    return-void
.end method
