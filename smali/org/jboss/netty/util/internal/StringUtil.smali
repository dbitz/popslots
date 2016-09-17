.class public Lorg/jboss/netty/util/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 39
    .local v1, "newLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v3, "%n"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    sput-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 45
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "\n"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripControlCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 78
    const/4 p0, 0x0

    .line 119
    .end local p0    # "value":Ljava/lang/String;
    .local v1, "hasControlChars":Z
    .local v2, "i":I
    :cond_0
    :goto_0
    return-object p0

    .line 81
    .end local v1    # "hasControlChars":Z
    .end local v2    # "i":I
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 82
    .restart local v1    # "hasControlChars":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    const/4 v1, 0x1

    .line 89
    :cond_2
    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 97
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-nez v4, :cond_5

    .line 105
    :cond_3
    const/4 v3, 0x0

    .line 106
    .local v3, "suppressingControlChars":Z
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 108
    const/4 v3, 0x1

    .line 106
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "suppressingControlChars":Z
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 97
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    .restart local v3    # "suppressingControlChars":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 112
    const/4 v3, 0x0

    .line 113
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 119
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
