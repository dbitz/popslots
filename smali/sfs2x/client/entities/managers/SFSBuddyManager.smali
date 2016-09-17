.class public Lsfs2x/client/entities/managers/SFSBuddyManager;
.super Ljava/lang/Object;
.source "SFSBuddyManager.java"

# interfaces
.implements Lsfs2x/client/entities/managers/IBuddyManager;


# instance fields
.field protected buddiesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation
.end field

.field private buddyStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected inited:Z

.field protected myOnlineState:Z

.field protected myVariables:Ljava/util/Map;
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

.field private sfs:Lsfs2x/client/ISmartFox;


# direct methods
.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->sfs:Lsfs2x/client/ISmartFox;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->myVariables:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->inited:Z

    .line 51
    return-void
.end method


# virtual methods
.method public addBuddy(Lsfs2x/client/entities/Buddy;)V
    .locals 2
    .param p1, "buddy"    # Lsfs2x/client/entities/Buddy;

    .prologue
    .line 71
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/Buddy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 288
    return-void
.end method

.method public containsBuddy(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBuddyById(I)Lsfs2x/client/entities/Buddy;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 111
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 112
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 112
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Buddy;

    .line 113
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Buddy;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBuddyByNickName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;
    .locals 3
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 136
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/Buddy;

    .line 137
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getBuddyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBuddyStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddyStates:Ljava/util/List;

    return-object v0
.end method

.method public getMyNickName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    const-string/jumbo v1, "$__BV_NICKNAME__"

    invoke-virtual {p0, v1}, Lsfs2x/client/entities/managers/SFSBuddyManager;->getMyVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v0

    .line 226
    .local v0, "nickNameVar":Lsfs2x/client/entities/variables/BuddyVariable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getStringValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMyOnlineState()Z
    .locals 3

    .prologue
    .line 206
    iget-boolean v2, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->inited:Z

    if-nez v2, :cond_1

    .line 207
    const/4 v0, 0x0

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    const/4 v0, 0x1

    .line 212
    .local v0, "onlineState":Z
    const-string/jumbo v2, "$__BV_ONLINE__"

    invoke-virtual {p0, v2}, Lsfs2x/client/entities/managers/SFSBuddyManager;->getMyVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v1

    .line 214
    .local v1, "onlineVar":Lsfs2x/client/entities/variables/BuddyVariable;
    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v1}, Lsfs2x/client/entities/variables/BuddyVariable;->getBoolValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getMyState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v1, "$__BV_STATE__"

    invoke-virtual {p0, v1}, Lsfs2x/client/entities/managers/SFSBuddyManager;->getMyVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;

    move-result-object v0

    .line 234
    .local v0, "stateVar":Lsfs2x/client/entities/variables/BuddyVariable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsfs2x/client/entities/variables/BuddyVariable;->getStringValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMyVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->myVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->myVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMyVariables()Ljava/util/List;
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
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->myVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOfflineBuddies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "buddies":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Buddy;>;"
    iget-object v2, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    return-object v0

    .line 149
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/entities/Buddy;

    .line 150
    .local v1, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface {v1}, Lsfs2x/client/entities/Buddy;->isOnline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOnlineBuddies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "buddies":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/Buddy;>;"
    iget-object v2, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    return-object v0

    .line 162
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsfs2x/client/entities/Buddy;

    .line 163
    .local v1, "buddy":Lsfs2x/client/entities/Buddy;
    invoke-interface {v1}, Lsfs2x/client/entities/Buddy;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->inited:Z

    return v0
.end method

.method public removeBuddyById(I)Lsfs2x/client/entities/Buddy;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lsfs2x/client/entities/managers/SFSBuddyManager;->getBuddyById(I)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 80
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-object v0
.end method

.method public removeBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lsfs2x/client/entities/managers/SFSBuddyManager;->getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;

    move-result-object v0

    .line 93
    .local v0, "buddy":Lsfs2x/client/entities/Buddy;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddiesByName:Ljava/util/Map;

    invoke-interface {v0}, Lsfs2x/client/entities/Buddy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    return-object v0
.end method

.method public setBuddyStates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->buddyStates:Ljava/util/List;

    .line 281
    return-void
.end method

.method public setInited(Z)V
    .locals 0
    .param p1, "inited"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->inited:Z

    .line 65
    return-void
.end method

.method public setMyNickName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lsfs2x/client/entities/variables/SFSBuddyVariable;

    const-string/jumbo v1, "$__BV_NICKNAME__"

    invoke-direct {v0, v1, p1}, Lsfs2x/client/entities/variables/SFSBuddyVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSBuddyManager;->setMyVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    .line 267
    return-void
.end method

.method public setMyOnlineState(Z)V
    .locals 3
    .param p1, "isOnline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lsfs2x/client/entities/variables/SFSBuddyVariable;

    const-string/jumbo v1, "$__BV_ONLINE__"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsfs2x/client/entities/variables/SFSBuddyVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSBuddyManager;->setMyVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    .line 260
    return-void
.end method

.method public setMyState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lsfs2x/client/entities/variables/SFSBuddyVariable;

    const-string/jumbo v1, "$__BV_STATE__"

    invoke-direct {v0, v1, p1}, Lsfs2x/client/entities/variables/SFSBuddyVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSBuddyManager;->setMyVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    .line 274
    return-void
.end method

.method public setMyVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V
    .locals 2
    .param p1, "bVar"    # Lsfs2x/client/entities/variables/BuddyVariable;

    .prologue
    .line 241
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSBuddyManager;->myVariables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/BuddyVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public setMyVariables(Ljava/util/List;)V
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
    .line 248
    .local p1, "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/BuddyVariable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    return-void

    .line 248
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/BuddyVariable;

    .line 249
    .local v0, "bVar":Lsfs2x/client/entities/variables/BuddyVariable;
    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSBuddyManager;->setMyVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V

    goto :goto_0
.end method
