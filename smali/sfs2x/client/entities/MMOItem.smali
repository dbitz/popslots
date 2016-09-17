.class public Lsfs2x/client/entities/MMOItem;
.super Ljava/lang/Object;
.source "MMOItem.java"

# interfaces
.implements Lsfs2x/client/entities/IMMOItem;


# instance fields
.field private aoiEntryPoint:Lsfs2x/client/entities/data/Vec3D;

.field private final id:I

.field private final variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/variables/IMMOItemVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lsfs2x/client/entities/MMOItem;->id:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/IMMOItem;
    .locals 4
    .param p0, "encodedItem"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 39
    new-instance v2, Lsfs2x/client/entities/MMOItem;

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lsfs2x/client/entities/MMOItem;-><init>(I)V

    .line 42
    .local v2, "item":Lsfs2x/client/entities/IMMOItem;
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    .line 44
    .local v0, "encodedVars":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 49
    return-object v2

    .line 46
    :cond_0
    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    invoke-static {v3}, Lsfs2x/client/entities/variables/MMOItemVariable;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/IMMOItemVariable;

    move-result-object v3

    invoke-interface {v2, v3}, Lsfs2x/client/entities/IMMOItem;->setVariable(Lsfs2x/client/entities/variables/IMMOItemVariable;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public containsVariable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "found":Z
    iget-object v2, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v1, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    monitor-exit v2

    .line 71
    return v0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAOIEntryPoint()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lsfs2x/client/entities/MMOItem;->aoiEntryPoint:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lsfs2x/client/entities/MMOItem;->id:I

    return v0
.end method

.method public getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/IMMOItemVariable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/IMMOItemVariable;

    return-object v0
.end method

.method public getVariables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/IMMOItemVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    iget-object v3, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    monitor-enter v3

    .line 116
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v0    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    .local v1, "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    return-object v1

    .line 114
    .end local v1    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    .restart local v0    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    .restart local v1    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    .restart local v0    # "vars":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    goto :goto_0
.end method

.method public setAOIEntryPoint(Lsfs2x/client/entities/data/Vec3D;)V
    .locals 0
    .param p1, "aoiEntryPoint"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 85
    iput-object p1, p0, Lsfs2x/client/entities/MMOItem;->aoiEntryPoint:Lsfs2x/client/entities/data/Vec3D;

    .line 86
    return-void
.end method

.method public setVariable(Lsfs2x/client/entities/variables/IMMOItemVariable;)V
    .locals 3
    .param p1, "var"    # Lsfs2x/client/entities/variables/IMMOItemVariable;

    .prologue
    .line 128
    iget-object v1, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/variables/IMMOItemVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v1

    .line 132
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVariables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/IMMOItemVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "varList":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/IMMOItemVariable;>;"
    iget-object v2, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    monitor-enter v2

    .line 142
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    monitor-exit v2

    .line 147
    return-void

    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/variables/IMMOItemVariable;

    .line 144
    .local v0, "itemVar":Lsfs2x/client/entities/variables/IMMOItemVariable;
    iget-object v3, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    invoke-interface {v0}, Lsfs2x/client/entities/variables/IMMOItemVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    .end local v0    # "itemVar":Lsfs2x/client/entities/variables/IMMOItemVariable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    const-string/jumbo v0, "[id: %s, %s ]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lsfs2x/client/entities/MMOItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lsfs2x/client/entities/MMOItem;->variables:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
