.class final Lorg/jboss/netty/channel/group/CombinedIterator;
.super Ljava/lang/Object;
.source "CombinedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final i1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final i2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    .local p1, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .local p2, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "i1"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "i2"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    .line 40
    iput-object p2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    .line 41
    iput-object p1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 42
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 45
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 46
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    .line 50
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v1, v2, :cond_1

    .line 51
    iget-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 52
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/CombinedIterator;->hasNext()Z

    move-result v1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/util/NoSuchElementException;
    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v3, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v2, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 65
    invoke-virtual {p0}, Lorg/jboss/netty/channel/group/CombinedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_0
    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/jboss/netty/channel/group/CombinedIterator;, "Lorg/jboss/netty/channel/group/CombinedIterator<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 74
    return-void
.end method
