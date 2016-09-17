.class public Lsfs2x/client/bitswarm/PacketReadTransition;
.super Ljava/lang/Object;
.source "PacketReadTransition.java"


# static fields
.field public static final HeaderReceived:I = 0x0

.field public static final IncompleteSize:I = 0x2

.field public static final InvalidData:I = 0x5

.field public static final InvalidDataFinished:I = 0x6

.field public static final PacketFinished:I = 0x4

.field public static final SizeReceived:I = 0x1

.field public static final WholeSizeReceived:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
