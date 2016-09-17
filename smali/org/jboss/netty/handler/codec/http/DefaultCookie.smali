.class public Lorg/jboss/netty/handler/codec/http/DefaultCookie;
.super Ljava/lang/Object;
.source "DefaultCookie.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/Cookie;


# static fields
.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private commentUrl:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:I

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private ports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private secure:Z

.field private unmodifiablePorts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/handler/codec/http/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 37
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "CommentURL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Max-Age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "Secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "HTTPOnly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 58
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 59
    const/4 v2, -0x1

    iput v2, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->maxAge:I

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "empty name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 78
    .local v0, "c":C
    const/16 v2, 0x7f

    if-le v0, v2, :cond_2

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name contains non-ascii character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :sswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name contains one of the following prohibited characters: =,; \\t\\r\\n\\v\\f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "c":C
    :cond_3
    sget-object v2, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->RESERVED_NAMES:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reserved name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_4
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->name:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->setValue(Ljava/lang/String;)V

    .line 99
    return-void

    .line 84
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
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 333
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v2

    .line 336
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 342
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 344
    :sswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " contains one of the following prohibited characters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\\r\\n\\f\\v ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "c":C
    :cond_2
    move-object v2, p1

    .line 349
    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lorg/jboss/netty/handler/codec/http/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->compareTo(Lorg/jboss/netty/handler/codec/http/Cookie;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/Cookie;)I
    .locals 5
    .param p1, "c"    # Lorg/jboss/netty/handler/codec/http/Cookie;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 276
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "v":I
    if-eqz v0, :cond_1

    move v1, v0

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 281
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 283
    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v1, v2

    .line 284
    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 287
    if-eqz v0, :cond_4

    move v1, v0

    .line 288
    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 293
    :cond_5
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    .line 294
    goto :goto_0

    .line 296
    :cond_6
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 297
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 244
    instance-of v2, p1, Lorg/jboss/netty/handler/codec/http/Cookie;

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 248
    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    .line 249
    .local v0, "that":Lorg/jboss/netty/handler/codec/http/Cookie;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 255
    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 264
    :cond_3
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->commentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDiscard()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->discard:Z

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->secure:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string/jumbo v0, "comment"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->comment:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCommentUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "commentUrl"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string/jumbo v0, "commentUrl"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->commentUrl:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->discard:Z

    .line 154
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v0, "domain"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->domain:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->httpOnly:Z

    .line 235
    return-void
.end method

.method public setMaxAge(I)V
    .locals 3
    .param p1, "maxAge"    # I

    .prologue
    .line 205
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxAge must be either -1, 0, or a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->maxAge:I

    .line 211
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->path:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPorts(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "ports":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 186
    .local v1, "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 187
    .local v2, "p":I
    if-lez v2, :cond_0

    const v3, 0xffff

    if-le v2, v3, :cond_1

    .line 188
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "port out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v2    # "p":I
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 198
    :goto_1
    return-void

    .line 195
    :cond_3
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 196
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    goto :goto_1
.end method

.method public varargs setPorts([I)V
    .locals 9
    .param p1, "ports"    # [I

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "ports"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 169
    .local v5, "portsCopy":[I
    array-length v6, v5

    if-nez v6, :cond_1

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 173
    .local v3, "newPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget v4, v0, v1

    .line 174
    .local v4, "p":I
    if-lez v4, :cond_2

    const v6, 0xffff

    if-le v4, v6, :cond_3

    .line 175
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "port out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v4    # "p":I
    :cond_4
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->ports:Ljava/util/Set;

    .line 180
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->unmodifiablePorts:Ljava/util/Set;

    goto :goto_0
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->secure:Z

    .line 227
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->value:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 218
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->version:I

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    const-string/jumbo v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    const-string/jumbo v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 315
    const-string/jumbo v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getMaxAge()I

    move-result v1

    if-ltz v1, :cond_3

    .line 319
    const-string/jumbo v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->getMaxAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :cond_3
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    const-string/jumbo v1, ", secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;->isHttpOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    const-string/jumbo v1, ", HTTPOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
