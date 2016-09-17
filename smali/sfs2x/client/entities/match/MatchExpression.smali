.class public Lsfs2x/client/entities/match/MatchExpression;
.super Ljava/lang/Object;
.source "MatchExpression.java"


# instance fields
.field private condition:Lsfs2x/client/entities/match/IMatcher;

.field private logicOp:Lsfs2x/client/entities/match/LogicOperator;

.field private next:Lsfs2x/client/entities/match/MatchExpression;

.field private parent:Lsfs2x/client/entities/match/MatchExpression;

.field private value:Ljava/lang/Object;

.field private varName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;)V
    .locals 0
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "condition"    # Lsfs2x/client/entities/match/IMatcher;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lsfs2x/client/entities/match/MatchExpression;->varName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    .line 94
    iput-object p3, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;Lsfs2x/client/entities/match/LogicOperator;Lsfs2x/client/entities/match/MatchExpression;)V
    .locals 0
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "condition"    # Lsfs2x/client/entities/match/IMatcher;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "logicOp"    # Lsfs2x/client/entities/match/LogicOperator;
    .param p5, "parent"    # Lsfs2x/client/entities/match/MatchExpression;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lsfs2x/client/entities/match/MatchExpression;-><init>(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;)V

    .line 76
    iput-object p4, p0, Lsfs2x/client/entities/match/MatchExpression;->logicOp:Lsfs2x/client/entities/match/LogicOperator;

    .line 77
    iput-object p5, p0, Lsfs2x/client/entities/match/MatchExpression;->parent:Lsfs2x/client/entities/match/MatchExpression;

    .line 78
    return-void
.end method

.method private expressionAsSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;-><init>()V

    .line 268
    .local v0, "expr":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->logicOp:Lsfs2x/client/entities/match/LogicOperator;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->logicOp:Lsfs2x/client/entities/match/LogicOperator;

    invoke-virtual {v1}, Lsfs2x/client/entities/match/LogicOperator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    .line 276
    :goto_0
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->varName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    invoke-interface {v1}, Lsfs2x/client/entities/match/IMatcher;->getType()I

    move-result v1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addByte(B)V

    .line 282
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    invoke-interface {v1}, Lsfs2x/client/entities/match/IMatcher;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    invoke-interface {v1}, Lsfs2x/client/entities/match/IMatcher;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addBool(Z)V

    .line 304
    :goto_1
    return-object v0

    .line 272
    :cond_0
    invoke-interface {v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addNull()V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    invoke-interface {v1}, Lsfs2x/client/entities/match/IMatcher;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 289
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addDouble(D)V

    goto :goto_1

    .line 292
    :cond_2
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addDouble(D)V

    goto :goto_1

    .line 297
    :cond_3
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addDouble(D)V

    goto :goto_1

    .line 301
    :cond_4
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public and(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;)Lsfs2x/client/entities/match/MatchExpression;
    .locals 6
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "condition"    # Lsfs2x/client/entities/match/IMatcher;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    new-instance v0, Lsfs2x/client/entities/match/MatchExpression;

    sget-object v4, Lsfs2x/client/entities/match/LogicOperator;->AND:Lsfs2x/client/entities/match/LogicOperator;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lsfs2x/client/entities/match/MatchExpression;-><init>(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;Lsfs2x/client/entities/match/LogicOperator;Lsfs2x/client/entities/match/MatchExpression;)V

    iput-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    .line 112
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->logicOp:Lsfs2x/client/entities/match/LogicOperator;

    if-eqz v1, :cond_0

    .line 218
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsfs2x/client/entities/match/MatchExpression;->logicOp:Lsfs2x/client/entities/match/LogicOperator;

    invoke-virtual {v2}, Lsfs2x/client/entities/match/LogicOperator;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->varName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    invoke-interface {v2}, Lsfs2x/client/entities/match/IMatcher;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1
    iget-object v1, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCondition()Lsfs2x/client/entities/match/IMatcher;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->condition:Lsfs2x/client/entities/match/IMatcher;

    return-object v0
.end method

.method public getLogicOp()Lsfs2x/client/entities/match/LogicOperator;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->logicOp:Lsfs2x/client/entities/match/LogicOperator;

    return-object v0
.end method

.method public getNext()Lsfs2x/client/entities/match/MatchExpression;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getVarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->varName:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public or(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;)Lsfs2x/client/entities/match/MatchExpression;
    .locals 6
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "condition"    # Lsfs2x/client/entities/match/IMatcher;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    new-instance v0, Lsfs2x/client/entities/match/MatchExpression;

    sget-object v4, Lsfs2x/client/entities/match/LogicOperator;->OR:Lsfs2x/client/entities/match/LogicOperator;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lsfs2x/client/entities/match/MatchExpression;-><init>(Ljava/lang/String;Lsfs2x/client/entities/match/IMatcher;Ljava/lang/Object;Lsfs2x/client/entities/match/LogicOperator;Lsfs2x/client/entities/match/MatchExpression;)V

    iput-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    .line 130
    iget-object v0, p0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    return-object v0
.end method

.method public rewind()Lsfs2x/client/entities/match/MatchExpression;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "currNode":Lsfs2x/client/entities/match/MatchExpression;
    :goto_0
    iget-object v1, v0, Lsfs2x/client/entities/match/MatchExpression;->parent:Lsfs2x/client/entities/match/MatchExpression;

    if-nez v1, :cond_0

    .line 208
    return-object v0

    .line 205
    :cond_0
    iget-object v0, v0, Lsfs2x/client/entities/match/MatchExpression;->parent:Lsfs2x/client/entities/match/MatchExpression;

    goto :goto_0
.end method

.method public toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lsfs2x/client/entities/match/MatchExpression;->rewind()Lsfs2x/client/entities/match/MatchExpression;

    move-result-object v0

    .line 252
    .local v0, "expr":Lsfs2x/client/entities/match/MatchExpression;
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-direct {v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;-><init>()V

    .line 253
    .local v1, "sfsa":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-direct {v0}, Lsfs2x/client/entities/match/MatchExpression;->expressionAsSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 256
    :goto_0
    invoke-virtual {v0}, Lsfs2x/client/entities/match/MatchExpression;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    return-object v1

    .line 257
    :cond_0
    iget-object v0, v0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    .line 258
    invoke-direct {v0}, Lsfs2x/client/entities/match/MatchExpression;->expressionAsSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lsfs2x/client/entities/match/MatchExpression;->rewind()Lsfs2x/client/entities/match/MatchExpression;

    move-result-object v0

    .line 235
    .local v0, "expr":Lsfs2x/client/entities/match/MatchExpression;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsfs2x/client/entities/match/MatchExpression;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Lsfs2x/client/entities/match/MatchExpression;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    :cond_0
    iget-object v0, v0, Lsfs2x/client/entities/match/MatchExpression;->next:Lsfs2x/client/entities/match/MatchExpression;

    .line 239
    invoke-virtual {v0}, Lsfs2x/client/entities/match/MatchExpression;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
