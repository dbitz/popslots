.class public Lorg/apache/commons/lang/CharSet;
.super Ljava/lang/Object;
.source "CharSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

.field public static final ASCII_ALPHA_LOWER:Lorg/apache/commons/lang/CharSet;

.field public static final ASCII_ALPHA_UPPER:Lorg/apache/commons/lang/CharSet;

.field public static final ASCII_NUMERIC:Lorg/apache/commons/lang/CharSet;

.field protected static final COMMON:Ljava/util/Map;

.field public static final EMPTY:Lorg/apache/commons/lang/CharSet;

.field private static final serialVersionUID:J = 0x528affa5f57a3936L


# instance fields
.field private set:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v2, Lorg/apache/commons/lang/CharSet;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang/CharSet;->EMPTY:Lorg/apache/commons/lang/CharSet;

    .line 57
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string/jumbo v2, "a-zA-Z"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

    .line 63
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string/jumbo v2, "a-z"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_LOWER:Lorg/apache/commons/lang/CharSet;

    .line 69
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string/jumbo v2, "A-Z"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_UPPER:Lorg/apache/commons/lang/CharSet;

    .line 75
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string/jumbo v2, "0-9"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_NUMERIC:Lorg/apache/commons/lang/CharSet;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    .line 85
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    sget-object v2, Lorg/apache/commons/lang/CharSet;->EMPTY:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string/jumbo v1, ""

    sget-object v2, Lorg/apache/commons/lang/CharSet;->EMPTY:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string/jumbo v1, "a-zA-Z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string/jumbo v1, "A-Za-z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string/jumbo v1, "a-z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_LOWER:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string/jumbo v1, "A-Z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_UPPER:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string/jumbo v1, "0-9"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_NUMERIC:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "setStr"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/CharSet;->add(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "set"    # [Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    .line 185
    array-length v1, p1

    .line 186
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 187
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/CharSet;->add(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;
    .locals 2
    .param p0, "setStr"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v1, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "set":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 144
    check-cast v0, Lorg/apache/commons/lang/CharSet;

    .line 146
    .end local v0    # "set":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "set":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    .end local v0    # "set":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;
    .locals 1
    .param p0, "setStrs"    # [Ljava/lang/String;

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/CharSet;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected add(Ljava/lang/String;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5e

    const/16 v8, 0x2d

    const/4 v7, 0x1

    .line 198
    if-nez p1, :cond_1

    .line 224
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 203
    .local v0, "len":I
    const/4 v1, 0x0

    .line 204
    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 205
    sub-int v2, v0, v1

    .line 206
    .local v2, "remainder":I
    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_2

    .line 208
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 210
    :cond_2
    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_3

    .line 212
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/lang/CharRange;-><init>(CC)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 214
    :cond_3
    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_4

    .line 216
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5, v7}, Lorg/apache/commons/lang/CharRange;-><init>(CZ)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 220
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/commons/lang/CharRange;-><init>(C)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 246
    iget-object v2, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/CharRange;

    .line 248
    .local v1, "range":Lorg/apache/commons/lang/CharRange;
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/CharRange;->contains(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v2, 0x1

    .line 252
    .end local v1    # "range":Lorg/apache/commons/lang/CharRange;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 269
    if-ne p1, p0, :cond_0

    .line 270
    const/4 v1, 0x1

    .line 276
    :goto_0
    return v1

    .line 272
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/CharSet;

    if-nez v1, :cond_1

    .line 273
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 275
    check-cast v0, Lorg/apache/commons/lang/CharSet;

    .line 276
    .local v0, "other":Lorg/apache/commons/lang/CharSet;
    iget-object v1, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    iget-object v2, v0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCharRanges()[Lorg/apache/commons/lang/CharRange;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/lang/CharRange;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang/CharRange;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x59

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
