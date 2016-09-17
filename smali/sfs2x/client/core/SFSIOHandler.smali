.class public Lsfs2x/client/core/SFSIOHandler;
.super Ljava/lang/Object;
.source "SFSIOHandler.java"

# interfaces
.implements Lsfs2x/client/bitswarm/IOHandler;


# static fields
.field public static final INT_BYTE_SIZE:I = 0x4

.field public static final SHORT_BYTE_SIZE:I = 0x2


# instance fields
.field private final EMPTY_BUFFER:Lsfs2x/client/util/ByteArray;

.field private bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

.field private fsm:Lsfs2x/fsm/FiniteStateMachine;

.field private isDebugMode:Z

.field private log:Lorg/slf4j/Logger;

.field packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

.field private pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

.field private protocolCodec:Lsfs2x/client/bitswarm/IProtocolCodec;

.field private skipBytes:I


# direct methods
.method public constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 2
    .param p1, "bitSwarm"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lsfs2x/client/util/ByteArray;

    invoke-direct {v0}, Lsfs2x/client/util/ByteArray;-><init>()V

    iput-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->EMPTY_BUFFER:Lsfs2x/client/util/ByteArray;

    .line 34
    iput v1, p0, Lsfs2x/client/core/SFSIOHandler;->skipBytes:I

    .line 35
    iput-boolean v1, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    .line 54
    iput-object p1, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    .line 56
    new-instance v0, Lsfs2x/client/core/SFSProtocolCodec;

    invoke-direct {v0, p0, p1}, Lsfs2x/client/core/SFSProtocolCodec;-><init>(Lsfs2x/client/bitswarm/IOHandler;Lsfs2x/client/bitswarm/BitSwarmClient;)V

    iput-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->protocolCodec:Lsfs2x/client/bitswarm/IProtocolCodec;

    .line 57
    new-instance v0, Lsfs2x/client/core/DefaultPacketEncrypter;

    invoke-direct {v0, p1}, Lsfs2x/client/core/DefaultPacketEncrypter;-><init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V

    iput-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

    .line 59
    invoke-direct {p0}, Lsfs2x/client/core/SFSIOHandler;->InitStates()V

    .line 61
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSfs()Lsfs2x/client/SmartFox;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    .line 62
    return-void
.end method

.method private InitStates()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lsfs2x/fsm/FiniteStateMachine;

    invoke-direct {v0}, Lsfs2x/fsm/FiniteStateMachine;-><init>()V

    iput-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    .line 67
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v5}, Lsfs2x/fsm/FiniteStateMachine;->addState(I)V

    .line 68
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v3}, Lsfs2x/fsm/FiniteStateMachine;->addState(I)V

    .line 69
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v1}, Lsfs2x/fsm/FiniteStateMachine;->addState(I)V

    .line 70
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v4}, Lsfs2x/fsm/FiniteStateMachine;->addState(I)V

    .line 71
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v2}, Lsfs2x/fsm/FiniteStateMachine;->addState(I)V

    .line 73
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v2, v1, v2}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 76
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v1, v3, v1}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 79
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v1, v4, v4}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 82
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v4, v3, v3}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 85
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v3, v2, v5}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 89
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    .line 91
    const/4 v1, 0x5

    .line 89
    invoke-virtual {v0, v3, v5, v1}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 92
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    .line 94
    const/4 v1, 0x6

    .line 92
    invoke-virtual {v0, v5, v2, v1}, Lsfs2x/fsm/FiniteStateMachine;->addStateTransition(III)V

    .line 96
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0, v2}, Lsfs2x/fsm/FiniteStateMachine;->setCurrentState(I)V

    .line 97
    return-void
.end method

.method private createPacketHeader(B)Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    .locals 7
    .param p1, "headerByte"    # B

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 473
    new-instance v0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    and-int/lit8 v2, p1, 0x40

    if-lez v2, :cond_1

    move v2, v1

    .line 474
    :goto_0
    and-int/lit8 v3, p1, 0x20

    if-lez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/lit8 v4, p1, 0x10

    if-lez v4, :cond_3

    move v4, v1

    .line 475
    :goto_2
    and-int/lit8 v6, p1, 0x8

    if-lez v6, :cond_0

    move v5, v1

    .line 473
    :cond_0
    invoke-direct/range {v0 .. v5}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;-><init>(ZZZZZ)V

    return-object v0

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v3, v5

    .line 474
    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method private encodePacketHeader(Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;)B
    .locals 2
    .param p1, "packetHeader"    # Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "headerByte":B
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const/16 v1, 0x80

    int-to-byte v0, v1

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    .line 488
    :cond_1
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 491
    :cond_2
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBlueBoxed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 494
    :cond_3
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 497
    :cond_4
    return v0
