.class public final enum Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;
.super Ljava/lang/Enum;
.source "PacketReadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

.field public static final enum WAIT_DATA:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

.field public static final enum WAIT_DATA_SIZE:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

.field public static final enum WAIT_DATA_SIZE_FRAGMENT:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

.field public static final enum WAIT_NEW_PACKET:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    const-string/jumbo v1, "WAIT_NEW_PACKET"

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_NEW_PACKET:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    .line 6
    new-instance v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    const-string/jumbo v1, "WAIT_DATA_SIZE"

    invoke-direct {v0, v1, v3}, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_DATA_SIZE:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    .line 7
    new-instance v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    const-string/jumbo v1, "WAIT_DATA_SIZE_FRAGMENT"

    invoke-direct {v0, v1, v4}, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_DATA_SIZE_FRAGMENT:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    .line 8
    new-instance v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    const-string/jumbo v1, "WAIT_DATA"

    invoke-direct {v0, v1, v5}, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_DATA:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    sget-object v1, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_NEW_PACKET:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_DATA_SIZE:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_DATA_SIZE_FRAGMENT:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->WAIT_DATA:Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->ENUM$VALUES:[Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    return-object v0
.end method

.method public static values()[Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;->ENUM$VALUES:[Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    array-length v1, v0

    new-array v2, v1, [Lcom/smartfoxserver/v2/protocol/binary/PacketReadState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
