.class public Lsfs2x/client/entities/managers/SFSGlobalUserManager;
.super Lsfs2x/client/entities/managers/SFSUserManager;
.source "SFSGlobalUserManager.java"

# interfaces
.implements Lsfs2x/client/entities/managers/IUserManager;


# instance fields
.field private roomRefCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsfs2x/client/entities/User;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 1
    .param p1, "smartFox"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lsfs2x/client/entities/managers/SFSUserManager;-><init>(Lsfs2x/client/ISmartFox;)V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public addUser(Lsfs2x/client/entities/User;)V
    .locals 3
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 25
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-super {p0, p1}, Lsfs2x/client/entities/managers/SFSUserManager;->addUser(Lsfs2x/client/entities/User;)V

    .line 28
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 33
    .local v0, "count":Ljava/lang/Integer;
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeUser(Lsfs2x/client/entities/User;)V
    .locals 4
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 39
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 42
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    invoke-interface {v1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GlobalUserManager RefCount is already at zero. User: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 47
    .local v0, "count":Ljava/lang/Integer;
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-super {p0, p1}, Lsfs2x/client/entities/managers/SFSUserManager;->removeUser(Lsfs2x/client/entities/User;)V

    .line 51
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSGlobalUserManager;->roomRefCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v0    # "count":Ljava/lang/Integer;
    :cond_2
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    invoke-interface {v1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t remove User from GlobalUserManager. RefCount missing. User: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
