.class public Lcom/helpshift/support/util/HSTransliterator;
.super Ljava/lang/Object;
.source "HSTransliterator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static initDone:Z

.field static trans1:Lcom/helpshift/support/util/HSCharacters1;

.field static trans10:Lcom/helpshift/support/util/HSCharacters10;

.field static trans11:Lcom/helpshift/support/util/HSCharacters11;

.field static trans12:Lcom/helpshift/support/util/HSCharacters12;

.field static trans13:Lcom/helpshift/support/util/HSCharacters13;

.field static trans14:Lcom/helpshift/support/util/HSCharacters14;

.field static trans15:Lcom/helpshift/support/util/HSCharacters15;

.field static trans16:Lcom/helpshift/support/util/HSCharacters16;

.field static trans2:Lcom/helpshift/support/util/HSCharacters2;

.field static trans3:Lcom/helpshift/support/util/HSCharacters3;

.field static trans4:Lcom/helpshift/support/util/HSCharacters4;

.field static trans5:Lcom/helpshift/support/util/HSCharacters5;

.field static trans6:Lcom/helpshift/support/util/HSCharacters6;

.field static trans7:Lcom/helpshift/support/util/HSCharacters7;

.field static trans8:Lcom/helpshift/support/util/HSCharacters8;

.field static trans9:Lcom/helpshift/support/util/HSCharacters9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/support/util/HSTransliterator;->initDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans1:Lcom/helpshift/support/util/HSCharacters1;

    .line 52
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans2:Lcom/helpshift/support/util/HSCharacters2;

    .line 53
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans3:Lcom/helpshift/support/util/HSCharacters3;

    .line 54
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans4:Lcom/helpshift/support/util/HSCharacters4;

    .line 55
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans5:Lcom/helpshift/support/util/HSCharacters5;

    .line 56
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans6:Lcom/helpshift/support/util/HSCharacters6;

    .line 57
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans7:Lcom/helpshift/support/util/HSCharacters7;

    .line 58
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans8:Lcom/helpshift/support/util/HSCharacters8;

    .line 59
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans9:Lcom/helpshift/support/util/HSCharacters9;

    .line 60
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans10:Lcom/helpshift/support/util/HSCharacters10;

    .line 61
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans11:Lcom/helpshift/support/util/HSCharacters11;

    .line 62
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans12:Lcom/helpshift/support/util/HSCharacters12;

    .line 63
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans13:Lcom/helpshift/support/util/HSCharacters13;

    .line 64
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans14:Lcom/helpshift/support/util/HSCharacters14;

    .line 65
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans15:Lcom/helpshift/support/util/HSCharacters15;

    .line 66
    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans16:Lcom/helpshift/support/util/HSCharacters16;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/support/util/HSTransliterator;->initDone:Z

    .line 68
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/helpshift/support/util/HSTransliterator;->initDone:Z

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/helpshift/support/util/HSCharacters1;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters1;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans1:Lcom/helpshift/support/util/HSCharacters1;

    .line 31
    new-instance v0, Lcom/helpshift/support/util/HSCharacters2;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters2;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans2:Lcom/helpshift/support/util/HSCharacters2;

    .line 32
    new-instance v0, Lcom/helpshift/support/util/HSCharacters3;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters3;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans3:Lcom/helpshift/support/util/HSCharacters3;

    .line 33
    new-instance v0, Lcom/helpshift/support/util/HSCharacters4;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters4;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans4:Lcom/helpshift/support/util/HSCharacters4;

    .line 34
    new-instance v0, Lcom/helpshift/support/util/HSCharacters5;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters5;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans5:Lcom/helpshift/support/util/HSCharacters5;

    .line 35
    new-instance v0, Lcom/helpshift/support/util/HSCharacters6;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters6;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans6:Lcom/helpshift/support/util/HSCharacters6;

    .line 36
    new-instance v0, Lcom/helpshift/support/util/HSCharacters7;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters7;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans7:Lcom/helpshift/support/util/HSCharacters7;

    .line 37
    new-instance v0, Lcom/helpshift/support/util/HSCharacters8;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters8;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans8:Lcom/helpshift/support/util/HSCharacters8;

    .line 38
    new-instance v0, Lcom/helpshift/support/util/HSCharacters9;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters9;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans9:Lcom/helpshift/support/util/HSCharacters9;

    .line 39
    new-instance v0, Lcom/helpshift/support/util/HSCharacters10;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters10;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans10:Lcom/helpshift/support/util/HSCharacters10;

    .line 40
    new-instance v0, Lcom/helpshift/support/util/HSCharacters11;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters11;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans11:Lcom/helpshift/support/util/HSCharacters11;

    .line 41
    new-instance v0, Lcom/helpshift/support/util/HSCharacters12;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters12;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans12:Lcom/helpshift/support/util/HSCharacters12;

    .line 42
    new-instance v0, Lcom/helpshift/support/util/HSCharacters13;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters13;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans13:Lcom/helpshift/support/util/HSCharacters13;

    .line 43
    new-instance v0, Lcom/helpshift/support/util/HSCharacters14;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters14;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans14:Lcom/helpshift/support/util/HSCharacters14;

    .line 44
    new-instance v0, Lcom/helpshift/support/util/HSCharacters15;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters15;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans15:Lcom/helpshift/support/util/HSCharacters15;

    .line 45
    new-instance v0, Lcom/helpshift/support/util/HSCharacters16;

    invoke-direct {v0}, Lcom/helpshift/support/util/HSCharacters16;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSTransliterator;->trans16:Lcom/helpshift/support/util/HSCharacters16;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/support/util/HSTransliterator;->initDone:Z

    .line 48
    :cond_0
    return-void
