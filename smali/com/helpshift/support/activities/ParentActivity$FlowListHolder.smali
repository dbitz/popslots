.class public Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;
.super Ljava/lang/Object;
.source "ParentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/activities/ParentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowListHolder"
.end annotation


# static fields
.field private static flowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;->flowList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;->flowList:Ljava/util/List;

    return-object v0
.end method

.method public static setFlowList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/flows/Flow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "flowList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/flows/Flow;>;"
    sput-object p0, Lcom/helpshift/support/activities/ParentActivity$FlowListHolder;->flowList:Ljava/util/List;

    .line 26
    return-void
.end method
