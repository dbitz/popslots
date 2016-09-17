.class public Lorg/jboss/netty/handler/codec/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;,
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Values;,
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Names;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field private final head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 727
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 730
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 731
    return-void
.end method

.method public static addHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 536
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method private addHeader0(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 748
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v0, v2, p2

    .line 750
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    new-instance v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    invoke-direct {v1, p1, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .local v1, "newEntry":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    aput-object v1, v2, p2

    .line 751
    iput-object v0, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 754
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->addBefore(Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;)V

    .line 755
    return-void
.end method

.method public static addIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 597
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v4, 0x0

    .line 699
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 700
    .local v3, "nameLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v4

    .line 704
    :cond_1
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 705
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 706
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 707
    .local v1, "c2":C
    if-eq v0, v1, :cond_4

    .line 708
    if-lt v0, v6, :cond_2

    if-gt v0, v7, :cond_2

    .line 709
    add-int/lit8 v5, v0, 0x20

    int-to-char v0, v5

    .line 711
    :cond_2
    if-lt v1, v6, :cond_3

    if-gt v1, v7, :cond_3

    .line 712
    add-int/lit8 v5, v1, 0x20

    int-to-char v1, v5

    .line 714
    :cond_3
    if-ne v0, v1, :cond_0

    .line 704
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 719
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;)J
    .locals 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 610
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J
    .locals 5
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # J

    .prologue
    .line 623
    const-string/jumbo v3, "Content-Length"

    invoke-interface {p0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 625
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 645
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 629
    .restart local p1    # "defaultValue":J
    :cond_1
    instance-of v3, p0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 630
    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 631
    .local v1, "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    sget-object v3, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Sec-WebSocket-Key1"

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Sec-WebSocket-Key2"

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    const-wide/16 p1, 0x8

    goto :goto_0

    .line 636
    .end local v1    # "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    :cond_2
    instance-of v3, p0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 637
    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 638
    .local v2, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "Sec-WebSocket-Origin"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Sec-WebSocket-Location"

    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    const-wide/16 p1, 0x10

    goto :goto_0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 513
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 659
    const-string/jumbo v0, "Host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 667
    const-string/jumbo v0, "Host"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I
    .locals 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 551
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string/jumbo v2, "null"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I
    .locals 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 565
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 573
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 571
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 682
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 683
    .local v0, "c":C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 684
    add-int/lit8 v3, v0, 0x20

    int-to-char v0, v3

    .line 686
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    add-int v1, v3, v0

    .line 681
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 689
    .end local v0    # "c":C
    :cond_1
    if-lez v1, :cond_2

    .line 694
    .end local v1    # "h":I
    :goto_1
    return v1

    .line 691
    .restart local v1    # "h":I
    :cond_2
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_3

    .line 692
    const v1, 0x7fffffff

    goto :goto_1

    .line 694
    :cond_3
    neg-int v1, v1

    goto :goto_1
.end method

.method private static index(I)I
    .locals 1
    .param p0, "hash"    # I

    .prologue
    .line 723
    rem-int/lit8 v0, p0, 0x11

    return v0
.end method

.method public static isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v1, 0x0

    .line 442
    const-string/jumbo v2, "Connection"

    invoke-interface {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "connection":Ljava/lang/String;
    const-string/jumbo v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 447
    :cond_1
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    const-string/jumbo v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 450
    :cond_2
    const-string/jumbo v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private removeHeader0(IILjava/lang/String;)V
    .locals 4
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 767
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v0, v2, p2

    .line 768
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    if-nez v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 773
    :cond_0
    :goto_1
    iget v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v2, p1, :cond_3

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->remove()V

    .line 775
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 776
    .local v1, "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    if-eqz v1, :cond_1

    .line 777
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aput-object v1, v2, p2

    .line 778
    move-object v0, v1

    goto :goto_1

    .line 780
    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    const/4 v3, 0x0

    aput-object v3, v2, p2

    goto :goto_0

    .line 793
    :cond_2
    iget v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 794
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 795
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->remove()V

    .line 789
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :cond_3
    :goto_2
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 790
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    if-nez v1, :cond_2

    goto :goto_0

    .line 797
    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V
    .locals 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "length"    # J

    .prologue
    .line 652
    const-string/jumbo v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 530
    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 521
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public static setHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string/jumbo v0, "Host"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public static setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 582
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public static setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 591
    return-void
.end method

.method public static setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V
    .locals 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "keepAlive"    # Z

    .prologue
    .line 474
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    if-eqz p1, :cond_0

    .line 476
    const-string/jumbo v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "close"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :cond_1
    if-eqz p1, :cond_2

    .line 482
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "keep-alive"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :cond_2
    const-string/jumbo v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 906
    if-nez p0, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 909
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    .line 739
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "strVal":Ljava/lang/String;
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 741
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 743
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method clearHeaders()V
    .locals 4

    .prologue
    .line 834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 835
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v3, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v3, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 838
    return-void
.end method

.method containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 841
    if-nez p1, :cond_0

    .line 842
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "name"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 845
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 846
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    .line 847
    .local v2, "i":I
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v0, v3, v2

    .line 848
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 849
    iget v3, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 855
    :goto_1
    return-object v3

    .line 853
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_0

    .line 855
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getHeaderNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/handler/codec/http/CaseIgnoringComparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 897
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v0, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 898
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    if-eq v0, v2, :cond_0

    .line 899
    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_0

    .line 902
    :cond_0
    return-object v1
.end method

.method getHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 878
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 881
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 882
    .local v1, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    if-eq v1, v2, :cond_0

    .line 883
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v1, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_0

    .line 886
    :cond_0
    return-object v0
.end method

.method getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    if-nez p1, :cond_0

    .line 860
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "name"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 863
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 865
    .local v3, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 866
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    .line 867
    .local v2, "i":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v0, v4, v2

    .line 868
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 869
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v4, v1, :cond_1

    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p1, v4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 870
    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 872
    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_0

    .line 874
    :cond_2
    return-object v3
.end method

.method removeHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 759
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 762
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 763
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 764
    return-void
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p2, :cond_0

    .line 814
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "values"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 817
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    .line 819
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 820
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 822
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 823
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 824
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 831
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    return-void

    .line 827
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "strVal":Ljava/lang/String;
    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 829
    invoke-direct {p0, v0, v1, p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    .line 804
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, "strVal":Ljava/lang/String;
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 806
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 807
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 808
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 809
    invoke-direct {p0, v0, v1, p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method validateHeaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    .line 735
    return-void
.end method
