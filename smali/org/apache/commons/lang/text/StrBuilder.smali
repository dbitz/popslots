.class public Lorg/apache/commons/lang/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;,
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;,
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-gtz p1, :cond_0

    .line 109
    const/16 p1, 0x20

    .line 111
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-nez p1, :cond_0

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0
.end method

.method private deleteImpl(III)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "len"    # I

    .prologue
    .line 1468
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1470
    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "replaceCount"    # I

    .prologue
    .line 1789
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    .line 1805
    :cond_0
    return-object p0

    .line 1792
    :cond_1
    if-nez p2, :cond_3

    const/4 v5, 0x0

    .line 1793
    .local v5, "replaceLen":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1794
    .local v6, "buf":[C
    move v1, p3

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_0

    if-eqz p5, :cond_0

    .line 1795
    invoke-virtual {p1, v6, v1, p3, p4}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    .line 1796
    .local v3, "removeLen":I
    if-lez v3, :cond_2

    .line 1797
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1798
    sub-int v0, p4, v3

    add-int p4, v0, v5

    .line 1799
    add-int v0, v1, v5

    add-int/lit8 v1, v0, -0x1

    .line 1800
    if-lez p5, :cond_2

    .line 1801
    add-int/lit8 p5, p5, -0x1

    .line 1794
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1792
    .end local v1    # "i":I
    .end local v3    # "removeLen":I
    .end local v5    # "replaceLen":I
    .end local v6    # "buf":[C
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "removeLen"    # I
    .param p4, "insertStr"    # Ljava/lang/String;
    .param p5, "insertLen"    # I

    .prologue
    .line 1607
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v1, p3

    add-int v0, v1, p5

    .line 1608
    .local v0, "newSize":I
    if-eq p5, p3, :cond_0

    .line 1609
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1610
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v3, p1, p5

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1611
    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1613
    :cond_0
    if-lez p5, :cond_1

    .line 1614
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1616
    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 689
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 690
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char p1, v1, v2

    .line 691
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 731
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 721
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 701
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 711
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 469
    if-nez p1, :cond_1

    .line 470
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 479
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 472
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 473
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 475
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 476
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 477
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 492
    if-nez p1, :cond_1

    .line 493
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 507
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 495
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 496
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 499
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_5
    if-lez p3, :cond_0

    .line 502
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 503
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 504
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 505
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .prologue
    .line 518
    if-nez p1, :cond_1

    .line 519
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 528
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 521
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 522
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 524
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 525
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 526
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 541
    if-nez p1, :cond_1

    .line 542
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 556
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 544
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 545
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 548
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_5
    if-lez p3, :cond_0

    .line 551
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 552
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 553
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 554
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    .line 567
    if-nez p1, :cond_1

    .line 568
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 577
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 570
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    .line 571
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 573
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 574
    iget-object v2, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 590
    if-nez p1, :cond_1

    .line 591
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 605
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 593
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 594
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 597
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_5
    if-lez p3, :cond_0

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 601
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 602
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->getChars(II[CI)V

    .line 603
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/16 v3, 0x65

    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 666
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 667
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 668
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 669
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    .line 678
    :goto_0
    return-object p0

    .line 671
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 672
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 673
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 674
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 675
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 676
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C

    .prologue
    .line 616
    if-nez p1, :cond_1

    .line 617
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 626
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 619
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    array-length v1, p1

    .line 620
    .local v1, "strLen":I
    if-lez v1, :cond_0

    .line 621
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 622
    .local v0, "len":I
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 623
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append([CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 639
    if-nez p1, :cond_1

    .line 640
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 654
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 642
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-le p2, v1, :cond_3

    .line 643
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Invalid startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_3
    if-ltz p3, :cond_4

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_5

    .line 646
    :cond_4
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_5
    if-lez p3, :cond_0

    .line 649
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 650
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 651
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public appendAll(Ljava/util/Collection;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 946
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 947
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 948
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 952
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;

    .prologue
    .line 965
    if-eqz p1, :cond_0

    .line 966
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 970
    :cond_0
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 928
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 929
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 930
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 933
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 1215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 1183
    if-lez p2, :cond_1

    .line 1184
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1185
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "str":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 1187
    const-string/jumbo v2, ""

    .line 1189
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1190
    .local v3, "strLen":I
    if-lt v3, p2, :cond_3

    .line 1191
    sub-int v4, v3, p2

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1199
    :goto_1
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1201
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strLen":I
    :cond_1
    return-object p0

    .line 1185
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1193
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "strLen":I
    :cond_3
    sub-int v1, p2, v3

    .line 1194
    .local v1, "padLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 1195
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1197
    :cond_4
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 1262
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .prologue
    const/4 v6, 0x0

    .line 1230
    if-lez p2, :cond_2

    .line 1231
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1232
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    .line 1233
    .local v2, "str":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 1234
    const-string/jumbo v2, ""

    .line 1236
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1237
    .local v3, "strLen":I
    if-lt v3, p2, :cond_4

    .line 1238
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v2, v6, p2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1246
    :cond_1
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1248
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strLen":I
    :cond_2
    return-object p0

    .line 1232
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1240
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "strLen":I
    :cond_4
    sub-int v1, p2, v3

    .line 1241
    .local v1, "padLen":I
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v2, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1243
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 429
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 432
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendNull()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 444
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "length"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 1161
    if-ltz p1, :cond_0

    .line 1162
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1164
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # C

    .prologue
    .line 1091
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1092
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1094
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # C
    .param p2, "loopIndex"    # I

    .prologue
    .line 1146
    if-lez p2, :cond_0

    .line 1147
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1149
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1065
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1066
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1068
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "loopIndex"    # I

    .prologue
    .line 1119
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1120
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1122
    :cond_0
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 1007
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1008
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .line 1009
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1010
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1011
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1012
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1013
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 1017
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 1031
    if-eqz p1, :cond_1

    .line 1032
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .line 1033
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1035
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 1040
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 985
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 986
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .line 987
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 988
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 989
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 990
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 914
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(D)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 903
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(F)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 892
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 770
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 796
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    .line 808
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 822
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Z)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 848
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 2363
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 2339
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 2388
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 302
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 288
    return-object p0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 2026
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2027
    .local v1, "thisBuf":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v2, :cond_1

    .line 2028
    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 2029
    const/4 v2, 0x1

    .line 2032
    :goto_1
    return v2

    .line 2027
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2032
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2042
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang/text/StrMatcher;)Z
    .locals 2
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    const/4 v0, 0x0

    .line 2057
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1482
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1483
    sub-int v0, p2, p1

    .line 1484
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1485
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1487
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 1498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 1499
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 1500
    move v2, v0

    .line 1501
    .local v2, "start":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_1

    .line 1502
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-eq v3, p1, :cond_0

    .line 1506
    :cond_1
    sub-int v1, v0, v2

    .line 1507
    .local v1, "len":I
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1508
    sub-int/2addr v0, v1

    .line 1498
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1538
    if-nez p1, :cond_0

    move v1, v2

    .line 1539
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1540
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1541
    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1542
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1543
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1538
    .end local v0    # "index":I
    .end local v1    # "len":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 1546
    .restart local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 1578
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 336
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 339
    :cond_1
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 340
    return-object p0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 1521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    .line 1522
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1523
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1527
    :cond_0
    return-object p0

    .line 1521
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1556
    if-nez p1, :cond_1

    move v1, v2

    .line 1557
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_0

    .line 1558
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1559
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1560
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1563
    .end local v0    # "index":I
    :cond_0
    return-object p0

    .line 1556
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public deleteFirst(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 1592
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1895
    if-nez p1, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return v3

    .line 1898
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1899
    .local v1, "len":I
    if-nez v1, :cond_2

    move v3, v4

    .line 1900
    goto :goto_0

    .line 1902
    :cond_2
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v1, v5, :cond_0

    .line 1905
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int v2, v5, v1

    .line 1906
    .local v2, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1907
    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1906
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1911
    goto :goto_0
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 229
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 230
    .local v0, "old":[C
    new-array v1, p1, [C

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 231
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2480
    instance-of v0, p1, Lorg/apache/commons/lang/text/StrBuilder;

    if-eqz v0, :cond_0

    .line 2481
    check-cast p1, Lorg/apache/commons/lang/text/StrBuilder;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->equals(Lorg/apache/commons/lang/text/StrBuilder;)Z

    move-result v0

    .line 2483
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2456
    if-ne p0, p1, :cond_1

    .line 2469
    :cond_0
    :goto_0
    return v3

    .line 2459
    :cond_1
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v6, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-eq v5, v6, :cond_2

    move v3, v4

    .line 2460
    goto :goto_0

    .line 2462
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2463
    .local v2, "thisBuf":[C
    iget-object v1, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2464
    .local v1, "otherBuf":[C
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 2465
    aget-char v5, v2, v0

    aget-char v6, v1, v0

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 2466
    goto :goto_0

    .line 2464
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 9
    .param p1, "other"    # Lorg/apache/commons/lang/text/StrBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2430
    if-ne p0, p1, :cond_1

    .line 2445
    :cond_0
    :goto_0
    return v5

    .line 2433
    :cond_1
    iget v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v8, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-eq v7, v8, :cond_2

    move v5, v6

    .line 2434
    goto :goto_0

    .line 2436
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2437
    .local v4, "thisBuf":[C
    iget-object v3, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2438
    .local v3, "otherBuf":[C
    iget v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2439
    aget-char v0, v4, v2

    .line 2440
    .local v0, "c1":C
    aget-char v1, v3, v2

    .line 2441
    .local v1, "c2":C
    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 2442
    goto :goto_0

    .line 2438
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "destination"    # [C
    .param p4, "destinationIndex"    # I

    .prologue
    .line 405
    if-gez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 408
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 409
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 411
    :cond_2
    if-le p1, p2, :cond_3

    .line 412
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    return-void
.end method

.method public getChars([C)[C
    .locals 3
    .param p1, "destination"    # [C

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 387
    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 388
    :cond_0
    new-array p1, v0, [C

    .line 390
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 2492
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2493
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2494
    .local v1, "hash":I
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2495
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    .line 2494
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2497
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 2068
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2079
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2080
    :cond_0
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v3, :cond_2

    move v0, v2

    .line 2089
    :cond_1
    :goto_0
    return v0

    .line 2083
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2084
    .local v1, "thisBuf":[C
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 2085
    aget-char v3, v1, v0

    if-eq v3, p1, :cond_1

    .line 2084
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 2089
    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2115
    if-gez p2, :cond_0

    move p2, v6

    .line 2116
    :cond_0
    if-eqz p1, :cond_1

    iget v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v7, :cond_3

    :cond_1
    move p2, v5

    .line 2140
    .end local p2    # "startIndex":I
    :cond_2
    :goto_0
    return p2

    .line 2119
    .restart local p2    # "startIndex":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2120
    .local v3, "strLen":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    .line 2121
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5, p2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(CI)I

    move-result p2

    goto :goto_0

    .line 2123
    :cond_4
    if-eqz v3, :cond_2

    .line 2126
    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le v3, v6, :cond_5

    move p2, v5

    .line 2127
    goto :goto_0

    .line 2129
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2130
    .local v4, "thisBuf":[C
    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x1

    .line 2132
    .local v2, "len":I
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_8

    .line 2133
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_7

    .line 2134
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v0, v1

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_6

    .line 2132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2133
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move p2, v0

    .line 2138
    goto :goto_0

    .end local v1    # "j":I
    :cond_8
    move p2, v5

    .line 2140
    goto :goto_0
.end method

.method public indexOf(Lorg/apache/commons/lang/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 2154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2170
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2171
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_3

    :cond_1
    move v1, v3

    .line 2181
    :cond_2
    :goto_0
    return v1

    .line 2174
    :cond_3
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 2175
    .local v2, "len":I
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2176
    .local v0, "buf":[C
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 2177
    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_2

    .line 2176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    .line 2181
    goto :goto_0
.end method

.method public insert(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 1402
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1403
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1404
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1405
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1406
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1407
    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 1455
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 1443
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 1419
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 1431
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1276
    if-nez p2, :cond_0

    .line 1277
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 1279
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 7
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1292
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1293
    if-nez p2, :cond_0

    .line 1294
    iget-object p2, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 1296
    :cond_0
    if-nez p2, :cond_2

    move v1, v2

    .line 1297
    .local v1, "strLen":I
    :goto_0
    if-lez v1, :cond_1

    .line 1298
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int v0, v3, v1

    .line 1299
    .local v0, "newSize":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1300
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v5, p1, v1

    iget v6, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1302
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v2, v1, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1304
    .end local v0    # "newSize":I
    :cond_1
    return-object p0

    .line 1296
    .end local v1    # "strLen":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public insert(IZ)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    const/16 v5, 0x65

    .line 1371
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1372
    if-eqz p2, :cond_0

    .line 1373
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1374
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x4

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1375
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    const/16 v2, 0x74

    aput-char v2, v1, p1

    .line 1376
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 1377
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x75

    aput-char v2, v1, p1

    .line 1378
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char v5, v1, v0

    .line 1379
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    move p1, v0

    .line 1390
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :goto_0
    return-object p0

    .line 1381
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1382
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x5

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1383
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x66

    aput-char v2, v1, p1

    .line 1384
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 1385
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    const/16 v2, 0x6c

    aput-char v2, v1, p1

    .line 1386
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 1387
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char v5, v1, p1

    .line 1388
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .prologue
    .line 1317
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1318
    if-nez p2, :cond_1

    .line 1319
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 1328
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 1321
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    array-length v0, p2

    .line 1322
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1323
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1324
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1325
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1326
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1344
    if-nez p2, :cond_1

    .line 1345
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object p0

    .line 1359
    .end local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 1347
    .restart local p0    # "this":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p2

    if-le p3, v0, :cond_3

    .line 1348
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_3
    if-ltz p4, :cond_4

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_5

    .line 1351
    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_5
    if-lez p4, :cond_0

    .line 1354
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1355
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 2192
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 2203
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_0

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p2, v2, -0x1

    .line 2204
    :cond_0
    if-gez p2, :cond_2

    move v0, v1

    .line 2212
    :cond_1
    :goto_0
    return v0

    .line 2207
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2208
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_1

    .line 2207
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2212
    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2224
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2238
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    .line 2239
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    move v0, v3

    .line 2261
    :cond_2
    :goto_0
    return v0

    .line 2242
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2243
    .local v2, "strLen":I
    if-lez v2, :cond_6

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v2, v4, :cond_6

    .line 2244
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 2245
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    goto :goto_0

    .line 2249
    :cond_4
    sub-int v4, p2, v2

    add-int/lit8 v0, v4, 0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_7

    .line 2250
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 2251
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v6, v0, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_5

    .line 2249
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2250
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2258
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_6
    if-nez v2, :cond_7

    move v0, p2

    .line 2259
    goto :goto_0

    :cond_7
    move v0, v3

    .line 2261
    goto :goto_0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 2275
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2291
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    .line 2292
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    move v2, v3

    .line 2302
    :cond_2
    :goto_0
    return v2

    .line 2295
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2296
    .local v0, "buf":[C
    add-int/lit8 v1, p2, 0x1

    .line 2297
    .local v1, "endIndex":I
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 2298
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v1}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_2

    .line 2297
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 2302
    goto :goto_0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 1957
    if-gtz p1, :cond_0

    .line 1958
    const-string/jumbo v0, ""

    .line 1962
    :goto_0
    return-object v0

    .line 1959
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 1960
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 1962
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, v3, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 2005
    if-gez p1, :cond_0

    .line 2006
    const/4 p1, 0x0

    .line 2008
    :cond_0
    if-lez p2, :cond_1

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_2

    .line 2009
    :cond_1
    const-string/jumbo v0, ""

    .line 2014
    :goto_0
    return-object v0

    .line 2011
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 2012
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 2014
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 243
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 244
    .local v0, "old":[C
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 245
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 1630
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1631
    if-nez p3, :cond_0

    const/4 v5, 0x0

    .line 1632
    .local v5, "insertLen":I
    :goto_0
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1633
    return-object p0

    .line 1631
    .end local v5    # "insertLen":I
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "replaceCount"    # I

    .prologue
    .line 1767
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p4

    .line 1768
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .prologue
    .line 1646
    if-eq p1, p2, :cond_1

    .line 1647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1648
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1649
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    .line 1647
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1653
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1685
    if-nez p1, :cond_0

    move v3, v0

    .line 1686
    .local v3, "searchLen":I
    :goto_0
    if-lez v3, :cond_2

    .line 1687
    if-nez p2, :cond_1

    move v5, v0

    .line 1688
    .local v5, "replaceLen":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1689
    .local v1, "index":I
    :goto_2
    if-ltz v1, :cond_2

    .line 1690
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1691
    add-int v0, v1, v5

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 1685
    .end local v1    # "index":I
    .end local v3    # "searchLen":I
    .end local v5    # "replaceLen":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1687
    .restart local v3    # "searchLen":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    .line 1694
    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 1729
    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .prologue
    .line 1665
    if-eq p1, p2, :cond_0

    .line 1666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    .line 1667
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1668
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    .line 1673
    .end local v0    # "i":I
    :cond_0
    return-object p0

    .line 1666
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1705
    if-nez p1, :cond_1

    move v3, v5

    .line 1706
    .local v3, "searchLen":I
    :goto_0
    if-lez v3, :cond_0

    .line 1707
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1708
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1709
    if-nez p2, :cond_2

    .line 1710
    .local v5, "replaceLen":I
    :goto_1
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1713
    .end local v1    # "index":I
    .end local v5    # "replaceLen":I
    :cond_0
    return-object p0

    .line 1705
    .end local v3    # "searchLen":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1709
    .restart local v1    # "index":I
    .restart local v3    # "searchLen":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public replaceFirst(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 1744
    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6

    .prologue
    .line 1815
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v5, :cond_1

    .line 1826
    :cond_0
    return-object p0

    .line 1819
    :cond_1
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    div-int/lit8 v1, v5, 0x2

    .line 1820
    .local v1, "half":I
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1821
    .local v0, "buf":[C
    const/4 v2, 0x0

    .local v2, "leftIdx":I
    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v5, -0x1

    .local v3, "rightIdx":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1822
    aget-char v4, v0, v2

    .line 1823
    .local v4, "swap":C
    aget-char v5, v0, v3

    aput-char v5, v0, v2

    .line 1824
    aput-char v4, v0, v3

    .line 1821
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 1979
    if-gtz p1, :cond_0

    .line 1980
    const-string/jumbo v0, ""

    .line 1984
    :goto_0
    return-object v0

    .line 1981
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 1982
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 1984
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 319
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 322
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 323
    return-object p0
.end method

.method public setLength(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 194
    if-gez p1, :cond_0

    .line 195
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 197
    :cond_0
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge p1, v3, :cond_2

    .line 198
    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 208
    :cond_1
    return-object p0

    .line 199
    :cond_2
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p1, v3, :cond_1

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 201
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 202
    .local v2, "oldEnd":I
    move v1, p1

    .line 203
    .local v1, "newEnd":I
    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 204
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 p1, 0x0

    .line 171
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1868
    if-nez p1, :cond_1

    .line 1883
    :cond_0
    :goto_0
    return v2

    .line 1871
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1872
    .local v1, "len":I
    if-nez v1, :cond_2

    move v2, v3

    .line 1873
    goto :goto_0

    .line 1875
    :cond_2
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v1, v4, :cond_0

    .line 1878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1879
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1883
    goto :goto_0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 1923
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1940
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1941
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v1, :cond_0

    .line 351
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 355
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    new-array v0, v1, [C

    .line 354
    .local v0, "chars":[C
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toCharArray(II)[C
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 370
    sub-int v1, p2, p1

    .line 371
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 372
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 376
    :goto_0
    return-object v0

    .line 374
    :cond_0
    new-array v0, v1, [C

    .line 375
    .local v0, "chars":[C
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2511
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 2521
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1837
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v3, :cond_1

    .line 1855
    :cond_0
    :goto_0
    return-object p0

    .line 1840
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1841
    .local v1, "len":I
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1842
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 1843
    .local v2, "pos":I
    :goto_1
    if-ge v2, v1, :cond_2

    aget-char v3, v0, v2

    if-gt v3, v4, :cond_2

    .line 1844
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1846
    :cond_2
    :goto_2
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    if-gt v3, v4, :cond_3

    .line 1847
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1849
    :cond_3
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v1, v3, :cond_4

    .line 1850
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->delete(II)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1852
    :cond_4
    if-lez v2, :cond_0

    .line 1853
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/lang/text/StrBuilder;->delete(II)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0
.end method

.method protected validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2554
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    .line 2555
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2557
    :cond_1
    return-void
.end method

.method protected validateRange(II)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 2535
    if-gez p1, :cond_0

    .line 2536
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2538
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    .line 2539
    iget p2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 2541
    :cond_1
    if-le p1, p2, :cond_2

    .line 2542
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2544
    :cond_2
    return p2
.end method
