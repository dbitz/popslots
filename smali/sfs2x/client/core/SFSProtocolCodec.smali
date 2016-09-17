.class public Lsfs2x/client/core/SFSProtocolCodec;
.super Ljava/lang/Object;
.source "SFSProtocolCodec.java"

# interfaces
.implements Lsfs2x/client/bitswarm/IProtocolCodec;


# static fields
.field private static final ACTION_ID:Ljava/lang/String; = "a"

.field private static final CONTROLLER_ID:Ljava/lang/String; = "c"

.field private static final PARAM_ID:Ljava/lang/String; = "p"

.field private static final UDP_PACKET_ID:Ljava/lang/String; = "i"

.field private static final USER_ID:Ljava/lang/String; = "u"


# instance fields
.field private bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private ioHandler:Lsfs2x/client/bitswarm/IOHandler;

.field private log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lsfs2x/client/bitswarm/IOHandler;Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 1
    .param p1, "ioHandler"    # Lsfs2x/client/bitswarm/IOHandler;
    .param p2, "bitSwarm"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lsfs2x/client/core/SFSProtocolCodec;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    .line 45
    iput-object p1, p0, Lsfs2x/client/core/SFSProtocolCodec;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/core/SFSProtocolCodec;->log:Lorg/slf4j/Logger;

    .line 47
    iput-object p2, p0, Lsfs2x/client/core/SFSProtocolCodec;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 48
    return-void
.end method

.method private dispatchRequest(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 6
    .param p1, "requestObject"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v2, Lsfs2x/client/bitswarm/Message;

    invoke-direct {v2}, Lsfs2x/client/bitswarm/Message;-><init>()V

    .line 127
    .local v2, "message":Lsfs2x/client/bitswarm/IMessage;
    const-string/jumbo v3, "c"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    const-string/jumbo v4, "Request rejected: No Controller ID in request!"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_0
    const-string/jumbo v3, "a"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    const-string/jumbo v4, "Request rejected: No Action ID in request!"

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_1
    const-string/jumbo v3, "a"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-interface {v2, v3}, Lsfs2x/client/bitswarm/IMessage;->setId(I)V

    .line 137
    const-string/jumbo v3, "p"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSObject(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lsfs2x/client/bitswarm/IMessage;->setContent(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 138
    const-string/jumbo v3, "i"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lsfs2x/client/bitswarm/IMessage;->setUDP(Z)V

    .line 140
    invoke-interface {v2}, Lsfs2x/client/bitswarm/IMessage;->isUDP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    const-string/jumbo v3, "i"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lsfs2x/client/bitswarm/IMessage;->setPacketId(J)V

    .line 144
    :cond_2
    const-string/jumbo v3, "c"

    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 145
    .local v1, "controllerId":I
    iget-object v3, p0, Lsfs2x/client/core/SFSProtocolCodec;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v3, v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getController(I)Lsfs2x/client/bitswarm/IController;

    move-result-object v0

    .line 147
    .local v0, "controller":Lsfs2x/client/bitswarm/IController;
    if-nez v0, :cond_3

    .line 148
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Cannot handle server response. Unknown controller, id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_3
    invoke-interface {v0, v2}, Lsfs2x/client/bitswarm/IController;->handleMessage(Lsfs2x/client/bitswarm/IMessage;)V

    .line 153
    return-void
.end method

.method private prepareTCPPacket(Lsfs2x/client/bitswarm/IMessage;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 3
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;

    .prologue
    .line 91
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    .line 94
    .local v0, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v1, "c"

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getTargetController()I

    move-result v2

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putByte(Ljava/lang/String;B)V

    .line 97
    const-string/jumbo v1, "a"

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getId()I

    move-result v2

    int-to-short v2, v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putShort(Ljava/lang/String;S)V

    .line 100
    const-string/jumbo v1, "p"

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 102
    return-object v0
.end method

.method private prepareUDPPacket(Lsfs2x/client/bitswarm/IMessage;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 4
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;

    .prologue
    .line 106
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    .line 109
    .local v0, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v1, "c"

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getTargetController()I

    move-result v2

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putByte(Ljava/lang/String;B)V

    .line 112
    const-string/jumbo v2, "u"

    iget-object v1, p0, Lsfs2x/client/core/SFSProtocolCodec;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSfs()Lsfs2x/client/SmartFox;

    move-result-object v1

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsfs2x/client/core/SFSProtocolCodec;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSfs()Lsfs2x/client/SmartFox;

    move-result-object v1

    invoke-virtual {v1}, Lsfs2x/client/SmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/User;->getId()I

    move-result v1

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string/jumbo v1, "i"

    iget-object v2, p0, Lsfs2x/client/core/SFSProtocolCodec;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->getNextUdpPacketId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putLong(Ljava/lang/String;J)V

    .line 118
    const-string/jumbo v1, "p"

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 120
    return-object v0

    .line 112
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getIOHandler()Lsfs2x/client/bitswarm/IOHandler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lsfs2x/client/core/SFSProtocolCodec;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    return-object v0
.end method

.method public onPacketRead(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 0
    .param p1, "packet"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSProtocolCodec;->dispatchRequest(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 66
    return-void
.end method

.method public onPacketRead(Lsfs2x/client/util/ByteArray;)V
    .locals 2
    .param p1, "packet"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newFromBinaryData([B)Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v0

    .line 57
    .local v0, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    invoke-direct {p0, v0}, Lsfs2x/client/core/SFSProtocolCodec;->dispatchRequest(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 58
    return-void
.end method

.method public onPacketWrite(Lsfs2x/client/bitswarm/IMessage;)V
    .locals 2
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->isUDP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSProtocolCodec;->prepareUDPPacket(Lsfs2x/client/bitswarm/IMessage;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    .line 84
    .local v0, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    :goto_0
    invoke-interface {p1, v0}, Lsfs2x/client/bitswarm/IMessage;->setContent(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 87
    iget-object v1, p0, Lsfs2x/client/core/SFSProtocolCodec;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    invoke-interface {v1, p1}, Lsfs2x/client/bitswarm/IOHandler;->onDataWrite(Lsfs2x/client/bitswarm/IMessage;)V

    .line 88
    return-void

    .line 76
    .end local v0    # "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    :cond_0
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSProtocolCodec;->prepareTCPPacket(Lsfs2x/client/bitswarm/IMessage;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    .restart local v0    # "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    goto :goto_0
.end method

.method public setIOHandler(Lsfs2x/client/bitswarm/IOHandler;)V
    .locals 3
    .param p1, "ioHandler"    # Lsfs2x/client/bitswarm/IOHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lsfs2x/client/core/SFSProtocolCodec;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IOHandler is already defined for thir ProtocolHandler instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lsfs2x/client/core/SFSProtocolCodec;->ioHandler:Lsfs2x/client/bitswarm/IOHandler;

    .line 42
    return-void
.end method
