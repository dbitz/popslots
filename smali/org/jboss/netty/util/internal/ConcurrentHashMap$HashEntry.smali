.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->hash:I

    .line 170
    iput-object p3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 171
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .line 172
    iput-object p4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method static final newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 1
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    return-object v0
.end method


# virtual methods
.method final key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method final setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 187
    return-void
.end method

.method final value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