.end method

.method private getReadState()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v0}, Lsfs2x/fsm/FiniteStateMachine;->getCurrentState()I

    move-result v0

    return v0
.end method

.method private handleDataSize(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;
    .locals 6
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 173
    iget-boolean v2, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v3, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Handling Header Size. Length: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "big"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 178
    :cond_0
    const/4 v0, -0x1

    .line 179
    .local v0, "dataSize":I
    const/4 v1, 0x2

    .line 182
    .local v1, "sizeBytes":I
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 186
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->readInt()I

    move-result v0

    .line 188
    :cond_1
    const/4 v1, 0x4

    .line 198
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Data size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 201
    :cond_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 204
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v2}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->setExpectedLen(I)V

    .line 205
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p0, p1, v1, v2}, Lsfs2x/client/core/SFSIOHandler;->resizeByteArray(Lsfs2x/client/util/ByteArray;II)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    .line 207
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 222
    :goto_2
    return-object p1

    .line 175
    .end local v0    # "dataSize":I
    .end local v1    # "sizeBytes":I
    :cond_4
    const-string/jumbo v2, "small"

    goto :goto_0

    .line 194
    .restart local v0    # "dataSize":I
    .restart local v1    # "sizeBytes":I
    :cond_5
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 195
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->readUShort()I

    move-result v0

    goto :goto_1

    .line 213
    :cond_6
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    invoke-virtual {v2, v5}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 216
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {p0, v2, p1}, Lsfs2x/client/core/SFSIOHandler;->writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;)V

    .line 219
    iget-object p1, p0, Lsfs2x/client/core/SFSIOHandler;->EMPTY_BUFFER:Lsfs2x/client/util/ByteArray;

    goto :goto_2
.end method

.method private handleDataSizeFragment(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;
    .locals 7
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v4, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Handling Size fragment. Data: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v4

    invoke-virtual {v4}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    rsub-int/lit8 v2, v4, 0x4

    .line 233
    .local v2, "remaining":I
    :goto_0
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    if-lt v4, v2, :cond_6

    .line 235
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {p0, v4, p1, v2}, Lsfs2x/client/core/SFSIOHandler;->writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;I)V

    .line 237
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x4

    .line 238
    .local v1, "neededLength":I
    :goto_1
    new-instance v3, Lsfs2x/client/util/ByteArray;

    invoke-direct {v3}, Lsfs2x/client/util/ByteArray;-><init>()V

    .line 239
    .local v3, "size":Lsfs2x/client/util/ByteArray;
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v4

    invoke-virtual {v4}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lsfs2x/client/util/ByteArray;->writeBytes([BI)V

    .line 240
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsfs2x/client/util/ByteArray;->setPosition(I)V

    .line 242
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isBigSized()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lsfs2x/client/util/ByteArray;->readInt()I

    move-result v0

    .line 244
    .local v0, "dataSize":I
    :goto_2
    iget-boolean v4, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "DataSize is ready: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 247
    :cond_1
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->setExpectedLen(I)V

    .line 248
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    new-instance v5, Lsfs2x/client/util/ByteArray;

    invoke-direct {v5}, Lsfs2x/client/util/ByteArray;-><init>()V

    invoke-virtual {v4, v5}, Lsfs2x/client/bitswarm/PendingPacket;->setBuffer(Lsfs2x/client/util/ByteArray;)V

    .line 251
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 254
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 255
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, p1, v2, v4}, Lsfs2x/client/core/SFSIOHandler;->resizeByteArray(Lsfs2x/client/util/ByteArray;II)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    .line 268
    .end local v0    # "dataSize":I
    .end local v1    # "neededLength":I
    .end local v3    # "size":Lsfs2x/client/util/ByteArray;
    :goto_3
    return-object p1

    .line 230
    .end local v2    # "remaining":I
    :cond_2
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v4

    invoke-virtual {v4}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    rsub-int/lit8 v2, v4, 0x2

    goto/16 :goto_0

    .line 237
    .restart local v2    # "remaining":I
    :cond_3
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 242
    .restart local v1    # "neededLength":I
    .restart local v3    # "size":Lsfs2x/client/util/ByteArray;
    :cond_4
    invoke-virtual {v3}, Lsfs2x/client/util/ByteArray;->readShort()S

    move-result v0

    goto :goto_2

    .line 258
    .restart local v0    # "dataSize":I
    :cond_5
    iget-object p1, p0, Lsfs2x/client/core/SFSIOHandler;->EMPTY_BUFFER:Lsfs2x/client/util/ByteArray;

    .line 259
    goto :goto_3

    .line 264
    .end local v0    # "dataSize":I
    .end local v1    # "neededLength":I
    .end local v3    # "size":Lsfs2x/client/util/ByteArray;
    :cond_6
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {p0, v4, p1}, Lsfs2x/client/core/SFSIOHandler;->writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;)V

    .line 265
    iget-object p1, p0, Lsfs2x/client/core/SFSIOHandler;->EMPTY_BUFFER:Lsfs2x/client/util/ByteArray;

    goto :goto_3
