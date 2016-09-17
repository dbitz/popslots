.class final Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field final hash:I

.field final key:Ljava/lang/String;

.field next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    .line 921
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    .line 922
    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 923
    return-void
.end method


# virtual methods
.method addBefore(Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;)V
    .locals 1
    .param p1, "e"    # Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .prologue
    .line 931
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 932
    iget-object v0, p1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 933
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 934
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 935
    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 912
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 912
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    return-object v0
.end method

.method remove()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 927
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 928
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 912
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 946
    if-nez p1, :cond_0

    .line 947
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 949
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 951
    .local v0, "oldValue":Ljava/lang/String;
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 952
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
