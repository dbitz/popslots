.class public Lorg/apache/commons/lang/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# static fields
.field private static final cAvailableLocaleList:Ljava/util/List;

.field private static cAvailableLocaleSet:Ljava/util/Set;

.field private static final cCountriesByLanguage:Ljava/util/Map;

.field private static final cLanguagesByCountry:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/LocaleUtils;->cLanguagesByCountry:Ljava/util/Map;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/LocaleUtils;->cCountriesByLanguage:Ljava/util/Map;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "list":Ljava/util/List;
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/LocaleUtils;->cAvailableLocaleList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static availableLocaleList()Ljava/util/List;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lorg/apache/commons/lang/LocaleUtils;->cAvailableLocaleList:Ljava/util/List;

    return-object v0
.end method

.method public static availableLocaleSet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lorg/apache/commons/lang/LocaleUtils;->cAvailableLocaleSet:Ljava/util/Set;

    .line 210
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/Set;
    invoke-static {}, Lorg/apache/commons/lang/LocaleUtils;->availableLocaleList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 212
    .restart local v0    # "set":Ljava/util/Set;
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 213
    sput-object v0, Lorg/apache/commons/lang/LocaleUtils;->cAvailableLocaleSet:Ljava/util/Set;

    .line 215
    :cond_0
    return-object v0
.end method

.method public static countriesByLanguage(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v4, Lorg/apache/commons/lang/LocaleUtils;->cCountriesByLanguage:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 273
    .local v0, "countries":Ljava/util/List;
    if-nez v0, :cond_2

    .line 274
    if-eqz p0, :cond_3

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "countries":Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .restart local v0    # "countries":Ljava/util/List;
    invoke-static {}, Lorg/apache/commons/lang/LocaleUtils;->availableLocaleList()Ljava/util/List;

    move-result-object v3

    .line 277
    .local v3, "locales":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 278
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 279
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 282
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 289
    .end local v1    # "i":I
    .end local v3    # "locales":Ljava/util/List;
    :goto_1
    sget-object v4, Lorg/apache/commons/lang/LocaleUtils;->cCountriesByLanguage:Ljava/util/Map;

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_2
    return-object v0

    .line 287
    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1
.end method

.method public static isAvailableLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 226
    invoke-static {}, Lorg/apache/commons/lang/LocaleUtils;->availableLocaleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static languagesByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 240
    sget-object v4, Lorg/apache/commons/lang/LocaleUtils;->cLanguagesByCountry:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 241
    .local v1, "langs":Ljava/util/List;
    if-nez v1, :cond_2

    .line 242
    if-eqz p0, :cond_3

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "langs":Ljava/util/List;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v1    # "langs":Ljava/util/List;
    invoke-static {}, Lorg/apache/commons/lang/LocaleUtils;->availableLocaleList()Ljava/util/List;

    move-result-object v3

    .line 245
    .local v3, "locales":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 246
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 247
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 249
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 256
    .end local v0    # "i":I
    .end local v3    # "locales":Ljava/util/List;
    :goto_1
    sget-object v4, Lorg/apache/commons/lang/LocaleUtils;->cLanguagesByCountry:Ljava/util/Map;

    invoke-interface {v4, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    return-object v1

    .line 254
    :cond_3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1
.end method

.method public static localeLookupList(Ljava/util/Locale;)Ljava/util/List;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 146
    invoke-static {p0, p0}, Lorg/apache/commons/lang/LocaleUtils;->localeLookupList(Ljava/util/Locale;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static localeLookupList(Ljava/util/Locale;Ljava/util/Locale;)Ljava/util/List;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "defaultLocale"    # Ljava/util/Locale;

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v0, "list":Ljava/util/List;
    if-eqz p0, :cond_2

    .line 170
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 175
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x5f

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v5, 0x0

    .line 127
    :goto_0
    return-object v5

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 99
    .local v4, "len":I
    if-eq v4, v6, :cond_1

    if-eq v4, v7, :cond_1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 100
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Invalid locale format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 102
    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, "ch0":C
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 104
    .local v1, "ch1":C
    const/16 v5, 0x61

    if-lt v0, v5, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    const/16 v5, 0x61

    if-lt v1, v5, :cond_2

    const/16 v5, 0x7a

    if-le v1, v5, :cond_3

    .line 105
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Invalid locale format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_3
    if-ne v4, v6, :cond_4

    .line 108
    new-instance v5, Ljava/util/Locale;

    const-string/jumbo v6, ""

    invoke-direct {v5, p0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_5

    .line 111
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Invalid locale format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_5
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 114
    .local v2, "ch3":C
    if-ne v2, v10, :cond_6

    .line 115
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_6
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 118
    .local v3, "ch4":C
    const/16 v5, 0x41

    if-lt v2, v5, :cond_7

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_7

    const/16 v5, 0x41

    if-lt v3, v5, :cond_7

    const/16 v5, 0x5a

    if-le v3, v5, :cond_8

    .line 119
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Invalid locale format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_8
    if-ne v4, v7, :cond_9

    .line 122
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_a

    .line 125
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Invalid locale format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_a
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