.end method

.method private handleInvalidData(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;
    .locals 4
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 349
    iget v2, p0, Lsfs2x/client/core/SFSIOHandler;->skipBytes:I

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    move-object v1, p1

    .line 361
    .end local p1    # "data":Lsfs2x/client/util/ByteArray;
    .local v1, "data":Lsfs2x/client/util/ByteArray;
    :goto_0
    return-object v1

    .line 356
    .end local v1    # "data":Lsfs2x/client/util/ByteArray;
    .restart local p1    # "data":Lsfs2x/client/util/ByteArray;
    :cond_0
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v2

    iget v3, p0, Lsfs2x/client/core/SFSIOHandler;->skipBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 358
    .local v0, "bytesToRemove":I
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, p1, v0, v2}, Lsfs2x/client/core/SFSIOHandler;->resizeByteArray(Lsfs2x/client/util/ByteArray;II)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    .line 360
    iget v2, p0, Lsfs2x/client/core/SFSIOHandler;->skipBytes:I

    sub-int/2addr v2, v0

    iput v2, p0, Lsfs2x/client/core/SFSIOHandler;->skipBytes:I

    move-object v1, p1

    .line 361
    .end local p1    # "data":Lsfs2x/client/util/ByteArray;
    .restart local v1    # "data":Lsfs2x/client/util/ByteArray;
    goto :goto_0
.end method

