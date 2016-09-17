.class public Lcom/helpshift/util/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sigString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .line 16
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v6

    iget-object v6, v6, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    invoke-virtual {v6}, Lcom/helpshift/model/AppInfoModel;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v6

    iget-object v6, v6, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    invoke-virtual {v6}, Lcom/helpshift/model/AppInfoModel;->isInstalled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 20
    new-instance v6, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v7, "Install information missing"

    invoke-direct {v6, v7}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 24
    :cond_0
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "HmacSHA256"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 25
    .local v5, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v6, "HmacSHA256"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 26
    .local v4, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 27
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 28
    .local v2, "hmacData":[B
    invoke-static {v2}, Lcom/helpshift/util/ByteArrayUtil;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 29
    .end local v2    # "hmacData":[B
    .end local v4    # "mac":Ljavax/crypto/Mac;
    .end local v5    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/security/GeneralSecurityException;

    invoke-direct {v6, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
