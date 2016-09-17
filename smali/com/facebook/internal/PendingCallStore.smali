.class public Lcom/facebook/internal/PendingCallStore;
.super Ljava/lang/Object;
.source "PendingCallStore.java"


# static fields
.field private static final CALL_ID_ARRAY_KEY:Ljava/lang/String; = "com.facebook.internal.PendingCallStore.callIdArrayKey"

.field private static final CALL_KEY_PREFIX:Ljava/lang/String; = "com.facebook.internal.PendingCallStore."

.field private static mInstance:Lcom/facebook/internal/PendingCallStore;


# instance fields
.field private pendingCallMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/widget/FacebookDialog$PendingCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized createInstance()V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/facebook/internal/PendingCallStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/facebook/internal/PendingCallStore;

    invoke-direct {v0}, Lcom/facebook/internal/PendingCallStore;-><init>()V

    sput-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/facebook/internal/PendingCallStore;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/facebook/internal/PendingCallStore;->createInstance()V

    .line 29
    :cond_0
    sget-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;

    return-object v0
.end method

.method private getSavedStateKeyForPendingCallId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pendingCallId"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.facebook.internal.PendingCallStore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPendingCallById(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 2
    .param p1, "callId"    # Ljava/util/UUID;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    goto :goto_0
.end method

.method public restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const-string/jumbo v5, "com.facebook.internal.PendingCallStore.callIdArrayKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    .local v1, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "callId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/internal/PendingCallStore;->getSavedStateKeyForPendingCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "stateKey":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 74
    .local v3, "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    if-eqz v3, :cond_0

    .line 75
    iget-object v5, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    .end local v4    # "stateKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "com.facebook.internal.PendingCallStore.callIdArrayKey"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    iget-object v4, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 62
    .local v2, "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/internal/PendingCallStore;->getSavedStateKeyForPendingCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "stateKey":Ljava/lang/String;
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 65
    .end local v2    # "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    .end local v3    # "stateKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public stopTrackingPendingCall(Ljava/util/UUID;)V
    .locals 2
    .param p1, "callId"    # Ljava/util/UUID;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

.method public trackPendingCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    .locals 2
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-void
.end method
