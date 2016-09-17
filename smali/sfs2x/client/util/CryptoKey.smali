.class public Lsfs2x/client/util/CryptoKey;
.super Ljava/lang/Object;
.source "CryptoKey.java"


# static fields
.field private static final SIZE:I = 0x10


# instance fields
.field private initVector:[B

.field private secretKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "combinedBytes"    # [B

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, v1, [B

    iput-object v0, p0, Lsfs2x/client/util/CryptoKey;->secretKey:[B

    .line 16
    new-array v0, v1, [B

    iput-object v0, p0, Lsfs2x/client/util/CryptoKey;->initVector:[B

    .line 18
    iget-object v0, p0, Lsfs2x/client/util/CryptoKey;->secretKey:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object v0, p0, Lsfs2x/client/util/CryptoKey;->initVector:[B

    invoke-static {p1, v1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    return-void
.end method


# virtual methods
.method public getInitVector()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lsfs2x/client/util/CryptoKey;->initVector:[B

    return-object v0
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lsfs2x/client/util/CryptoKey;->secretKey:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CryptoKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/util/CryptoKey;->secretKey:[B

    invoke-static {v1}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nIV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/util/CryptoKey;->initVector:[B

    invoke-static {v1}, Lcom/smartfoxserver/bitswarm/util/ByteUtils;->fullHexDump([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
