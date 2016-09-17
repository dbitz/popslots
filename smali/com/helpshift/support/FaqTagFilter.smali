.class public Lcom/helpshift/support/FaqTagFilter;
.super Ljava/lang/Object;
.source "FaqTagFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/FaqTagFilter$Operator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x687366ad086a1553L


# instance fields
.field private operator:Lcom/helpshift/support/FaqTagFilter$Operator;

.field private tags:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/FaqTagFilter$Operator;[Ljava/lang/String;)V
    .locals 1
    .param p1, "operator"    # Lcom/helpshift/support/FaqTagFilter$Operator;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->UNDEFINED:Lcom/helpshift/support/FaqTagFilter$Operator;

    iput-object v0, p0, Lcom/helpshift/support/FaqTagFilter;->operator:Lcom/helpshift/support/FaqTagFilter$Operator;

    .line 8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/support/FaqTagFilter;->tags:[Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/helpshift/support/FaqTagFilter;->operator:Lcom/helpshift/support/FaqTagFilter$Operator;

    .line 12
    iput-object p2, p0, Lcom/helpshift/support/FaqTagFilter;->tags:[Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getOperator()Lcom/helpshift/support/FaqTagFilter$Operator;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/helpshift/support/FaqTagFilter;->operator:Lcom/helpshift/support/FaqTagFilter$Operator;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/helpshift/support/FaqTagFilter;->tags:[Ljava/lang/String;

    return-object v0
.end method
