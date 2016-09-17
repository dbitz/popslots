.class public Lsfs2x/client/controllers/system/ResGenericMessage;
.super Ljava/lang/Object;
.source "ResGenericMessage.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# instance fields
.field private sfs:Lsfs2x/client/ISmartFox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleAdminMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 128
    const-string/jumbo v0, "adminMessage"

    invoke-direct {p0, p1, v0}, Lsfs2x/client/controllers/system/ResGenericMessage;->handleModMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private handleBuddyMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 6
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "u"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 111
    .local v2, "senderId":I
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lsfs2x/client/entities/managers/IBuddyManager;->getBuddyById(I)Lsfs2x/client/entities/Buddy;

    move-result-object v1

    .line 113
    .local v1, "senderBuddy":Lsfs2x/client/entities/Buddy;
    const-string/jumbo v4, "isItMe"

    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v3

    invoke-interface {v3}, Lsfs2x/client/entities/User;->getId()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v3, "buddy"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v3, "message"

    const-string/jumbo v4, "m"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "p"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    new-instance v4, Lsfs2x/client/core/SFSBuddyEvent;

    const-string/jumbo v5, "buddyMessage"

    invoke-direct {v4, v5, v0}, Lsfs2x/client/core/SFSBuddyEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 120
    return-void

    .line 113
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleModMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 1
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 124
    const-string/jumbo v0, "moderatorMessage"

    invoke-direct {p0, p1, v0}, Lsfs2x/client/controllers/system/ResGenericMessage;->handleModMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private handleModMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p2, "evt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "sd"

    invoke-interface {p1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-static {v2}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/User;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "m"

    invoke-interface {p1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "data"

    const-string/jumbo v2, "p"

    invoke-interface {p1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    new-instance v2, Lsfs2x/client/core/SFSEvent;

    invoke-direct {v2, p2, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 140
    return-void
.end method

.method private handleObjectMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 5
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "u"

    invoke-interface {p1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 146
    .local v1, "senderId":I
    const-string/jumbo v2, "sender"

    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "p"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    new-instance v3, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v4, "objectMessage"

    invoke-direct {v3, v4, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 151
    return-void
.end method

.method private handlePrivateMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 6
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "u"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "senderId":I
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v1

    .line 83
    .local v1, "sender":Lsfs2x/client/entities/User;
    if-nez v1, :cond_1

    .line 84
    const-string/jumbo v3, "sd"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v3

    const-string/jumbo v4, "Unexpected. Private message has no Sender details!"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v3, "sd"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    invoke-static {v3}, Lsfs2x/client/entities/SFSUser;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/User;

    move-result-object v1

    .line 92
    :cond_1
    const-string/jumbo v3, "sender"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v3, "message"

    const-string/jumbo v4, "m"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "p"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "privateMessage"

    invoke-direct {v4, v5, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto :goto_0
.end method

.method private handlePublicMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 6
    .param p1, "sfso"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "r"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    .local v1, "rId":I
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v2

    .line 61
    .local v2, "room":Lsfs2x/client/entities/Room;
    if-eqz v2, :cond_0

    .line 62
    const-string/jumbo v3, "room"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v3, "sender"

    iget-object v4, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->getUserManager()Lsfs2x/client/entities/managers/IUserManager;

    move-result-object v4

    const-string/jumbo v5, "u"

    invoke-interface {p1, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lsfs2x/client/entities/managers/IUserManager;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v3, "message"

    const-string/jumbo v4, "m"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "p"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    new-instance v4, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v5, "publicMessage"

    invoke-direct {v4, v5, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v3, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v3}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected, PublicMessage target room doesn\'t exist. RoomId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lsfs2x/client/controllers/system/ResGenericMessage;->sfs:Lsfs2x/client/ISmartFox;

    .line 32
    invoke-interface {p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v1

    .line 33
    .local v1, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v2, "t"

    invoke-interface {v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 35
    .local v0, "msgType":I
    if-nez v0, :cond_1

    .line 36
    invoke-direct {p0, v1}, Lsfs2x/client/controllers/system/ResGenericMessage;->handlePublicMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 39
    invoke-direct {p0, v1}, Lsfs2x/client/controllers/system/ResGenericMessage;->handlePrivateMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0

    .line 41
    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 42
    invoke-direct {p0, v1}, Lsfs2x/client/controllers/system/ResGenericMessage;->handleBuddyMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0

    .line 44
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 45
    invoke-direct {p0, v1}, Lsfs2x/client/controllers/system/ResGenericMessage;->handleModMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0

    .line 47
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 48
    invoke-direct {p0, v1}, Lsfs2x/client/controllers/system/ResGenericMessage;->handleAdminMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0

    .line 50
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 51
    invoke-direct {p0, v1}, Lsfs2x/client/controllers/system/ResGenericMessage;->handleObjectMessage(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0
.end method
