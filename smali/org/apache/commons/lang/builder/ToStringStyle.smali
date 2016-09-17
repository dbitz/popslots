.class public abstract Lorg/apache/commons/lang/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field private static registry:Ljava/lang/ThreadLocal;


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 95
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 106
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 118
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 128
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 136
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$1;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->registry:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    .line 210
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    .line 215
    iput-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 220
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 225
    const-string/jumbo v0, "["

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "]"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 235
    const-string/jumbo v0, "="

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 240
    iput-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 245
    iput-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 250
    const-string/jumbo v0, ","

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 255
    const-string/jumbo v0, "{"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, ","

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 265
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    .line 270
    const-string/jumbo v0, "}"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 276
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    .line 281
    const-string/jumbo v0, "<null>"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 286
    const-string/jumbo v0, "<size="

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 291
    const-string/jumbo v0, ">"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 296
    const-string/jumbo v0, "<"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 301
    const-string/jumbo v0, ">"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 310
    return-void
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->registry:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 715
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 717
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 743
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 745
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 771
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 773
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 799
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 801
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 659
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 661
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 631
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 633
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 422
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 424
    if-nez p3, :cond_0

    .line 425
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 431
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 432
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 687
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 689
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 827
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 829
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1134
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1136
    if-nez p3, :cond_0

    .line 1137
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1146
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1147
    return-void

    .line 1139
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1143
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1195
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1197
    if-nez p3, :cond_0

    .line 1198
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1207
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1208
    return-void

    .line 1200
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 1204
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1256
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1258
    if-nez p3, :cond_0

    .line 1259
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1268
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1269
    return-void

    .line 1261
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 1265
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1317
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1319
    if-nez p3, :cond_0

    .line 1320
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1329
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1330
    return-void

    .line 1322
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 1326
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1012
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1014
    if-nez p3, :cond_0

    .line 1015
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1024
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1025
    return-void

    .line 1017
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1021
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 951
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 953
    if-nez p3, :cond_0

    .line 954
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 963
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 964
    return-void

    .line 956
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 855
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 857
    if-nez p3, :cond_0

    .line 858
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 867
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 868
    return-void

    .line 860
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1073
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1075
    if-nez p3, :cond_0

    .line 1076
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1085
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1086
    return-void

    .line 1078
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0

    .line 1082
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1378
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1380
    if-nez p3, :cond_0

    .line 1381
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1390
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1391
    return-void

    .line 1383
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1387
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1435
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1436
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1437
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_1

    .line 1438
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1474
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1475
    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1465
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 565
    invoke-static {p1, p3}, Lorg/apache/commons/lang/ObjectUtils;->appendIdentityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 566
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 729
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 730
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 757
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 758
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 785
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 786
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 813
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 814
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 673
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 674
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 645
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 646
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 578
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 579
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "coll"    # Ljava/util/Collection;

    .prologue
    .line 590
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 591
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "map"    # Ljava/util/Map;

    .prologue
    .line 602
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 603
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 701
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 702
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 841
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 842
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .prologue
    .line 1159
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1161
    if-lez v0, :cond_0

    .line 1162
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1164
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1167
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .prologue
    .line 1220
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1222
    if-lez v0, :cond_0

    .line 1223
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1225
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1228
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .prologue
    .line 1281
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1283
    if-lez v0, :cond_0

    .line 1284
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1286
    :cond_0
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1288
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .prologue
    .line 1342
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1344
    if-lez v0, :cond_0

    .line 1345
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1347
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 1343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .prologue
    .line 1037
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1039
    if-lez v0, :cond_0

    .line 1040
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .prologue
    .line 976
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 978
    if-lez v0, :cond_0

    .line 979
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    :cond_0
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 984
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .prologue
    .line 882
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 884
    aget-object v1, p3, v0

    .line 885
    .local v1, "item":Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 886
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    :cond_0
    if-nez v1, :cond_1

    .line 889
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 883
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 895
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .prologue
    .line 1098
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1099
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1100
    if-lez v0, :cond_0

    .line 1101
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1106
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .prologue
    .line 1403
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1405
    if-lez v0, :cond_0

    .line 1406
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1408
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1410
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1411
    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 382
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1518
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 1519
    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1495
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1505
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1506
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1507
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1509
    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1452
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1453
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1454
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1455
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1457
    :cond_0
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "detail"    # Z

    .prologue
    .line 454
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Character;

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 463
    :try_start_0
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 464
    if-eqz p4, :cond_1

    .line 465
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :goto_1
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_1
    :try_start_1
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 548
    :catchall_0
    move-exception v1

    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    throw v1

    .line 470
    :cond_2
    :try_start_2
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 471
    if-eqz p4, :cond_3

    .line 472
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 474
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_1

    .line 477
    :cond_4
    instance-of v1, p3, [J

    if-eqz v1, :cond_6

    .line 478
    if-eqz p4, :cond_5

    .line 479
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_1

    .line 481
    :cond_5
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_1

    .line 484
    :cond_6
    instance-of v1, p3, [I

    if-eqz v1, :cond_8

    .line 485
    if-eqz p4, :cond_7

    .line 486
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_1

    .line 488
    :cond_7
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_1

    .line 491
    :cond_8
    instance-of v1, p3, [S

    if-eqz v1, :cond_a

    .line 492
    if-eqz p4, :cond_9

    .line 493
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_1

    .line 495
    :cond_9
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_1

    .line 498
    :cond_a
    instance-of v1, p3, [B

    if-eqz v1, :cond_c

    .line 499
    if-eqz p4, :cond_b

    .line 500
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_1

    .line 502
    :cond_b
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 505
    :cond_c
    instance-of v1, p3, [C

    if-eqz v1, :cond_e

    .line 506
    if-eqz p4, :cond_d

    .line 507
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_1

    .line 509
    :cond_d
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_1

    .line 512
    :cond_e
    instance-of v1, p3, [D

    if-eqz v1, :cond_10

    .line 513
    if-eqz p4, :cond_f

    .line 514
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 516
    :cond_f
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 519
    :cond_10
    instance-of v1, p3, [F

    if-eqz v1, :cond_12

    .line 520
    if-eqz p4, :cond_11

    .line 521
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 523
    :cond_11
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 526
    :cond_12
    instance-of v1, p3, [Z

    if-eqz v1, :cond_14

    .line 527
    if-eqz p4, :cond_13

    .line 528
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 530
    :cond_13
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 533
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 534
    if-eqz p4, :cond_15

    .line 535
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 537
    :cond_15
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 541
    :cond_16
    if-eqz p4, :cond_17

    .line 542
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 544
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1486
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1487
    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 360
    if-eqz p2, :cond_0

    .line 361
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 364
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 368
    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .prologue
    .line 1179
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1180
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .prologue
    .line 1240
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1241
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .prologue
    .line 1301
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1302
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .prologue
    .line 1362
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1363
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .prologue
    .line 1057
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1058
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .prologue
    .line 996
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 997
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .prologue
    .line 935
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 936
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .prologue
    .line 1118
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1119
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .prologue
    .line 1423
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1424
    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 1537
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1538
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1539
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1540
    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "superToString"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "toString"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p2, :cond_1

    .line 340
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 341
    .local v1, "pos1":I
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 342
    .local v2, "pos2":I
    if-eq v1, v2, :cond_1

    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    .line 343
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "data":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 347
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 351
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "pos1":I
    .end local v2    # "pos2":I
    :cond_1
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 1573
    invoke-static {p1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .locals 1

    .prologue
    .line 1713
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .locals 1

    .prologue
    .line 1941
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .locals 1

    .prologue
    .line 1917
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "fullDetailRequest"    # Ljava/lang/Boolean;

    .prologue
    .line 1557
    if-nez p1, :cond_0

    .line 1558
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1560
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected isShortClassName()Z
    .locals 1

    .prologue
    .line 1619
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected isUseClassName()Z
    .locals 1

    .prologue
    .line 1587
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .locals 1

    .prologue
    .line 1671
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .prologue
    .line 1651
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .locals 1

    .prologue
    .line 1608
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 908
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 910
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 911
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 912
    .local v1, "item":Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 913
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    :cond_0
    if-nez v1, :cond_1

    .line 916
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 910
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 922
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 392
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 393
    .local v1, "len":I
    iget-object v4, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 394
    .local v3, "sepLen":I
    if-lez v1, :cond_1

    if-lez v3, :cond_1

    if-lt v1, v3, :cond_1

    .line 395
    const/4 v2, 0x1

    .line 396
    .local v2, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 397
    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    .line 398
    const/4 v2, 0x0

    .line 402
    :cond_0
    if-eqz v2, :cond_1

    .line 403
    sub-int v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 406
    .end local v0    # "i":I
    .end local v2    # "match":Z
    :cond_1
    return-void

    .line 396
    .restart local v0    # "i":I
    .restart local v2    # "match":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setArrayContentDetail(Z)V
    .locals 0
    .param p1, "arrayContentDetail"    # Z

    .prologue
    .line 1722
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    .line 1723
    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayEnd"    # Ljava/lang/String;

    .prologue
    .line 1771
    if-nez p1, :cond_0

    .line 1772
    const-string/jumbo p1, ""

    .line 1774
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 1775
    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "arraySeparator"    # Ljava/lang/String;

    .prologue
    .line 1797
    if-nez p1, :cond_0

    .line 1798
    const-string/jumbo p1, ""

    .line 1800
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 1801
    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayStart"    # Ljava/lang/String;

    .prologue
    .line 1745
    if-nez p1, :cond_0

    .line 1746
    const-string/jumbo p1, ""

    .line 1748
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1749
    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEnd"    # Ljava/lang/String;

    .prologue
    .line 1849
    if-nez p1, :cond_0

    .line 1850
    const-string/jumbo p1, ""

    .line 1852
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 1853
    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentStart"    # Ljava/lang/String;

    .prologue
    .line 1823
    if-nez p1, :cond_0

    .line 1824
    const-string/jumbo p1, ""

    .line 1826
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 1827
    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .locals 0
    .param p1, "defaultFullDetail"    # Z

    .prologue
    .line 1702
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1703
    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldNameValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 1875
    if-nez p1, :cond_0

    .line 1876
    const-string/jumbo p1, ""

    .line 1878
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 1879
    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldSeparator"    # Ljava/lang/String;

    .prologue
    .line 1901
    if-nez p1, :cond_0

    .line 1902
    const-string/jumbo p1, ""

    .line 1904
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 1905
    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .locals 0
    .param p1, "fieldSeparatorAtEnd"    # Z

    .prologue
    .line 1952
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 1953
    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0
    .param p1, "fieldSeparatorAtStart"    # Z

    .prologue
    .line 1928
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 1929
    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .locals 0
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 1975
    if-nez p1, :cond_0

    .line 1976
    const-string/jumbo p1, ""

    .line 1978
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 1979
    return-void
.end method

.method protected setShortClassName(Z)V
    .locals 0
    .param p1, "shortClassName"    # Z

    .prologue
    .line 1640
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 1641
    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeEndText"    # Ljava/lang/String;

    .prologue
    .line 2039
    if-nez p1, :cond_0

    .line 2040
    const-string/jumbo p1, ""

    .line 2042
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 2043
    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeStartText"    # Ljava/lang/String;

    .prologue
    .line 2007
    if-nez p1, :cond_0

    .line 2008
    const-string/jumbo p1, ""

    .line 2010
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 2011
    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryObjectEndText"    # Ljava/lang/String;

    .prologue
    .line 2103
    if-nez p1, :cond_0

    .line 2104
    const-string/jumbo p1, ""

    .line 2106
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 2107
    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryObjectStartText"    # Ljava/lang/String;

    .prologue
    .line 2071
    if-nez p1, :cond_0

    .line 2072
    const-string/jumbo p1, ""

    .line 2074
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 2075
    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0
    .param p1, "useClassName"    # Z

    .prologue
    .line 1596
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    .line 1597
    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0
    .param p1, "useFieldNames"    # Z

    .prologue
    .line 1680
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    .line 1681
    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0
    .param p1, "useIdentityHashCode"    # Z

    .prologue
    .line 1660
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 1661
    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0
    .param p1, "useShortClassName"    # Z

    .prologue
    .line 1629
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 1630
    return-void
.end method
