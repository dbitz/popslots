.class public Lsfs2x/fsm/FiniteStateMachine;
.super Ljava/lang/Object;
.source "FiniteStateMachine.java"


# instance fields
.field private currentStateName:I

.field private locker:Ljava/lang/Object;

.field private states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsfs2x/fsm/FSMState;",
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

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsfs2x/fsm/FiniteStateMachine;->states:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsfs2x/fsm/FiniteStateMachine;->locker:Ljava/lang/Object;

    .line 9
    return-void
.end method

.method private findStateObjByName(I)Lsfs2x/fsm/FSMState;
    .locals 4
    .param p1, "st"    # I

    .prologue
    .line 71
    move v1, p1

    .line 72
    .local v1, "stateName":I
    iget-object v2, p0, Lsfs2x/fsm/FiniteStateMachine;->states:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsfs2x/fsm/FSMState;

    .line 73
    .local v0, "state":Lsfs2x/fsm/FSMState;
    invoke-virtual {v0}, Lsfs2x/fsm/FSMState;->getStateName()I

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public addAllStates(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, v0}, Lsfs2x/fsm/FiniteStateMachine;->addState(I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addState(I)V
    .locals 3
    .param p1, "st"    # I

    .prologue
    .line 20
    move v1, p1

    .line 21
    .local v1, "stateName":I
    new-instance v0, Lsfs2x/fsm/FSMState;

    invoke-direct {v0}, Lsfs2x/fsm/FSMState;-><init>()V

    .line 22
    .local v0, "state":Lsfs2x/fsm/FSMState;
    invoke-virtual {v0, v1}, Lsfs2x/fsm/FSMState;->setStateName(I)V

    .line 23
    iget-object v2, p0, Lsfs2x/fsm/FiniteStateMachine;->states:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public addStateTransition(III)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "tr"    # I

    .prologue
    .line 27
    move v0, p1

    .line 28
    .local v0, "fromState":I
    move v2, p2

    .line 29
    .local v2, "toState":I
    move v3, p3

    .line 30
    .local v3, "transition":I
    invoke-direct {p0, v0}, Lsfs2x/fsm/FiniteStateMachine;->findStateObjByName(I)Lsfs2x/fsm/FSMState;

    move-result-object v1

    .line 31
    .local v1, "state":Lsfs2x/fsm/FSMState;
    invoke-virtual {v1, v3, v2}, Lsfs2x/fsm/FSMState;->addTransition(II)V

    .line 32
    return-void
.end method

.method public applyTransition(I)I
    .locals 4
    .param p1, "tr"    # I

    .prologue
    .line 35
    iget-object v3, p0, Lsfs2x/fsm/FiniteStateMachine;->locker:Ljava/lang/Object;

    monitor-enter v3

    .line 36
    move v1, p1

    .line 37
    .local v1, "transition":I
    :try_start_0
    iget v0, p0, Lsfs2x/fsm/FiniteStateMachine;->currentStateName:I

    .line 39
    .local v0, "startStateName":I
    iget v2, p0, Lsfs2x/fsm/FiniteStateMachine;->currentStateName:I

    invoke-direct {p0, v2}, Lsfs2x/fsm/FiniteStateMachine;->findStateObjByName(I)Lsfs2x/fsm/FSMState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsfs2x/fsm/FSMState;->applyTransition(I)I

    move-result v2

    iput v2, p0, Lsfs2x/fsm/FiniteStateMachine;->currentStateName:I

    .line 48
    iget v2, p0, Lsfs2x/fsm/FiniteStateMachine;->currentStateName:I

    monitor-exit v3

    return v2

    .line 35
    .end local v0    # "startStateName":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentState()I
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lsfs2x/fsm/FiniteStateMachine;->locker:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget v0, p0, Lsfs2x/fsm/FiniteStateMachine;->currentStateName:I

    monitor-exit v1

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 61
    move v0, p1

    .line 67
    .local v0, "stateName":I
    iput v0, p0, Lsfs2x/fsm/FiniteStateMachine;->currentStateName:I

    .line 68
    return-void
.end method
