.class public Lsfs2x/client/bitswarm/BitswarmPacketReadState;
.super Ljava/lang/Object;
.source "BitswarmPacketReadState.java"


# static fields
.field public static final INVALID_DATA:I = 0x4

.field public static final WAIT_DATA:I = 0x3

.field public static final WAIT_DATA_SIZE:I = 0x1

.field public static final WAIT_DATA_SIZE_FRAGMENT:I = 0x2

.field public static final WAIT_NEW_PACKET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
