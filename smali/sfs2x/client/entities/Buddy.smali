.class public interface abstract Lsfs2x/client/entities/Buddy;
.super Ljava/lang/Object;
.source "Buddy.java"


# virtual methods
.method public abstract clearVolatileVariables()V
.end method

.method public abstract containsVariable(Ljava/lang/String;)Z
.end method

.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNickName()Ljava/lang/String;
.end method

.method public abstract getOfflineVariables()Ljava/util/List;
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

.method public abstract getOnlineVariables()Ljava/util/List;
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

.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/BuddyVariable;
.end method

.method public abstract getVariables()Ljava/util/List;
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

.method public abstract isBlocked()Z
.end method

.method public abstract isOnline()Z
.end method

.method public abstract isTemp()Z
.end method

.method public abstract removeVariable(Ljava/lang/String;)V
.end method

.method public abstract setBlocked(Z)V
.end method

.method public abstract setId(I)V
.end method

.method public abstract setVariable(Lsfs2x/client/entities/variables/BuddyVariable;)V
.end method

.method public abstract setVariables(Ljava/util/List;)V
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
