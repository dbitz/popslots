.class public Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;
.super Ljava/lang/Object;
.source "QueryStringDecoder.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 93
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    if-nez p2, :cond_1

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 110
    return-void
.end method

.method private static addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method private static decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    const-string/jumbo v1, ""

    .line 196
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 152
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 153
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 155
    .local v4, "pos":I
    const/4 v0, 0x0

    .line 156
    .local v0, "c":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 158
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_2

    if-nez v2, :cond_2

    .line 159
    if-eq v4, v1, :cond_0

    .line 160
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 156
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_2
    const/16 v5, 0x26

    if-ne v0, v5, :cond_1

    .line 164
    if-nez v2, :cond_4

    if-eq v4, v1, :cond_4

    .line 168
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v3, v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    :goto_2
    add-int/lit8 v4, v1, 0x1

    goto :goto_1

    .line 169
    :cond_4
    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x0

    goto :goto_2

    .line 177
    :cond_5
    if-eq v4, v1, :cond_8

    .line 178
    if-nez v2, :cond_7

    .line 179
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v3, v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_6
    :goto_3
    return-object v3

    .line 181
    :cond_7
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 183
    :cond_8
    if-eqz v2, :cond_6

    .line 184
    const-string/jumbo v5, ""

    invoke-static {v3, v2, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 142
    .local v0, "pathLength":I
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 147
    .end local v0    # "pathLength":I
    :goto_0
    return-object v1

    .line 145
    .restart local v0    # "pathLength":I
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    .line 147
    .end local v0    # "pathLength":I
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 126
    .local v0, "pathEndPos":I
    if-gez v0, :cond_1

    .line 127
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    .line 133
    .end local v0    # "pathEndPos":I
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 130
    .restart local v0    # "pathEndPos":I
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    goto :goto_0
.end method
