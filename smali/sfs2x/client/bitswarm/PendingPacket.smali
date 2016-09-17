.class public Lsfs2x/client/bitswarm/PendingPacket;
.super Ljava/lang/Object;
.source "PendingPacket.java"


# instance fields
.field private buffer:Lsfs2x/client/util/ByteArray;

.field private header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;


# direct methods
.method public constructor <init>(Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;)V
    .locals 2
    .param p1, "header"    # Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lsfs2x/client/bitswarm/PendingPacket;->header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    .line 15
    new-instance v0, Lsfs2x/client/util/ByteArray;

    invoke-direct {v0}, Lsfs2x/client/util/ByteArray;-><init>()V

    iput-object v0, p0, Lsfs2x/client/bitswarm/PendingPacket;->buffer:Lsfs2x/client/util/ByteArray;

    .line 16
    iget-object v0, p0, Lsfs2x/client/bitswarm/PendingPacket;->buffer:Lsfs2x/client/util/ByteArray;

    invoke-virtual {p1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->isCompressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsfs2x/client/util/ByteArray;->setCompressed(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public getBuffer()Lsfs2x/client/util/ByteArray;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lsfs2x/client/bitswarm/PendingPacket;->buffer:Lsfs2x/client/util/ByteArray;

    return-object v0
.end method

.method public getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lsfs2x/client/bitswarm/PendingPacket;->header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    return-object v0
.end method

.method public setBuffer(Lsfs2x/client/util/ByteArray;)V
    .locals 0
    .param p1, "buffer"    # Lsfs2x/client/util/ByteArray;

    .prologue
    .line 28
    iput-object p1, p0, Lsfs2x/client/bitswarm/PendingPacket;->buffer:Lsfs2x/client/util/ByteArray;

    .line 29
    return-void
.end method
