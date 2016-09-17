.class public Lcom/helpshift/support/flows/FAQSectionFlow;
.super Ljava/lang/Object;
.source "FAQSectionFlow.java"

# interfaces
.implements Lcom/helpshift/support/flows/Flow;


# instance fields
.field private final config:Ljava/util/HashMap;

.field private final labelResId:I

.field private final sectionPublishId:Ljava/lang/String;

.field private supportController:Lcom/helpshift/support/controllers/SupportController;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "labelResId"    # I
    .param p2, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/helpshift/support/flows/FAQSectionFlow;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "labelResId"    # I
    .param p2, "sectionPublishId"    # Ljava/lang/String;
    .param p3, "config"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->labelResId:I

    .line 49
    iput-object p2, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->sectionPublishId:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->config:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public getLabelResId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->labelResId:I

    return v0
.end method

.method public performAction()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->config:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/SupportInternal;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sectionPublishId"

    iget-object v2, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->sectionPublishId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "support_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iget-object v1, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/support/controllers/SupportController;->startFaqFlow(Landroid/os/Bundle;Z)V

    .line 77
    return-void
.end method

.method public setSupportController(Lcom/helpshift/support/controllers/SupportController;)V
    .locals 0
    .param p1, "supportController"    # Lcom/helpshift/support/controllers/SupportController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/helpshift/support/flows/FAQSectionFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 58
    return-void
.end method
