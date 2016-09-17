.class public Lsfs2x/client/core/DefaultPacketEncrypter;
.super Ljava/lang/Object;
.source "DefaultPacketEncrypter.java"

# interfaces
.implements Lsfs2x/client/core/IPacketEncrypter;


# instance fields
.field private final ALGORITHM:Ljava/lang/String;

.field private final ALGORITHM_MODE:Ljava/lang/String;

.field private final bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;


# direct methods
.method public constructor <init>(Lsfs2x/client/bitswarm/BitSwarmClient;)V
    .locals 1
    .param p1, "bitSwarmClient"    # Lsfs2x/client/bitswarm/BitSwarmClient;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "AES"

    iput-object v0, p0, Lsfs2x/client/core/DefaultPacketEncrypter;->ALGORITHM:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "AES/CBC/PKCS5PADDING"

    iput-object v0, p0, Lsfs2x/client/core/DefaultPacketEncrypter;->ALGORITHM_MODE:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lsfs2x/client/core/DefaultPacketEncrypter;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    .line 20
    return-void
.end method

.method private execute(I[B)[B
    .locals 7
    .param p1, "mode"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v5, p0, Lsfs2x/client/core/DefaultPacketEncrypter;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;

    invoke-virtual {v5}, Lsfs2x/client/bitswarm/BitSwarmClient;->getCryptoKey()Lsfs2x/client/util/CryptoKey;

    move-result-object v1

    .line 38
    .local v1, "ck":Lsfs2x/client/util/CryptoKey;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Lsfs2x/client/util/CryptoKey;->getInitVector()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 39
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lsfs2x/client/util/CryptoKey;->getSecretKey()[B

    move-result-object v5

    const-string/jumbo v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v5, "AES/CBC/PKCS5PADDING"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 42
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 44
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 46
    .local v3, "res":[B
    return-object v3
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsfs2x/client/core/DefaultPacketEncrypter;->execute(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsfs2x/client/core/DefaultPacketEncrypter;->execute(I[B)[B

    move-result-object v0

    return-object v0
.end method
