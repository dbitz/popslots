.class Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;
.super Ljava/lang/Object;
.source "HttpCodecUtil.java"


# static fields
.field static final COLON:B = 0x3at

.field static final COMMA:B = 0x2ct

.field static final CR:B = 0xdt

.field static final CRLF:[B

.field static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field static final DOUBLE_QUOTE:B = 0x22t

.field static final EQUALS:B = 0x3dt

.field static final HT:B = 0x9t

.field static final LF:B = 0xat

.field static final SEMICOLON:B = 0x3bt

.field static final SP:B = 0x20t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->CRLF:[B

    .line 72
    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void

    .line 53
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 5
    .param p0, "m"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v3, 0x0

    .line 164
    const-string/jumbo v4, "Transfer-Encoding"

    invoke-interface {p0, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "chunked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v3

    .line 169
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, "v":Ljava/lang/String;
    const-string/jumbo v4, "chunked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static validateHeaderName(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "c":C
    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name contains non-ascii character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :sswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name contains one of the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v0    # "c":C
    :cond_2
    return-void

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method static validateHeaderValue(Ljava/lang/String;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "value"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 110
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 124
    packed-switch v2, :pswitch_data_1

    .line 110
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value contains a prohibited character \'\\v\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value contains a prohibited character \'\\f\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :pswitch_2
    packed-switch v0, :pswitch_data_2

    :pswitch_3
    goto :goto_1

    .line 131
    :pswitch_4
    const/4 v2, 0x2

    goto :goto_1

    .line 128
    :pswitch_5
    const/4 v2, 0x1

    .line 129
    goto :goto_1

    .line 136
    :pswitch_6
    packed-switch v0, :pswitch_data_3

    .line 141
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Only \'\\n\' is allowed after \'\\r\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :pswitch_7
    const/4 v2, 0x2

    .line 139
    goto :goto_1

    .line 146
    :pswitch_8
    sparse-switch v0, :sswitch_data_0

    .line 151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Only \' \' and \'\\t\' are allowed after \'\\n\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :sswitch_0
    const/4 v2, 0x0

    .line 149
    goto :goto_1

    .line 157
    .end local v0    # "c":C
    :cond_1
    if-eqz v2, :cond_2

    .line 158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value must not end with \'\\r\' or \'\\n\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_2
    return-void

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 124
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 126
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 136
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_7
    .end packed-switch

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
