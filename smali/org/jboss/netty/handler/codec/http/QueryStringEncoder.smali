.class public Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;
.super Ljava/lang/Object;
.source "QueryStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
    }
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->uri:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    .line 75
    return-void
.end method

.method private static encodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\+"

    const-string/jumbo v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-nez p2, :cond_1

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    new-instance v1, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->uri:Ljava/lang/String;

    .line 127
    :goto_0
    return-object v3

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->uri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 119
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;

    .line 120
    .local v1, "param":Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v3, v1, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;->value:Ljava/lang/String;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 124
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v1    # "param":Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
