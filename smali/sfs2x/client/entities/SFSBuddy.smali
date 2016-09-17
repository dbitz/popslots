.class public Lsfs2x/client/entities/SFSBuddy;
.super Ljava/lang/Object;
.source "SFSBuddy.java"

# interfaces
.implements Lsfs2x/client/entities/Buddy;


# instance fields
.field protected id:I

.field protected isBlocked:Z

.field protected isTemp:Z

.field protected name:Ljava/lang/String;

.field protected variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0, v0}, Lsfs2x/client/entities/SFSBuddy;-><init>(ILjava/lang/String;ZZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsfs2x/client/entities/SFSBuddy;-><init>(ILjava/lang/String;ZZ)V

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z
    .param p4, "isTemp"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    .line 73
    iput-object p2, p0, Lsfs2x/client/entities/SFSBuddy;->name:Ljava/lang/String;

    .line 74
    iput p1, p0, Lsfs2x/client/entities/SFSBuddy;->id:I

    .line 75
    iput-boolean p3, p0, Lsfs2x/client/entities/SFSBuddy;->isBlocked:Z

    .line 76
    iput-boolean p4, p0, Lsfs2x/client/entities/SFSBuddy;->isTemp:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/Buddy;
    .locals 10
    .param p0, "arr"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x0

    .line 45
    new-instance v1, Lsfs2x/client/entities/SFSBuddy;

    .line 46
    invoke-interface {p0, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 47
    const/4 v6, 0x1

    invoke-interface {p0, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 49
    invoke-interface {p0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v8

    if-le v8, v9, :cond_0

    invoke-interface {p0, v9}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getBool(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 45
    :cond_0
    invoke-direct {v1, v5, v6, v7, v4}, Lsfs2x/client/entities/SFSBuddy;-><init>(ILjava/lang/String;ZZ)V

    .line 52
    .local v1, "buddy":Lsfs2x/client/entities/Buddy;
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    .line 54
    .local v0, "bVarsData":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 59
    return-object v1

    .line 55
    :cond_1
    invoke-interface {v0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    invoke-static {v4}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v2

    .line 56
    .local v2, "bv":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v1, v2}, Lsfs2x/client/entities/Buddy;->setVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearVolatileVariables()V
    .locals 4

    .prologue
    .line 252
    iget-object v2, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    return-void

    .line 254
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 255
    .local v0, "bVar":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public containsVariable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lsfs2x/client/entities/SFSBuddy;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    const-string/jumbo v1, "$__BV_NICKNAME__"

    invoke-virtual {p0, v1}, Lsfs2x/client/entities/SFSBuddy;->getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v0

    .line 149
    .local v0, "bv":Lsfs2x/client/entities/variables/BuddyVariable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getStringValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOfflineVariables()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "offlineVars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    iget-object v2, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    return-object v1

    .line 182
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 183
    .local v0, "item":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOnlineVariables()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "onlineVars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    iget-object v2, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    return-object v1

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 198
    .local v0, "item":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v1, "$__BV_STATE__"

    invoke-virtual {p0, v1}, Lsfs2x/client/entities/SFSBuddy;->getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v0

    .line 141
    .local v0, "bv":Lsfs2x/client/entities/variables/BuddyVariable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getStringValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVariables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSBuddy;->isBlocked:Z

    return v0
.end method

.method public isOnline()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 113
    const-string/jumbo v3, "$__BV_ONLINE__"

    invoke-virtual {p0, v3}, Lsfs2x/client/entities/SFSBuddy;->getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v0

    .line 116
    .local v0, "bv":Lsfs2x/client/entities/variables/BuddyVariable;
    if-nez v0, :cond_0

    move v1, v2

    .line 122
    .local v1, "onlineStateVar":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Lsfs2x/client/entities/SFSBuddy;->id:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    :goto_1
    return v2

    .line 116
    .end local v1    # "onlineStateVar":Z
    :cond_0
    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getBoolValue()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 122
    .restart local v1    # "onlineStateVar":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isTemp()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lsfs2x/client/entities/SFSBuddy;->isTemp:Z

    return v0
.end method

.method public removeVariable(Ljava/lang/String;)V
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public setBlocked(Z)V
    .locals 0
    .param p1, "blocked"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lsfs2x/client/entities/SFSBuddy;->isBlocked:Z

    .line 238
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 230
    iput p1, p0, Lsfs2x/client/entities/SFSBuddy;->id:I

    .line 231
    return-void
.end method

.method public setVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V
    .locals 2
    .param p1, "bVar"    # Lsfs2x/client/entities/variables/BuddyVariable;

    .prologue
    .line 210
    iget-object v0, p0, Lsfs2x/client/entities/SFSBuddy;->variables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/BuddyVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public setVariables(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    return-void

    .line 221
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 222
    .local v0, "bVar":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-virtual {p0, v0}, Lsfs2x/client/entities/SFSBuddy;->setVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Buddy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/entities/SFSBuddy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/entities/SFSBuddy;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
