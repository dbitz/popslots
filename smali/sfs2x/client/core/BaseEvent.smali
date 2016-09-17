.class public Lsfs2x/client/core/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field private arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected target:Ljava/lang/Object;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lsfs2x/client/core/BaseEvent;->type:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lsfs2x/client/core/BaseEvent;->setArguments(Ljava/util/Map;)V

    .line 72
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lsfs2x/client/core/BaseEvent;->type:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p2}, Lsfs2x/client/core/BaseEvent;->setArguments(Ljava/util/Map;)V

    .line 84
    invoke-virtual {p0}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lsfs2x/client/core/BaseEvent;->setArguments(Ljava/util/Map;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lsfs2x/client/core/BaseEvent;->clone()Lsfs2x/client/core/BaseEvent;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lsfs2x/client/core/BaseEvent;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lsfs2x/client/core/BaseEvent;

    iget-object v1, p0, Lsfs2x/client/core/BaseEvent;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public getArguments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lsfs2x/client/core/BaseEvent;->arguments:Ljava/util/Map;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lsfs2x/client/core/BaseEvent;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lsfs2x/client/core/BaseEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setArguments(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lsfs2x/client/core/BaseEvent;->arguments:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lsfs2x/client/core/BaseEvent;->target:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsfs2x/client/core/BaseEvent;->type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsfs2x/client/core/BaseEvent;->target:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsfs2x/client/core/BaseEvent;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