.method private handleNewPacket(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;
    .locals 5
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 147
    iget-boolean v2, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Handling New Packet of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->readByte()B

    move-result v1

    .line 153
    .local v1, "headerByte":B
    and-int/lit16 v2, v1, 0x80

    xor-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_1

    .line 156
    new-instance v2, Lcom/smartfoxserver/v2/exceptions/SFSException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected header byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->prettyPrintByteArray([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_1
    invoke-direct {p0, v1}, Lsfs2x/client/core/SFSIOHandler;->createPacketHeader(B)Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v0

    .line 162
    .local v0, "header":Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    new-instance v2, Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {v2, v0}, Lsfs2x/client/bitswarm/PendingPacket;-><init>(Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;)V

    iput-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    .line 165
    iget-object v2, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 168
    const/4 v2, 0x1

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, p1, v2, v3}, Lsfs2x/client/core/SFSIOHandler;->resizeByteArray(Lsfs2x/client/util/ByteArray;II)Lsfs2x/client/util/ByteArray;

    move-result-object v2

    return-object v2
.end method

.method private handlePacketData(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;
    .locals 9
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v6}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->getExpectedLen()I

    move-result v6

    iget-object v7, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v7}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v7

    invoke-virtual {v7}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v7

    sub-int v5, v6, v7

    .line 275
    .local v5, "remaining":I
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v6

    if-le v6, v5, :cond_4

    const/4 v4, 0x1

    .line 278
    .local v4, "isThereMore":Z
    :goto_0
    new-instance v0, Lsfs2x/client/util/ByteArray;

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v6

    invoke-direct {v0, v6}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    .line 282
    .local v0, "currentData":Lsfs2x/client/util/ByteArray;
    :try_start_0
    iget-boolean v6, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 283
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Handling Data: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 284
    const-string/jumbo v8, ", previous state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 285
    iget-object v8, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v8}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v8

    invoke-virtual {v8}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 286
    iget-object v8, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v8}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->getExpectedLen()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 283
    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 288
    :cond_0
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v6

    if-lt v6, v5, :cond_5

    .line 290
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {p0, v6, p1, v5}, Lsfs2x/client/core/SFSIOHandler;->writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;I)V

    .line 293
    iget-boolean v6, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 294
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    const-string/jumbo v7, "<<< Packet Complete >>>"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 297
    :cond_1
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v6}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isEncrypted()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    .line 301
    :try_start_1
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

    iget-object v7, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v7}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v7

    invoke-virtual {v7}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v7

    invoke-interface {v6, v7}, Lsfs2x/client/core/IPacketEncrypter;->decrypt([B)[B

    move-result-object v1

    .line 302
    .local v1, "decrypted":[B
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v6}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Lsfs2x/client/util/ByteArray;->setBuffer([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    .end local v1    # "decrypted":[B
    :cond_2
    :try_start_2
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v6}, Lsfs2x/client/bitswarm/PendingPacket;->getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isCompressed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {p0, v6}, Lsfs2x/client/core/SFSIOHandler;->uncompress(Lsfs2x/client/bitswarm/PendingPacket;)V

    .line 316
    :cond_3
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->protocolCodec:Lsfs2x/client/bitswarm/IProtocolCodec;

    iget-object v7, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-virtual {v7}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v7

    invoke-interface {v6, v7}, Lsfs2x/client/bitswarm/IProtocolCodec;->onPacketRead(Lsfs2x/client/util/ByteArray;)V

    .line 318
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    .line 328
    :goto_1
    if-eqz v4, :cond_6

    .line 329
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-direct {p0, p1, v5, v6}, Lsfs2x/client/core/SFSIOHandler;->resizeByteArray(Lsfs2x/client/util/ByteArray;II)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    :goto_2
    move-object v0, p1

    .line 344
    .end local v0    # "currentData":Lsfs2x/client/util/ByteArray;
    :goto_3
    return-object v0

    .line 275
    .end local v4    # "isThereMore":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 304
    .restart local v0    # "currentData":Lsfs2x/client/util/ByteArray;
    .restart local v4    # "isThereMore":Z
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/smartfoxserver/v2/exceptions/SFSException;

    invoke-direct {v6, v2}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 334
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 336
    .local v3, "ex":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error handling data: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    iput v5, p0, Lsfs2x/client/core/SFSIOHandler;->skipBytes:I

    .line 340
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->fsm:Lsfs2x/fsm/FiniteStateMachine;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lsfs2x/fsm/FiniteStateMachine;->applyTransition(I)I

    goto :goto_3

    .line 325
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :try_start_3
    iget-object v6, p0, Lsfs2x/client/core/SFSIOHandler;->pendingPacket:Lsfs2x/client/bitswarm/PendingPacket;

    invoke-direct {p0, v6, p1}, Lsfs2x/client/core/SFSIOHandler;->writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;)V

    goto :goto_1

    .line 332
    :cond_6
    iget-object p1, p0, Lsfs2x/client/core/SFSIOHandler;->EMPTY_BUFFER:Lsfs2x/client/util/ByteArray;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private resizeByteArray(Lsfs2x/client/util/ByteArray;II)Lsfs2x/client/util/ByteArray;
    .locals 3
    .param p1, "array"    # Lsfs2x/client/util/ByteArray;
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .prologue
    .line 366
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 369
    new-instance v1, Lsfs2x/client/util/ByteArray;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    return-object v1
.end method

.method private uncompress(Lsfs2x/client/bitswarm/PendingPacket;)V
    .locals 1
    .param p1, "pendingPacket"    # Lsfs2x/client/bitswarm/PendingPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v0

    .line 517
    .local v0, "buffer":Lsfs2x/client/util/ByteArray;
    invoke-virtual {v0}, Lsfs2x/client/util/ByteArray;->uncompress()V

    .line 518
    invoke-virtual {p1, v0}, Lsfs2x/client/bitswarm/PendingPacket;->setBuffer(Lsfs2x/client/util/ByteArray;)V

    .line 519
    return-void
.end method

.method private writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;)V
    .locals 2
    .param p1, "pendingPacket"    # Lsfs2x/client/bitswarm/PendingPacket;
    .param p2, "data"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 502
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v0

    .line 503
    .local v0, "buffer":Lsfs2x/client/util/ByteArray;
    invoke-virtual {p2}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V

    .line 504
    invoke-virtual {p1, v0}, Lsfs2x/client/bitswarm/PendingPacket;->setBuffer(Lsfs2x/client/util/ByteArray;)V

    .line 505
    return-void
.end method

.method private writeBytes(Lsfs2x/client/bitswarm/PendingPacket;Lsfs2x/client/util/ByteArray;I)V
    .locals 2
    .param p1, "pendingPacket"    # Lsfs2x/client/bitswarm/PendingPacket;
    .param p2, "data"    # Lsfs2x/client/util/ByteArray;
    .param p3, "count"    # I

    .prologue
    .line 509
    invoke-virtual {p1}, Lsfs2x/client/bitswarm/PendingPacket;->getBuffer()Lsfs2x/client/util/ByteArray;

    move-result-object v0

    .line 510
    .local v0, "buffer":Lsfs2x/client/util/ByteArray;
    invoke-virtual {p2}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lsfs2x/client/util/ByteArray;->writeBytes([BI)V

    .line 511
    invoke-virtual {p1, v0}, Lsfs2x/client/bitswarm/PendingPacket;->setBuffer(Lsfs2x/client/util/ByteArray;)V

    .line 512
    return-void
.end method

.method private writeTCP(Lsfs2x/client/bitswarm/IMessage;Lsfs2x/client/util/ByteArray;)V
    .locals 3
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .param p2, "writeBuffer"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 460
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSocket()Lsfs2x/client/core/sockets/ISocketLayer;

    move-result-object v0

    invoke-virtual {p2}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lsfs2x/client/core/sockets/ISocketLayer;->write([B)V

    .line 462
    iget-boolean v0, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Data written: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getHexDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method

.method private writeUDP(Lsfs2x/client/bitswarm/IMessage;Lsfs2x/client/util/ByteArray;)V
    .locals 1
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .param p2, "writeBuffer"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 468
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUdpManager()Lsfs2x/client/bitswarm/IUDPManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lsfs2x/client/bitswarm/IUDPManager;->send(Lsfs2x/client/util/ByteArray;)V

    .line 469
    return-void
.end method


# virtual methods
.method public final getCodec()Lsfs2x/client/bitswarm/IProtocolCodec;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->protocolCodec:Lsfs2x/client/bitswarm/IProtocolCodec;

    return-object v0
.end method

.method public onDataRead(Lsfs2x/client/util/ByteArray;)V
    .locals 3
    .param p1, "data"    # Lsfs2x/client/util/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v1, "Unexpected empty packet data: no readable bytes available!"

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsfs2x/client/core/SFSIOHandler;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_3

    .line 118
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    const-string/jumbo v1, "Data Read: Size > 1024, dump omitted"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsfs2x/client/util/ByteArray;->setPosition(I)V

    .line 126
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v0

    if-gtz v0, :cond_4

    .line 143
    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lsfs2x/client/core/SFSIOHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Data Read: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    invoke-direct {p0}, Lsfs2x/client/core/SFSIOHandler;->getReadState()I

    move-result v0

    if-nez v0, :cond_5

    .line 129
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSIOHandler;->handleNewPacket(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    goto :goto_1

    .line 131
    :cond_5
    invoke-direct {p0}, Lsfs2x/client/core/SFSIOHandler;->getReadState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 132
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSIOHandler;->handleDataSize(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    goto :goto_1

    .line 134
    :cond_6
    invoke-direct {p0}, Lsfs2x/client/core/SFSIOHandler;->getReadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 135
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSIOHandler;->handleDataSizeFragment(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    goto :goto_1

    .line 137
    :cond_7
    invoke-direct {p0}, Lsfs2x/client/core/SFSIOHandler;->getReadState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 138
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSIOHandler;->handlePacketData(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    goto :goto_1

    .line 140
    :cond_8
    invoke-direct {p0}, Lsfs2x/client/core/SFSIOHandler;->getReadState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 141
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSIOHandler;->handleInvalidData(Lsfs2x/client/util/ByteArray;)Lsfs2x/client/util/ByteArray;

    move-result-object p1

    goto :goto_1
.end method

.method public onDataWrite(Lsfs2x/client/bitswarm/IMessage;)V
    .locals 11
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 374
    new-instance v10, Lsfs2x/client/util/ByteArray;

    invoke-direct {v10}, Lsfs2x/client/util/ByteArray;-><init>()V

    .line 375
    .local v10, "writeBuffer":Lsfs2x/client/util/ByteArray;
    new-instance v6, Lsfs2x/client/util/ByteArray;

    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v4

    invoke-interface {v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->toBinary()[B

    move-result-object v4

    invoke-direct {v6, v4}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    .line 377
    .local v6, "binData":Lsfs2x/client/util/ByteArray;
    const/4 v3, 0x0

    .line 378
    .local v3, "isCompressed":Z
    const/4 v2, 0x0

    .line 381
    .local v2, "isEncrypted":Z
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    iget-object v5, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->getCompressionThreshold()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 383
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->compress()V

    .line 384
    const/4 v3, 0x1

    .line 387
    :cond_0
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    iget-object v5, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->getMaxMessageSize()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 395
    new-instance v1, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Message size is too big: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", the server limit is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 397
    iget-object v5, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->getMaxMessageSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-direct {v1, v4}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_1
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/BitSwarmClient;->getCryptoKey()Lsfs2x/client/util/CryptoKey;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 405
    :try_start_0
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->packetEncrypter:Lsfs2x/client/core/IPacketEncrypter;

    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lsfs2x/client/core/IPacketEncrypter;->encrypt([B)[B

    move-result-object v8

    .line 406
    .local v8, "encrypted":[B
    invoke-virtual {v6, v8}, Lsfs2x/client/util/ByteArray;->setBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    const/4 v2, 0x1

    .line 416
    .end local v8    # "encrypted":[B
    :cond_2
    const/4 v9, 0x2

    .line 418
    .local v9, "sizeBytes":I
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v4

    const v5, 0xffff

    if-le v4, v5, :cond_3

    .line 419
    const/4 v9, 0x4

    .line 421
    :cond_3
    new-instance v0, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    .line 426
    iget-object v4, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v4}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUseBlueBox()Z

    move-result v4

    .line 427
    const/4 v5, 0x4

    if-ne v9, v5, :cond_5

    move v5, v1

    .line 421
    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;-><init>(ZZZZZ)V

    .line 431
    .local v0, "packetHeader":Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    invoke-direct {p0, v0}, Lsfs2x/client/core/SFSIOHandler;->encodePacketHeader(Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;)B

    move-result v1

    invoke-virtual {v10, v1}, Lsfs2x/client/util/ByteArray;->writeByte(B)V

    .line 434
    const/4 v1, 0x2

    if-le v9, v1, :cond_6

    .line 435
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v1

    invoke-virtual {v10, v1}, Lsfs2x/client/util/ByteArray;->writeInt(I)V

    .line 442
    :goto_1
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getBytes()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lsfs2x/client/util/ByteArray;->writeBytes([B)V

    .line 445
    iget-object v1, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getUseBlueBox()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 446
    iget-object v1, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getHttpClient()Lsfs2x/client/bitswarm/bbox/BBClient;

    move-result-object v1

    invoke-virtual {v1, v10}, Lsfs2x/client/bitswarm/bbox/BBClient;->send(Lsfs2x/client/util/ByteArray;)V

    .line 456
    :cond_4
    :goto_2
    return-void

    .line 409
    .end local v0    # "packetHeader":Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    .end local v9    # "sizeBytes":I
    :catch_0
    move-exception v7

    .line 411
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/smartfoxserver/v2/exceptions/SFSException;

    invoke-direct {v1, v7}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 427
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "sizeBytes":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 438
    .restart local v0    # "packetHeader":Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    :cond_6
    invoke-virtual {v6}, Lsfs2x/client/util/ByteArray;->getLength()I

    move-result v1

    invoke-virtual {v10, v1}, Lsfs2x/client/util/ByteArray;->writeUShort(I)V

    goto :goto_1

    .line 448
    :cond_7
    iget-object v1, p0, Lsfs2x/client/core/SFSIOHandler;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v1}, Lsfs2x/client/bitswarm/BitSwarmClient;->getSocket()Lsfs2x/client/core/sockets/ISocketLayer;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/core/sockets/ISocketLayer;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    invoke-interface {p1}, Lsfs2x/client/bitswarm/IMessage;->isUDP()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 451
    invoke-direct {p0, p1, v10}, Lsfs2x/client/core/SFSIOHandler;->writeUDP(Lsfs2x/client/bitswarm/IMessage;Lsfs2x/client/util/ByteArray;)V

    goto :goto_2

    .line 454
    :cond_8
    invoke-direct {p0, p1, v10}, Lsfs2x/client/core/SFSIOHandler;->writeTCP(Lsfs2x/client/bitswarm/IMessage;Lsfs2x/client/util/ByteArray;)V

    goto :goto_2
.end method
