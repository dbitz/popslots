.class public Lorg/jboss/netty/handler/codec/http/CookieDecoder;
.super Ljava/lang/Object;
.source "CookieDecoder.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "(?:\\s|[;,])*\\$*([^;=]+)(?:=(?:[\"\']((?:\\\\.|[^\"])*)[\"\']|([^;,]*)))?(\\s*(?:[;,]+\\s*|$))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/CookieDecoder;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private decodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 238
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "\\\""

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\\\"

    const-string/jumbo v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v8, Lorg/jboss/netty/handler/codec/http/CookieDecoder;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 188
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 189
    .local v5, "pos":I
    const/4 v1, 0x0

    .line 190
    .local v1, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 191
    .local v7, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 192
    .local v6, "separator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 193
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 196
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "newName":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "newValue":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 199
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jboss/netty/handler/codec/http/CookieDecoder;->decodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "newSeparator":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 204
    move-object v1, v2

    .line 205
    if-nez v4, :cond_1

    const-string/jumbo v7, ""

    .line 206
    :goto_1
    move-object v6, v3

    .line 207
    goto :goto_0

    :cond_1
    move-object v7, v4

    .line 205
    goto :goto_1

    .line 210
    :cond_2
    if-nez v4, :cond_3

    const-string/jumbo v8, "Discard"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "Secure"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "HTTPOnly"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    move-object v6, v3

    .line 216
    goto :goto_0

    .line 219
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    move-object v1, v2

    .line 223
    move-object v7, v4

    .line 224
    move-object v6, v3

    .line 225
    goto :goto_0

    .line 228
    .end local v2    # "newName":Ljava/lang/String;
    .end local v3    # "newSeparator":Ljava/lang/String;
    .end local v4    # "newValue":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 229
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_5
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/util/Set;
    .locals 36
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v20, Ljava/util/ArrayList;

    const/16 v29, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v20, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    const/16 v29, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v27, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/CookieDecoder;->extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 70
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    .line 182
    :cond_0
    :goto_0
    return-object v8

    .line 75
    :cond_1
    const/16 v28, 0x0

    .line 79
    .local v28, "version":I
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    const-string/jumbo v30, "Version"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 81
    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v28

    .line 85
    :goto_1
    const/4 v12, 0x1

    .line 90
    .local v12, "i":I
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-gt v0, v12, :cond_3

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    goto :goto_0

    .line 87
    .end local v12    # "i":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "i":I
    goto :goto_2

    .line 95
    :cond_3
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 96
    .local v8, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_0

    .line 97
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 98
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 99
    .local v26, "value":Ljava/lang/String;
    if-nez v26, :cond_4

    .line 100
    const-string/jumbo v26, ""

    .line 103
    :cond_4
    new-instance v5, Lorg/jboss/netty/handler/codec/http/DefaultCookie;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v5, "c":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v9, 0x0

    .line 107
    .local v9, "discard":Z
    const/16 v25, 0x0

    .line 108
    .local v25, "secure":Z
    const/4 v11, 0x0

    .line 109
    .local v11, "httpOnly":Z
    const/4 v6, 0x0

    .line 110
    .local v6, "comment":Ljava/lang/String;
    const/4 v7, 0x0

    .line 111
    .local v7, "commentURL":Ljava/lang/String;
    const/4 v10, 0x0

    .line 112
    .local v10, "domain":Ljava/lang/String;
    const/16 v21, 0x0

    .line 113
    .local v21, "path":Ljava/lang/String;
    const/16 v16, -0x1

    .line 114
    .local v16, "maxAge":I
    new-instance v23, Ljava/util/ArrayList;

    const/16 v29, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v23, "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v14, v12, 0x1

    .local v14, "j":I
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v14, v0, :cond_12

    .line 117
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "name":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 118
    .restart local v17    # "name":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "value":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 120
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v29, "Discard"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 121
    const/4 v9, 0x1

    .line 116
    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 122
    :cond_6
    const-string/jumbo v29, "Secure"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 123
    const/16 v25, 0x1

    goto :goto_5

    .line 124
    :cond_7
    const-string/jumbo v29, "HTTPOnly"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 125
    const/4 v11, 0x1

    goto :goto_5

    .line 126
    :cond_8
    const-string/jumbo v29, "Comment"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 127
    move-object/from16 v6, v26

    goto :goto_5

    .line 128
    :cond_9
    const-string/jumbo v29, "CommentURL"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 129
    move-object/from16 v7, v26

    goto :goto_5

    .line 130
    :cond_a
    const-string/jumbo v29, "Domain"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 131
    move-object/from16 v10, v26

    goto :goto_5

    .line 132
    :cond_b
    const-string/jumbo v29, "Path"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 133
    move-object/from16 v21, v26

    goto :goto_5

    .line 134
    :cond_c
    const-string/jumbo v29, "Expires"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 136
    :try_start_1
    new-instance v29, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;

    invoke-direct/range {v29 .. v29}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v18, v30, v32

    .line 139
    .local v18, "maxAgeMillis":J
    const-wide/16 v30, 0x0

    cmp-long v29, v18, v30

    if-gtz v29, :cond_d

    .line 140
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 142
    :cond_d
    const-wide/16 v30, 0x3e8

    div-long v30, v18, v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    const-wide/16 v32, 0x3e8

    rem-long v32, v18, v32
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-eqz v29, :cond_e

    const/16 v29, 0x1

    :goto_6
    add-int v16, v30, v29

    goto/16 :goto_5

    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    .line 148
    .end local v18    # "maxAgeMillis":J
    :cond_f
    const-string/jumbo v29, "Max-Age"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 149
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_5

    .line 150
    :cond_10
    const-string/jumbo v29, "Version"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 151
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    goto/16 :goto_5

    .line 152
    :cond_11
    const-string/jumbo v29, "Port"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 153
    const-string/jumbo v29, ","

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 154
    .local v22, "portList":[Ljava/lang/String;
    move-object/from16 v4, v22

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_7
    if-ge v13, v15, :cond_5

    aget-object v24, v4, v13

    .line 156
    .local v24, "s1":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 166
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v22    # "portList":[Ljava/lang/String;
    .end local v24    # "s1":Ljava/lang/String;
    :cond_12
    move/from16 v0, v28

    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->setVersion(I)V

    .line 167
    move/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->setMaxAge(I)V

    .line 168
    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 169
    invoke-interface {v5, v10}, Lorg/jboss/netty/handler/codec/http/Cookie;->setDomain(Ljava/lang/String;)V

    .line 170
    move/from16 v0, v25

    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->setSecure(Z)V

    .line 171
    invoke-interface {v5, v11}, Lorg/jboss/netty/handler/codec/http/Cookie;->setHttpOnly(Z)V

    .line 172
    if-lez v28, :cond_13

    .line 173
    invoke-interface {v5, v6}, Lorg/jboss/netty/handler/codec/http/Cookie;->setComment(Ljava/lang/String;)V

    .line 175
    :cond_13
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_14

    .line 176
    invoke-interface {v5, v7}, Lorg/jboss/netty/handler/codec/http/Cookie;->setCommentUrl(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->setPorts(Ljava/lang/Iterable;)V

    .line 178
    invoke-interface {v5, v9}, Lorg/jboss/netty/handler/codec/http/Cookie;->setDiscard(Z)V

    .line 96
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 157
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    .restart local v22    # "portList":[Ljava/lang/String;
    .restart local v24    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v29

    goto :goto_8

    .line 145
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v22    # "portList":[Ljava/lang/String;
    .end local v24    # "s1":Ljava/lang/String;
    :catch_1
    move-exception v29

    goto/16 :goto_5

    .line 82
    .end local v5    # "c":Lorg/jboss/netty/handler/codec/http/Cookie;
    .end local v6    # "comment":Ljava/lang/String;
    .end local v7    # "commentURL":Ljava/lang/String;
    .end local v8    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/handler/codec/http/Cookie;>;"
    .end local v9    # "discard":Z
    .end local v10    # "domain":Ljava/lang/String;
    .end local v11    # "httpOnly":Z
    .end local v12    # "i":I
    .end local v14    # "j":I
    .end local v16    # "maxAge":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v21    # "path":Ljava/lang/String;
    .end local v23    # "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25    # "secure":Z
    .end local v26    # "value":Ljava/lang/String;
    :catch_2
    move-exception v29

    goto/16 :goto_1
.end method
