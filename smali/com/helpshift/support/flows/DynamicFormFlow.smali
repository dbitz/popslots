.class public Lcom/helpshift/support/flows/DynamicFormFlow;
.super Ljava/lang/Object;
.source "DynamicFormFlow.java"

# interfaces
.implements Lcom/helpshift/support/flows/Flow;


# instance fields
.field private final flowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;"
        }
    .end annotation
.end field

.field private final labelResId:I

.field private supportController:Lcom/helpshift/support/controllers/SupportController;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "labelResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/helpshift/support/flows/DynamicFormFlow;->labelResId:I

    .line 29
    iput-object p2, p0, Lcom/helpshift/support/flows/DynamicFormFlow;->flowList:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getLabelResId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/helpshift/support/flows/DynamicFormFlow;->labelResId:I

    return v0
.end method

.method public performAction()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/helpshift/support/flows/DynamicFormFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    iget-object v1, p0, Lcom/helpshift/support/flows/DynamicFormFlow;->flowList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/controllers/SupportController;->startDynamicForm(Ljava/util/List;Z)V

    .line 53
    return-void
.end method

.method public setSupportController(Lcom/helpshift/support/controllers/SupportController;)V
    .locals 0
    .param p1, "supportController"    # Lcom/helpshift/support/controllers/SupportController;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/support/flows/DynamicFormFlow;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 37
    return-void
.end method
