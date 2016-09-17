.class public Lorg/jboss/netty/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_16:Ljava/nio/charset/Charset;

.field public static final UTF_16BE:Ljava/nio/charset/Charset;

.field public static final UTF_16LE:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final decoders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final encoders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_16:Ljava/nio/charset/Charset;

    .line 44
    const-string/jumbo v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 49
    const-string/jumbo v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 54
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 65
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 67
    new-instance v0, Lorg/jboss/netty/util/CharsetUtil$1;

    invoke-direct {v0}, Lorg/jboss/netty/util/CharsetUtil$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->encoders:Ljava/lang/ThreadLocal;

    .line 75
    new-instance v0, Lorg/jboss/netty/util/CharsetUtil$2;

    invoke-direct {v0}, Lorg/jboss/netty/util/CharsetUtil$2;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/CharsetUtil;->decoders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static getDecoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetDecoder;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "charset"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    sget-object v3, Lorg/jboss/netty/util/CharsetUtil;->decoders:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 118
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetDecoder;>;"
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 119
    .local v0, "d":Ljava/nio/charset/CharsetDecoder;
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 121
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 122
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-object v1, v0

    .line 130
    .end local v0    # "d":Ljava/nio/charset/CharsetDecoder;
    .local v1, "d":Ljava/nio/charset/CharsetDecoder;
    :goto_0
    return-object v1

    .line 126
    .end local v1    # "d":Ljava/nio/charset/CharsetDecoder;
    .restart local v0    # "d":Ljava/nio/charset/CharsetDecoder;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 127
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 128
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 129
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 130
    .end local v0    # "d":Ljava/nio/charset/CharsetDecoder;
    .restart local v1    # "d":Ljava/nio/charset/CharsetDecoder;
    goto :goto_0
.end method

.method public static getEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "charset"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    sget-object v3, Lorg/jboss/netty/util/CharsetUtil;->encoders:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 93
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetEncoder;>;"
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 94
    .local v0, "e":Ljava/nio/charset/CharsetEncoder;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 96
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 97
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-object v1, v0

    .line 105
    .end local v0    # "e":Ljava/nio/charset/CharsetEncoder;
    .local v1, "e":Ljava/nio/charset/CharsetEncoder;
    :goto_0
    return-object v1

    .line 101
    .end local v1    # "e":Ljava/nio/charset/CharsetEncoder;
    .restart local v0    # "e":Ljava/nio/charset/CharsetEncoder;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 102
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 103
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 104
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 105
    .end local v0    # "e":Ljava/nio/charset/CharsetEncoder;
    .restart local v1    # "e":Ljava/nio/charset/CharsetEncoder;
    goto :goto_0
.end method
