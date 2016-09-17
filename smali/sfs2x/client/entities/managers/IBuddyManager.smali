.class public interface abstract Lsfs2x/client/entities/managers/IBuddyManager;
.super Ljava/lang/Object;
.source "IBuddyManager.java"


# virtual methods
.method public abstract addBuddy(Lsfs2x/client/entities/Buddy;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract containsBuddy(Ljava/lang/String;)Z
.end method

.method public abstract getBuddyById(I)Lsfs2x/client/entities/Buddy;
.end method

.method public abstract getBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;
.end method

.method public abstract getBuddyByNickName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;
.end method

.method public abstract getBuddyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBuddyStates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMyNickName()Ljava/lang/String;
.end method

.method public abstract getMyOnlineState()Z
.end method

.method public abstract getMyState()Ljava/lang/String;
.end method

.method public abstract getMyVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;
.end method

.method public abstract getMyVariables()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOfflineBuddies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlineBuddies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/Buddy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInited()Z
.end method

.method public abstract removeBuddyById(I)Lsfs2x/client/entities/Buddy;
.end method

.method public abstract removeBuddyByName(Ljava/lang/String;)Lsfs2x/client/entities/Buddy;
.end method

.method public abstract setBuddyStates(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInited(Z)V
.end method

.method public abstract setMyNickName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract setMyOnlineState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract setMyState(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation
.end method

.method public abstract setMyVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V
.end method

.method public abstract setMyVariables(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/BuddyVariable;",
            ">;)V"
        }
    .end annotation
.end method
