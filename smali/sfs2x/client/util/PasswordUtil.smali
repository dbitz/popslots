.class public Lsfs2x/client/util/PasswordUtil;
.super Ljava/lang/Object;
.source "PasswordUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Password(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pass"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 40
    .local v3, "m":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 41
    .local v0, "data":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 43
    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 45
    .local v2, "i":Ljava/math/BigInteger;
    const-string/jumbo v4, "%1$032x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 47
    .end local v0    # "data":[B
    .end local v2    # "i":Ljava/math/BigInteger;
    .end local v3    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;

    const-string/jumbo v5, "Unexpected: No MD5 hash algorithm found. Is this running on an a proper Sun/Oracle JRE?!"

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
