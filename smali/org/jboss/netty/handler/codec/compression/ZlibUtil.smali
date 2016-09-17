.class final Lorg/jboss/netty/handler/codec/compression/ZlibUtil;
.super Ljava/lang/Object;
.source "ZlibUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/compression/ZlibUtil$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;
    .locals 3
    .param p0, "wrapper"    # Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibUtil$1;->$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 43
    :pswitch_0
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_NONE:Ljava/lang/Enum;

    .line 54
    .local v0, "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :goto_0
    return-object v0

    .line 46
    .end local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_1
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    .line 47
    .restart local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_0

    .line 49
    .end local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_2
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_GZIP:Ljava/lang/Enum;

    .line 50
    .restart local v0    # "convertedWrapperType":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static exception(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)Lorg/jboss/netty/handler/codec/compression/CompressionException;
    .locals 4
    .param p0, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 35
    new-instance v1, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V
    .locals 1
    .param p0, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->exception(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)Lorg/jboss/netty/handler/codec/compression/CompressionException;

    move-result-object v0

    throw v0
.end method
