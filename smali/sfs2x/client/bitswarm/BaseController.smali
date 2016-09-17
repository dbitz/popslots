.class public Lsfs2x/client/bitswarm/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Lsfs2x/client/bitswarm/IController;


# instance fields
.field protected id:S

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput-short v0, p0, Lsfs2x/client/bitswarm/BaseController;->id:S

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/bitswarm/BaseController;->log:Lorg/slf4j/Logger;

    .line 12
    return-void
.end method


# virtual methods
.method public getId()S
    .locals 1

    .prologue
    .line 15
    iget-short v0, p0, Lsfs2x/client/bitswarm/BaseController;->id:S

    return v0
.end method

.method public handleMessage(Lsfs2x/client/bitswarm/IMessage;)V
    .locals 3
    .param p1, "message"    # Lsfs2x/client/bitswarm/IMessage;

    .prologue
    .line 28
    iget-object v0, p0, Lsfs2x/client/bitswarm/BaseController;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "System controller got request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public setId(S)V
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 19
    iget-short v0, p0, Lsfs2x/client/bitswarm/BaseController;->id:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 20
    iput-short p1, p0, Lsfs2x/client/bitswarm/BaseController;->id:S

    .line 25
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Controller ID is already set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lsfs2x/client/bitswarm/BaseController;->id:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Can\'t be changed at runtime!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