.end method

.method public static isLoaded()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/helpshift/support/util/HSTransliterator;->initDone:Z

    return v0
.end method

.method public static unidecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x62

    const/16 v12, 0x55

    const/16 v11, 0x33

    const/16 v10, 0x25

    const/16 v9, 0x11

    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 72
    :cond_0
    const-string/jumbo p0, ""

    .line 131
    .end local p0    # "input":Ljava/lang/String;
    .local v2, "i":I
    :cond_1
    :goto_0
    return-object p0

    .line 74
    .end local v2    # "i":I
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 75
    .restart local v2    # "i":I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "c":C
    const/16 v6, 0x80

    if-le v0, v6, :cond_4

    .line 84
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 85
    .local v3, "inputArray":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v5, "output":Ljava/lang/StringBuilder;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_16

    aget-char v0, v3, v6

    .line 88
    .restart local v0    # "c":C
    const/16 v8, 0x80

    if-ge v0, v8, :cond_5

    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 80
    .end local v3    # "inputArray":[C
    .end local v5    # "output":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .restart local v3    # "inputArray":[C
    .restart local v5    # "output":Ljava/lang/StringBuilder;
    :cond_5
    shr-int/lit8 v1, v0, 0x8

    .line 92
    .local v1, "high":I
    and-int/lit16 v4, v0, 0xff

    .line 94
    .local v4, "low":I
    if-lez v1, :cond_6

    if-ge v1, v9, :cond_6

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans1:Lcom/helpshift/support/util/HSCharacters1;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters1;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 95
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans1:Lcom/helpshift/support/util/HSCharacters1;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters1;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 96
    :cond_6
    if-lt v1, v9, :cond_7

    if-ge v1, v10, :cond_7

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans2:Lcom/helpshift/support/util/HSCharacters2;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters2;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 97
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans2:Lcom/helpshift/support/util/HSCharacters2;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters2;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 98
    :cond_7
    if-lt v1, v10, :cond_8

    if-ge v1, v11, :cond_8

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans3:Lcom/helpshift/support/util/HSCharacters3;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters3;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 99
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans3:Lcom/helpshift/support/util/HSCharacters3;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters3;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 100
    :cond_8
    if-lt v1, v11, :cond_9

    if-ge v1, v12, :cond_9

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans4:Lcom/helpshift/support/util/HSCharacters4;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters4;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 101
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans4:Lcom/helpshift/support/util/HSCharacters4;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters4;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 102
    :cond_9
    if-lt v1, v12, :cond_a

    if-ge v1, v13, :cond_a

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans5:Lcom/helpshift/support/util/HSCharacters5;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters5;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 103
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans5:Lcom/helpshift/support/util/HSCharacters5;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters5;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 104
    :cond_a
    if-lt v1, v13, :cond_b

    const/16 v8, 0x6f

    if-ge v1, v8, :cond_b

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans6:Lcom/helpshift/support/util/HSCharacters6;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters6;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 105
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans6:Lcom/helpshift/support/util/HSCharacters6;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters6;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 106
    :cond_b
    const/16 v8, 0x6f

    if-lt v1, v8, :cond_c

    const/16 v8, 0x79

    if-ge v1, v8, :cond_c

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans7:Lcom/helpshift/support/util/HSCharacters7;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters7;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 107
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans7:Lcom/helpshift/support/util/HSCharacters7;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters7;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 108
    :cond_c
    const/16 v8, 0x79

    if-lt v1, v8, :cond_d

    const/16 v8, 0x83

    if-ge v1, v8, :cond_d

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans8:Lcom/helpshift/support/util/HSCharacters8;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters8;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 109
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans8:Lcom/helpshift/support/util/HSCharacters8;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters8;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 110
    :cond_d
    const/16 v8, 0x83

    if-lt v1, v8, :cond_e

    const/16 v8, 0x8d

    if-ge v1, v8, :cond_e

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans9:Lcom/helpshift/support/util/HSCharacters9;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters9;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 111
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans9:Lcom/helpshift/support/util/HSCharacters9;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters9;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 112
    :cond_e
    const/16 v8, 0x8d

    if-lt v1, v8, :cond_f

    const/16 v8, 0x97

    if-ge v1, v8, :cond_f

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans10:Lcom/helpshift/support/util/HSCharacters10;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters10;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 113
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans10:Lcom/helpshift/support/util/HSCharacters10;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters10;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 114
    :cond_f
    const/16 v8, 0x97

    if-lt v1, v8, :cond_10

    const/16 v8, 0xa3

    if-ge v1, v8, :cond_10

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans11:Lcom/helpshift/support/util/HSCharacters11;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters11;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 115
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans11:Lcom/helpshift/support/util/HSCharacters11;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters11;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 116
    :cond_10
    const/16 v8, 0xa3

    if-lt v1, v8, :cond_11

    const/16 v8, 0xb6

    if-ge v1, v8, :cond_11

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans12:Lcom/helpshift/support/util/HSCharacters12;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters12;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 117
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans12:Lcom/helpshift/support/util/HSCharacters12;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters12;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 118
    :cond_11
    const/16 v8, 0xb6

    if-lt v1, v8, :cond_12

    const/16 v8, 0xc0

    if-ge v1, v8, :cond_12

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans13:Lcom/helpshift/support/util/HSCharacters13;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters13;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 119
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans13:Lcom/helpshift/support/util/HSCharacters13;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters13;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 120
    :cond_12
    const/16 v8, 0xc0

    if-lt v1, v8, :cond_13

    const/16 v8, 0xcb

    if-ge v1, v8, :cond_13

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans14:Lcom/helpshift/support/util/HSCharacters14;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters14;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 121
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans14:Lcom/helpshift/support/util/HSCharacters14;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters14;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 122
    :cond_13
    const/16 v8, 0xcb

    if-lt v1, v8, :cond_14

    const/16 v8, 0xd7

    if-ge v1, v8, :cond_14

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans15:Lcom/helpshift/support/util/HSCharacters15;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters15;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 123
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans15:Lcom/helpshift/support/util/HSCharacters15;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters15;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 124
    :cond_14
    const/16 v8, 0xd7

    if-lt v1, v8, :cond_15

    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans15:Lcom/helpshift/support/util/HSCharacters15;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters15;->containsKey(II)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 125
    sget-object v8, Lcom/helpshift/support/util/HSTransliterator;->trans15:Lcom/helpshift/support/util/HSCharacters15;

    invoke-virtual {v8, v1, v4}, Lcom/helpshift/support/util/HSCharacters15;->get(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 127
    :cond_15
    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 131
    .end local v0    # "c":C
    .end local v1    # "high":I
    .end local v4    # "low":I
    :cond_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
