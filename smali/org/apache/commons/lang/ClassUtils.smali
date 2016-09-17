.class public Lorg/apache/commons/lang/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# static fields
.field public static final INNER_CLASS_SEPARATOR:Ljava/lang/String;

.field public static final INNER_CLASS_SEPARATOR_CHAR:C = '$'

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String;

.field public static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field private static abbreviationMap:Ljava/util/Map;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

.field private static primitiveWrapperMap:Ljava/util/Map;

.field private static reverseAbbreviationMap:Ljava/util/Map;

.field private static wrapperPrimitiveMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 52
    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->PACKAGE_SEPARATOR:Ljava/lang/String;

    .line 62
    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->INNER_CLASS_SEPARATOR:Ljava/lang/String;

    .line 67
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    .line 69
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string/jumbo v3, "java.lang.Boolean"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string/jumbo v3, "java.lang.Byte"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_1
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string/jumbo v3, "java.lang.Character"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Character:Ljava/lang/Class;

    :goto_2
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string/jumbo v3, "java.lang.Short"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Short:Ljava/lang/Class;

    :goto_3
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v3, :cond_5

    const-string/jumbo v3, "java.lang.Integer"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_4
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v3, :cond_6

    const-string/jumbo v3, "java.lang.Long"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Long:Ljava/lang/Class;

    :goto_5
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v3, :cond_7

    const-string/jumbo v3, "java.lang.Double"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Double:Ljava/lang/Class;

    :goto_6
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v4, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v3, :cond_8

    const-string/jumbo v3, "java.lang.Float"

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Float:Ljava/lang/Class;

    :goto_7
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    .line 85
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 87
    .local v1, "primitiveClass":Ljava/lang/Class;
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 88
    .local v2, "wrapperClass":Ljava/lang/Class;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 69
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "primitiveClass":Ljava/lang/Class;
    .end local v2    # "wrapperClass":Ljava/lang/Class;
    :cond_1
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    .line 70
    :cond_2
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_1

    .line 71
    :cond_3
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_2

    .line 72
    :cond_4
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_3

    .line 73
    :cond_5
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_4

    .line 74
    :cond_6
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_5

    .line 75
    :cond_7
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_6

    .line 76
    :cond_8
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_7

    .line 97
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/apache/commons/lang/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    .line 119
    const-string/jumbo v3, "int"

    const-string/jumbo v4, "I"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v3, "boolean"

    const-string/jumbo v4, "Z"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "float"

    const-string/jumbo v4, "F"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v3, "long"

    const-string/jumbo v4, "J"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v3, "short"

    const-string/jumbo v4, "S"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v3, "byte"

    const-string/jumbo v4, "B"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v3, "double"

    const-string/jumbo v4, "D"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v3, "char"

    const-string/jumbo v4, "C"

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "primitive"    # Ljava/lang/String;
    .param p1, "abbreviation"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertClassNamesToClasses(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "classNames"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x0

    .line 319
    if-nez p0, :cond_1

    move-object v1, v4

    .line 331
    :cond_0
    return-object v1

    .line 322
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v1, "classes":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static convertClassesToClassNames(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "classes"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 347
    if-nez p0, :cond_1

    move-object v0, v3

    .line 359
    :cond_0
    return-object v0

    .line 350
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    .local v0, "classNames":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 353
    .local v1, "cls":Ljava/lang/Class;
    if-nez v1, :cond_2

    .line 354
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 281
    if-nez p0, :cond_1

    .line 282
    const/4 v4, 0x0

    .line 301
    :cond_0
    return-object v4

    .line 284
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v4, "list":Ljava/util/List;
    :goto_0
    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 287
    .local v1, "interfaces":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_5

    .line 288
    aget-object v6, v1, v0

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 289
    aget-object v6, v1, v0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    aget-object v6, v1, v0

    invoke-static {v6}, Lorg/apache/commons/lang/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 292
    .local v5, "superInterfaces":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 293
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 294
    .local v2, "intface":Ljava/lang/Class;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 295
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 287
    .end local v2    # "intface":Ljava/lang/Class;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "superInterfaces":Ljava/util/List;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 255
    if-nez p0, :cond_1

    .line 256
    const/4 v0, 0x0

    .line 264
    :cond_0
    return-object v0

    .line 258
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "classes":Ljava/util/List;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 260
    .local v1, "superclass":Ljava/lang/Class;
    :goto_0
    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 892
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 893
    if-nez p0, :cond_1

    .line 894
    const/4 p0, 0x0

    .line 920
    .end local p0    # "className":Ljava/lang/String;
    .local v1, "dim":I
    :cond_0
    :goto_0
    return-object p0

    .line 896
    .end local v1    # "dim":I
    .restart local p0    # "className":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 897
    .restart local v1    # "dim":I
    :goto_1
    const-string/jumbo v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 898
    add-int/lit8 v1, v1, 0x1

    .line 899
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 901
    :cond_2
    if-lt v1, v5, :cond_0

    .line 904
    const-string/jumbo v3, "L"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 905
    const-string/jumbo v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 916
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "canonicalClassNameBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_6

    .line 918
    const-string/jumbo v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 905
    .end local v0    # "canonicalClassNameBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_2

    .line 911
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 912
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "className":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .restart local p0    # "className":Ljava/lang/String;
    goto :goto_3

    .line 920
    .restart local v0    # "canonicalClassNameBuffer":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 625
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "clsName":Ljava/lang/String;
    invoke-static {v1, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 631
    .end local v1    # "clsName":Ljava/lang/String;
    .local v0, "clazz":Ljava/lang/Class;
    :goto_0
    return-object v0

    .line 629
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/ClassUtils;->toCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;
    goto :goto_0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 660
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ClassUtils;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 676
    .local v0, "contextCL":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string/jumbo v2, "org.apache.commons.lang.ClassUtils"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 677
    .local v1, "loader":Ljava/lang/ClassLoader;
    :goto_1
    invoke-static {v1, p0, p1}, Lorg/apache/commons/lang/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 676
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method public static getPackageCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 855
    if-nez p0, :cond_0

    .line 856
    const-string/jumbo v0, ""

    .line 858
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 841
    if-nez p0, :cond_0

    .line 844
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    const-string/jumbo v0, ""

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 209
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 235
    if-nez p0, :cond_0

    .line 236
    const-string/jumbo v1, ""

    .line 242
    :goto_0
    return-object v1

    .line 238
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 239
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 240
    const-string/jumbo v1, ""

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 707
    .local v3, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 727
    .end local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 711
    .restart local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v1, "candidateClasses":Ljava/util/List;
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 713
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 716
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 717
    .local v0, "candidateClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 722
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 726
    .local v2, "candidateMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 727
    goto :goto_0

    .line 723
    .end local v2    # "candidateMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 724
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 731
    .end local v0    # "candidateClass":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v6, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Can\'t find a public method for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {p2}, Lorg/apache/commons/lang/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getShortCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 811
    if-nez p0, :cond_0

    .line 812
    const-string/jumbo v0, ""

    .line 814
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getShortCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 797
    if-nez p0, :cond_0

    .line 800
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 827
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string/jumbo v0, ""

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 154
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getShortClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2e

    const/16 v5, 0x24

    const/4 v4, -0x1

    .line 179
    if-nez p0, :cond_1

    .line 180
    const-string/jumbo v2, ""

    .line 193
    :cond_0
    :goto_0
    return-object v2

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 183
    const-string/jumbo v2, ""

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 187
    .local v1, "lastDotIdx":I
    if-ne v1, v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 189
    .local v0, "innerIdx":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "out":Ljava/lang/String;
    if-eq v0, v4, :cond_0

    .line 191
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 187
    .end local v0    # "innerIdx":I
    .end local v2    # "out":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v1, 0x1

    goto :goto_1
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "toClass"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v1

    .line 444
    :cond_1
    if-nez p0, :cond_3

    .line 445
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    .line 448
    goto :goto_0

    .line 450
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 451
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 455
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v1, v0

    goto :goto_0

    .line 459
    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 460
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v1, v0

    goto :goto_0

    .line 463
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 470
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 472
    :cond_9
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 473
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    move v1, v0

    goto/16 :goto_0

    .line 478
    :cond_b
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 479
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_c
    move v1, v0

    goto/16 :goto_0

    .line 484
    :cond_d
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_e
    move v1, v0

    goto/16 :goto_0

    .line 494
    :cond_f
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public static isAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .param p0, "classArray"    # [Ljava/lang/Class;
    .param p1, "toClassArray"    # [Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    if-nez p0, :cond_2

    .line 400
    sget-object p0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 402
    :cond_2
    if-nez p1, :cond_3

    .line 403
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 405
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 406
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInnerClass(Ljava/lang/Class;)Z
    .locals 3
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    .line 603
    if-nez p0, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 510
    move-object v0, p0

    .line 511
    .local v0, "convertedClass":Ljava/lang/Class;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    sget-object v1, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "convertedClass":Ljava/lang/Class;
    check-cast v0, Ljava/lang/Class;

    .line 514
    .restart local v0    # "convertedClass":Ljava/lang/Class;
    :cond_0
    return-object v0
.end method

.method public static primitivesToWrappers([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .param p0, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 528
    if-nez p0, :cond_1

    .line 529
    const/4 p0, 0x0

    .line 540
    .end local p0    # "classes":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object p0

    .line 532
    .restart local p0    # "classes":[Ljava/lang/Class;
    :cond_1
    array-length v2, p0

    if-eqz v2, :cond_0

    .line 536
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 537
    .local v0, "convertedClasses":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 538
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 540
    goto :goto_0
.end method

.method private static toCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 744
    if-nez p0, :cond_0

    .line 745
    new-instance v2, Lorg/apache/commons/lang/NullArgumentException;

    const-string/jumbo v3, "className"

    invoke-direct {v2, v3}, Lorg/apache/commons/lang/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 746
    :cond_0
    const-string/jumbo v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 747
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 748
    .local v1, "classNameBuffer":Ljava/lang/StringBuffer;
    :goto_0
    const-string/jumbo v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 749
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 750
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 752
    :cond_1
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    .local v0, "abbreviation":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 754
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 760
    .end local v0    # "abbreviation":Ljava/lang/String;
    .end local v1    # "classNameBuffer":Ljava/lang/StringBuffer;
    :cond_2
    return-object p0

    .line 756
    .restart local v0    # "abbreviation":Ljava/lang/String;
    .restart local v1    # "classNameBuffer":Ljava/lang/StringBuffer;
    :cond_3
    const-string/jumbo v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static toClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 774
    if-nez p0, :cond_1

    .line 775
    const/4 v0, 0x0

    .line 783
    :cond_0
    :goto_0
    return-object v0

    .line 776
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 777
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    goto :goto_0

    .line 779
    :cond_2
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 780
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 781
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 560
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static wrappersToPrimitives([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .param p0, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 578
    if-nez p0, :cond_1

    .line 579
    const/4 p0, 0x0

    .line 590
    .end local p0    # "classes":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object p0

    .line 582
    .restart local p0    # "classes":[Ljava/lang/Class;
    :cond_1
    array-length v2, p0

    if-eqz v2, :cond_0

    .line 586
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 587
    .local v0, "convertedClasses":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 588
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 590
    goto :goto_0
.end method
