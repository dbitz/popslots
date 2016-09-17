.class public Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/external/DoubleMetaphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleMetaphoneResult"
.end annotation


# instance fields
.field private final alternate:Ljava/lang/StringBuilder;

.field private final maxLength:I

.field private final primary:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/helpshift/support/external/DoubleMetaphone;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/external/DoubleMetaphone;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/helpshift/support/external/DoubleMetaphone;
    .param p2, "maxLength"    # I

    .prologue
    .line 995
    iput-object p1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lcom/helpshift/support/external/DoubleMetaphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lcom/helpshift/support/external/DoubleMetaphone;

    invoke-virtual {v1}, Lcom/helpshift/support/external/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lcom/helpshift/support/external/DoubleMetaphone;

    invoke-virtual {v1}, Lcom/helpshift/support/external/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    .line 996
    iput p2, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    .line 997
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 0
    .param p1, "value"    # C

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 1001
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 1002
    return-void
.end method

.method public append(CC)V
    .locals 0
    .param p1, "primary"    # C
    .param p2, "alternate"    # C

    .prologue
    .line 1005
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 1006
    invoke-virtual {p0, p2}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 1007
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "alternate"    # Ljava/lang/String;

    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0, p2}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public appendAlternate(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1019
    :cond_0
    return-void
.end method

.method public appendAlternate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1041
    iget v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 1042
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendPrimary(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1013
    :cond_0
    return-void
.end method

.method public appendPrimary(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 1033
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getAlternate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
