.class public Lorg/jboss/netty/handler/codec/http/CookieEncoder;
.super Ljava/lang/Object;
.source "CookieEncoder.java"


# instance fields
.field private final cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final server:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "server"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    .line 67
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->server:Z

    .line 68
    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    const-string/jumbo v2, ""

    invoke-static {p0, p1, v2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 219
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :sswitch_0
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .end local v0    # "c":C
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    .line 241
    if-nez p2, :cond_0

    .line 242
    const-string/jumbo p2, ""

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\""

    const-string/jumbo v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    return-void
.end method

.method private static addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    return-void
.end method

.method private encodeClientSide()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x1

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 178
    .local v0, "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v5

    if-lt v5, v7, :cond_1

    .line 179
    const-string/jumbo v5, "$Version"

    invoke-static {v4, v5, v7}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 182
    :cond_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 185
    const-string/jumbo v5, "$Path"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 189
    const-string/jumbo v5, "$Domain"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_3
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 193
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v5, "Port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 199
    .local v3, "port":I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    .end local v3    # "port":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 203
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 208
    .end local v0    # "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private encodeServerSide()Ljava/lang/String;
    .locals 14

    .prologue
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 105
    .local v0, "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v5

    if-ltz v5, :cond_1

    .line 108
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v5

    if-nez v5, :cond_8

    .line 109
    const-string/jumbo v5, "Expires"

    new-instance v6, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 119
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v5

    if-lez v5, :cond_9

    .line 120
    const-string/jumbo v5, "Path"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 127
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v5

    if-lez v5, :cond_a

    .line 128
    const-string/jumbo v5, "Domain"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    :goto_3
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    const-string/jumbo v5, "Secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->isHttpOnly()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 138
    const-string/jumbo v5, "HTTPOnly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 142
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 143
    const-string/jumbo v5, "Comment"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_6
    const-string/jumbo v5, "Version"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 148
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 149
    const-string/jumbo v5, "CommentURL"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_7
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 153
    const-string/jumbo v5, "Port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 157
    .local v3, "port":I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 114
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "port":I
    :cond_8
    const-string/jumbo v5, "Max-Age"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 122
    :cond_9
    const-string/jumbo v5, "Path"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    :cond_a
    const-string/jumbo v5, "Domain"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 160
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x22

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 161
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->isDiscard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    const-string/jumbo v5, "Discard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 170
    .end local v0    # "cookie":Lorg/jboss/netty/handler/codec/http/Cookie;
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultCookie;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public addCookie(Lorg/jboss/netty/handler/codec/http/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Lorg/jboss/netty/handler/codec/http/Cookie;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->server:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->encodeServerSide()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "answer":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 98
    return-object v0

    .line 95
    .end local v0    # "answer":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->encodeClientSide()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "answer":Ljava/lang/String;
    goto :goto_0
.end method
