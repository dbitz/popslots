.class public interface abstract Lsfs2x/client/entities/IMMOItem;
.super Ljava/lang/Object;
.source "IMMOItem.java"


# virtual methods
.method public abstract containsVariable(Ljava/lang/String;)Z
.end method

.method public abstract getAOIEntryPoint()Lsfs2x/client/entities/data/Vec3D;
.end method

.method public abstract getId()I
.end method

.method public abstract getVariable(Ljava/lang/String;)Lsfs2x/client/entities/variables/IMMOItemVariable;
.end method

.method public abstract getVariables()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/IMMOItemVariable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setVariable(Lsfs2x/client/entities/variables/IMMOItemVariable;)V
.end method

.method public abstract setVariables(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/IMMOItemVariable;",
            ">;)V"
        }
    .end annotation
.end method
