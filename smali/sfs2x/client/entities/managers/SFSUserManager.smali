.class public Lsfs2x/client/entities/managers/SFSUserManager;
.super Ljava/lang/Object;
.source "SFSUserManager.java"

# interfaces
.implements Lsfs2x/client/entities/managers/IUserManager;


# instance fields
.field protected smartFox:Lsfs2x/client/ISmartFox;

.field private usersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation
.end field

.field private usersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 1
    .param p1, "smartFox"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public addUser(Lsfs2x/client/entities/User;)V
    .locals 3
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 88
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/User;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected: duplicate user in UserManager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lsfs2x/client/entities/managers/SFSUserManager;->addUserInternal(Lsfs2x/client/entities/User;)V

    .line 95
    return-void
.end method

.method protected addUserInternal(Lsfs2x/client/entities/User;)V
    .locals 2
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 101
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/User;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    .line 151
    return-void
.end method

.method public containsUser(Lsfs2x/client/entities/User;)Z
    .locals 1
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 59
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsUserId(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsUserName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSmartFox()Lsfs2x/client/ISmartFox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->smartFox:Lsfs2x/client/ISmartFox;

    return-object v0
.end method

.method public getUserById(I)Lsfs2x/client/entities/User;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/User;

    goto :goto_0
.end method

.method public getUserByName(Ljava/lang/String;)Lsfs2x/client/entities/User;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/User;

    goto :goto_0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getUserList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeUser(Lsfs2x/client/entities/User;)V
    .locals 2
    .param p1, "user"    # Lsfs2x/client/entities/User;

    .prologue
    .line 109
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersByName:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-interface {p1}, Lsfs2x/client/entities/User;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public removeUserById(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lsfs2x/client/entities/managers/SFSUserManager;->usersById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/User;

    .line 121
    .local v0, "user":Lsfs2x/client/entities/User;
    invoke-virtual {p0, v0}, Lsfs2x/client/entities/managers/SFSUserManager;->removeUser(Lsfs2x/client/entities/User;)V

    goto :goto_0
.end method
