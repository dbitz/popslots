.class public Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;
.super Ljava/lang/Object;
.source "PendingPacket.java"


# instance fields
.field private buffer:Ljava/lang/Object;

.field private header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;


# direct methods
.method public constructor <init>(Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;->header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    .line 13
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;->buffer:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeader()Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;->header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    return-object v0
.end method

.method public setBuffer(Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/Object;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;->buffer:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;->header:Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/protocol/binary/PacketHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smartfoxserver/v2/protocol/binary/PendingPacket;->buffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
