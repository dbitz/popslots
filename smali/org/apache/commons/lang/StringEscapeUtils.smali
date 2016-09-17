.class public Lorg/apache/commons/lang/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 721
    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {p0, v2}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    .end local p0    # "str":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    return-object p0

    .line 725
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 726
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeCsv(Ljava/io/Writer;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 728
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 730
    .restart local v0    # "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 731
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static escapeCsv(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 759
    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {p1, v2}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    if-eqz p1, :cond_0

    .line 761
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 766
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 767
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 768
    .local v0, "c":C
    if-ne v0, v3, :cond_2

    .line 769
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 771
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 773
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 451
    if-nez p0, :cond_0

    .line 462
    :goto_0
    return-object v2

    .line 455
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 456
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 458
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    if-nez p0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    if-nez p1, :cond_1

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "escapeSingleQuotes"    # Z

    .prologue
    const/4 v2, 0x0

    .line 154
    if-nez p0, :cond_0

    .line 164
    :goto_0
    return-object v2

    .line 158
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 159
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0, p1}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 161
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "escapeSingleQuote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 177
    if-nez p0, :cond_0

    .line 178
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The Writer must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_0
    if-nez p1, :cond_2

    .line 251
    :cond_1
    return-void

    .line 184
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 185
    .local v2, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "ch":C
    const/16 v3, 0xfff

    if-le v0, v3, :cond_3

    .line 190
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 185
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_3
    const/16 v3, 0xff

    if-le v0, v3, :cond_4

    .line 192
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\\u0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_4
    const/16 v3, 0x7f

    if-le v0, v3, :cond_5

    .line 194
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_5
    const/16 v3, 0x20

    if-ge v0, v3, :cond_7

    .line 196
    packed-switch v0, :pswitch_data_0

    .line 218
    :pswitch_0
    const/16 v3, 0xf

    if-le v0, v3, :cond_6

    .line 219
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 199
    const/16 v3, 0x62

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 202
    :pswitch_2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 203
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 206
    :pswitch_3
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 207
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 210
    :pswitch_4
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 211
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 214
    :pswitch_5
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 215
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 221
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "\\u000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :cond_7
    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 228
    :sswitch_0
    if-eqz p2, :cond_8

    .line 229
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 231
    :cond_8
    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 234
    :sswitch_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 235
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 238
    :sswitch_2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 239
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 242
    :sswitch_3
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 243
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
        0x2f -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static escapeSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 690
    if-nez p0, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\'"

    const-string/jumbo v1, "\'\'"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 614
    if-nez p0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    if-nez p1, :cond_1

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static hex(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 799
    if-nez p0, :cond_0

    .line 809
    :goto_0
    return-object v2

    .line 803
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 804
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeCsv(Ljava/io/Writer;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 806
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 808
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unescapeCsv(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 837
    if-nez p1, :cond_0

    .line 858
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 841
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_3

    .line 845
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "quoteless":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 854
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 857
    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 523
    if-nez p0, :cond_0

    .line 534
    :goto_0
    return-object v2

    .line 527
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 528
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 530
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    if-nez p0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    if-nez p1, :cond_1

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 274
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-object v2

    .line 278
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 279
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 281
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 12
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x5c

    .line 304
    if-nez p0, :cond_0

    .line 305
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The Writer must not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 307
    :cond_0
    if-nez p1, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 310
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 311
    .local v5, "sz":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 312
    .local v6, "unicode":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 313
    .local v1, "hadSlash":Z
    const/4 v3, 0x0

    .line 314
    .local v3, "inUnicode":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 315
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, "ch":C
    if-eqz v3, :cond_4

    .line 319
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 324
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 325
    .local v7, "value":I
    int-to-char v8, v7

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    .line 326
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v3, 0x0

    .line 328
    const/4 v1, 0x0

    .line 314
    .end local v7    # "value":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :catch_0
    move-exception v4

    .line 330
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Unable to parse unicode value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 335
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    if-eqz v1, :cond_5

    .line 337
    const/4 v1, 0x0

    .line 338
    sparse-switch v0, :sswitch_data_0

    .line 370
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 340
    :sswitch_0
    invoke-virtual {p0, v10}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 343
    :sswitch_1
    const/16 v8, 0x27

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 346
    :sswitch_2
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 349
    :sswitch_3
    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 352
    :sswitch_4
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 355
    :sswitch_5
    const/16 v8, 0x9

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 358
    :sswitch_6
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 361
    :sswitch_7
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 366
    :sswitch_8
    const/4 v3, 0x1

    .line 367
    goto :goto_2

    .line 374
    :cond_5
    if-ne v0, v10, :cond_6

    .line 375
    const/4 v1, 0x1

    .line 376
    goto :goto_2

    .line 378
    :cond_6
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 380
    .end local v0    # "ch":C
    :cond_7
    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {p0, v10}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_0

    .line 338
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
        0x62 -> :sswitch_7
        0x66 -> :sswitch_4
        0x6e -> :sswitch_6
        0x72 -> :sswitch_3
        0x74 -> :sswitch_5
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public static unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 664
    if-nez p0, :cond_0

    .line 665
    const/4 v0, 0x0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    if-nez p0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    if-nez p1, :cond_1

    .line 646
    :goto_0
    return-void

    .line 645
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method
