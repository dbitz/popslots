.class public Lorg/jboss/netty/util/internal/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# static fields
.field private static final INTEGERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "15"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/util/internal/ConversionUtil;->INTEGERS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 49
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 69
    .local v0, "s":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 51
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 52
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 54
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 56
    goto :goto_0

    .line 60
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x59 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 37
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 40
    .restart local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 102
    if-ltz p0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/ConversionUtil;->INTEGERS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 103
    sget-object v0, Lorg/jboss/netty/util/internal/ConversionUtil;->INTEGERS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 77
    instance-of v3, p0, [Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 78
    check-cast p0, [Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/String;

    .line 93
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_3

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 85
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v2    # "v":Ljava/lang/Object;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object p0, v3

    goto :goto_0

    .line 93
    .end local v0    # "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[, \\t\\n\\r\\f\\e\\a]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
