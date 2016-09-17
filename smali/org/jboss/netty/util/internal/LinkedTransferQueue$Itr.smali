.class final Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field private lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

.field final synthetic this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/LinkedTransferQueue;)V
    .locals 1

    .prologue
    .line 894
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->advance(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 896
    return-void
.end method

.method private advance(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V
    .locals 3
    .param p1, "prev"    # Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .prologue
    .line 875
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 876
    iput-object p1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 877
    if-nez p1, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    iget-object v1, v2, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 878
    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 879
    iget-object v0, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 880
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v2, v1, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_1

    .line 881
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    .line 882
    invoke-static {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 883
    iput-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 892
    .end local v0    # "item":Ljava/lang/Object;
    :goto_1
    return-void

    .line 877
    .end local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-virtual {v2, p1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0

    .line 887
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    :cond_1
    if-nez v0, :cond_3

    .line 891
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    goto :goto_1

    .line 878
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->succ(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 899
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextNode:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 904
    .local v1, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v1, :cond_0

    .line 905
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 907
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 908
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->advance(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 909
    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 913
    .local p0, "this":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;, "Lorg/jboss/netty/util/internal/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastRet:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    .line 914
    .local v0, "p":Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;
    if-nez v0, :cond_0

    .line 915
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 917
    :cond_0
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    iget-object v1, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->this$0:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/LinkedTransferQueue$Itr;->lastPred:Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;Lorg/jboss/netty/util/internal/LinkedTransferQueue$Node;)V

    .line 920
    :cond_1
    return-void
.end method
