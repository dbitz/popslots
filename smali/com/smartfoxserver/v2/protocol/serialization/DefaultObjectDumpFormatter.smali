.class public Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;
.super Ljava/lang/Object;
.source "DefaultObjectDumpFormatter.java"


# static fields
.field public static final TOKEN_DIVIDER:C = ';'

.field public static final TOKEN_INDENT_CLOSE:C = '}'

.field public static final TOKEN_INDENT_OPEN:C = '{'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFormatTabs(I)Ljava/lang/String;
    .locals 1
    .param p0, "howMany"    # I

    .prologue
    .line 67
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->strFill(CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintByteArray([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string/jumbo v0, "Null"

    .line 17
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Byte[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static prettyPrintDump(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "rawDump"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 25
    .local v3, "indentPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 55
    if-eqz v3, :cond_5

    .line 56
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Argh! The indentPos is not == 0. TOKENS ARE NOT BALANCED!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 27
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 29
    .local v1, "ch":C
    const/16 v4, 0x7b

    if-ne v1, v4, :cond_1

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->getFormatTabs(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_3

    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    if-gez v3, :cond_2

    .line 39
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Argh! The indentPos is negative. TOKENS ARE NOT BALANCED!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_2
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->getFormatTabs(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 44
    :cond_3
    const/16 v4, 0x3b

    if-ne v1, v4, :cond_4

    .line 46
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultObjectDumpFormatter;->getFormatTabs(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    .end local v1    # "ch":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static strFill(CI)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C
    .param p1, "howMany"    # I

    .prologue
    .line 75
    new-array v0, p1, [C

    .line 76
    .local v0, "chars":[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 78
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
