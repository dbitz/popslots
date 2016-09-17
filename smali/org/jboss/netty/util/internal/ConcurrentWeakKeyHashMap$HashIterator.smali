.class abstract Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 1

    .prologue
    .line 1193
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    .line 1195
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    .line 1196
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    .line 1197
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 5

    .prologue
    .line 1214
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v2, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    if-ltz v2, :cond_2

    .line 1219
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iget v3, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1224
    :cond_2
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v2, :cond_0

    .line 1225
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    iget v3, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v1, v2, v3

    .line 1226
    .local v1, "seg":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget v2, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 1227
    iget-object v2, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1228
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1229
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    aget-object v2, v2, v0

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v2, :cond_3

    .line 1230
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    .line 1228
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1210
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1239
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    const/4 v0, 0x1

    .line 1246
    :goto_1
    return v0

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method nextEntry()Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-nez v0, :cond_1

    .line 1252
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1255
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1256
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1257
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    .line 1258
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1264
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1267
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1269
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    const/4 v1, 0x0

    .line 1200
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    .line 1201
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    .line 1202
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1203
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1204
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1205
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1206
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    .line 1207
    return-void
.end method
