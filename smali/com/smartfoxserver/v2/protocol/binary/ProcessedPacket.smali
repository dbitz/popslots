.class public Lcom/smartfoxserver/v2/protocol/binary/ProcessedPacket;
.super Ljava/lang/Object;
.source "ProcessedPacket.java"


# instance fields
.field private data:[B

.field private state:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;


# direct methods
.method public constructor <init>(Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;[B)V
    .locals 0
    .param p1, "state"    # Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;
    .param p2, "data"    # [B

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/smartfoxserver/v2/protocol/binary/ProcessedPacket;->state:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    .line 11
    iput-object p2, p0, Lcom/smartfoxserver/v2/protocol/binary/ProcessedPacket;->data:[B

    .line 12
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/smartfoxserver/v2/protocol/binary/ProcessedPacket;->data:[B

    return-object v0
.end method

.method public getState()Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartfoxserver/v2/protocol/binary/ProcessedPacket;->state:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    return-object v0
.end method
