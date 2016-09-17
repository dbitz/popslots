.class abstract Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
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

.field currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 1

    .prologue
    .line 1113
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    .line 1116
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    .line 1117
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 5

    .prologue
    .line 1134
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    if-ltz v2, :cond_2

    .line 1139
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iget v3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1144
    :cond_2
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v2, :cond_0

    .line 1145
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    iget v3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v1, v2, v3

    .line 1146
    .local v1, "seg":Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 1147
    iget-object v2, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 1148
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1149
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    aget-object v2, v2, v0

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_3

    .line 1150
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    .line 1148
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1130
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1159
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1161
    const/4 v0, 0x1

    .line 1166
    :goto_1
    return v0

    .line 1163
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    goto :goto_0

    .line 1166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method nextEntry()Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_1

    .line 1172
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1175
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 1176
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1177
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    .line 1178
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1184
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 1189
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentHashMap<TK;TV;>.HashIterator;"
    const/4 v1, 0x0

    .line 1120
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    .line 1121
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    .line 1122
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 1123
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 1124
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashEntry;

    .line 1125
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1126
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$HashIterator;->advance()V

    .line 1127
    return-void
.end method
