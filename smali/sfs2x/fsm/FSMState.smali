.class public Lsfs2x/fsm/FSMState;
.super Ljava/lang/Object;
.source "FSMState.java"


# instance fields
.field private stateName:I

.field private transitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsfs2x/fsm/FSMState;->transitions:Ljava/util/Map;

    .line 9
    return-void
.end method


# virtual methods
.method public addTransition(II)V
    .locals 3
    .param p1, "transition"    # I
    .param p2, "outputState"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lsfs2x/fsm/FSMState;->transitions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public applyTransition(I)I
    .locals 3
    .param p1, "transition"    # I

    .prologue
    .line 27
    iget v0, p0, Lsfs2x/fsm/FSMState;->stateName:I

    .line 29
    .local v0, "outputStateName":I
    iget-object v1, p0, Lsfs2x/fsm/FSMState;->transitions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lsfs2x/fsm/FSMState;->transitions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 33
    :cond_0
    return v0
.end method

.method public getStateName()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lsfs2x/fsm/FSMState;->stateName:I

    return v0
.end method

.method public setStateName(I)V
    .locals 0
    .param p1, "newStateName"    # I

    .prologue
    .line 14
    iput p1, p0, Lsfs2x/fsm/FSMState;->stateName:I

    .line 15
    return-void
.end method
