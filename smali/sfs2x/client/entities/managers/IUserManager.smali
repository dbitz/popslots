.class public interface abstract Lsfs2x/client/entities/managers/IUserManager;
.super Ljava/lang/Object;
.source "IUserManager.java"


# virtual methods
.method public abstract addUser(Lsfs2x/client/entities/User;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract containsUser(Lsfs2x/client/entities/User;)Z
.end method

.method public abstract containsUserId(I)Z
.end method

.method public abstract containsUserName(Ljava/lang/String;)Z
.end method

.method public abstract getSmartFox()Lsfs2x/client/ISmartFox;
.end method

.method public abstract getUserById(I)Lsfs2x/client/entities/User;
.end method

.method public abstract getUserByName(Ljava/lang/String;)Lsfs2x/client/entities/User;
.end method

.method public abstract getUserCount()I
.end method

.method public abstract getUserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/User;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeUser(Lsfs2x/client/entities/User;)V
.end method

.method public abstract removeUserById(I)V
.end method
