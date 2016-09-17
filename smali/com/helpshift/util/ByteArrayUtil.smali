.class public Lcom/helpshift/util/ByteArrayUtil;
.super Ljava/lang/Object;
.source "ByteArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toByteArray(Ljava/lang/Object;)[B
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v2, 0x0

    .line 13
    .local v2, "bytes":[B
    const/4 v0, 0x0

    .line 14
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 16
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 22
    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 25
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 29
    :cond_1
    return-object v2

    .line 22
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v5

    :goto_0
    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 25
    :cond_2
    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    throw v5

    .line 22
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 56
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 57
    .local v0, "hexArray":[C
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 59
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 60
    aget-byte v4, p0, v2

    and-int/lit16 v3, v4, 0xff

    .line 61
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 62
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 56
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static toObject([B)Ljava/lang/Object;
    .locals 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 35
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 37
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 44
    :cond_0
    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 48
    :cond_1
    return-object v2

    .line 41
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v5

    :goto_0
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 44
    :cond_2
    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_3
    throw v5

    .line 41
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
