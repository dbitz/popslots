.class public Lsfs2x/client/entities/MMORoom;
.super Lsfs2x/client/entities/SFSRoom;
.source "MMORoom.java"


# instance fields
.field private defaultAOI:Lsfs2x/client/entities/data/Vec3D;

.field private higherMapLimit:Lsfs2x/client/entities/data/Vec3D;

.field private itemsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsfs2x/client/entities/IMMOItem;",
            ">;"
        }
    .end annotation
.end field

.field private lowerMapLimit:Lsfs2x/client/entities/data/Vec3D;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lsfs2x/client/entities/SFSRoom;-><init>(ILjava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lsfs2x/client/entities/SFSRoom;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    .line 73
    return-void
.end method


# virtual methods
.method public RemoveItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public addMMOItem(Lsfs2x/client/entities/IMMOItem;)V
    .locals 2
    .param p1, "item"    # Lsfs2x/client/entities/IMMOItem;

    .prologue
    .line 177
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/IMMOItem;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public getDefaultAOI()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->defaultAOI:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getHigherMapLimit()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->higherMapLimit:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getLowerMapLimit()Lsfs2x/client/entities/data/Vec3D;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->lowerMapLimit:Lsfs2x/client/entities/data/Vec3D;

    return-object v0
.end method

.method public getMMOItem(I)Lsfs2x/client/entities/IMMOItem;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/IMMOItem;

    return-object v0
.end method

.method public getMMOItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/IMMOItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    iget-object v3, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    monitor-enter v3

    .line 166
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lsfs2x/client/entities/MMORoom;->itemsById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    return-object v1

    .line 164
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    goto :goto_0
.end method

.method public setDefaultAOI(Lsfs2x/client/entities/data/Vec3D;)V
    .locals 2
    .param p1, "defaultAOI"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 114
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->defaultAOI:Lsfs2x/client/entities/data/Vec3D;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This value is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lsfs2x/client/entities/MMORoom;->defaultAOI:Lsfs2x/client/entities/data/Vec3D;

    .line 118
    return-void
.end method

.method public setHigherMapLimit(Lsfs2x/client/entities/data/Vec3D;)V
    .locals 2
    .param p1, "higherMapLimit"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 132
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->higherMapLimit:Lsfs2x/client/entities/data/Vec3D;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This value is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lsfs2x/client/entities/MMORoom;->higherMapLimit:Lsfs2x/client/entities/data/Vec3D;

    .line 136
    return-void
.end method

.method public setLowerMapLimit(Lsfs2x/client/entities/data/Vec3D;)V
    .locals 2
    .param p1, "lowerMapLimit"    # Lsfs2x/client/entities/data/Vec3D;

    .prologue
    .line 123
    iget-object v0, p0, Lsfs2x/client/entities/MMORoom;->lowerMapLimit:Lsfs2x/client/entities/data/Vec3D;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This value is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lsfs2x/client/entities/MMORoom;->lowerMapLimit:Lsfs2x/client/entities/data/Vec3D;

    .line 127
    return-void
.end method
