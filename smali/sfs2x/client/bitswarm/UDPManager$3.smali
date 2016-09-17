.class Lsfs2x/client/bitswarm/UDPManager$3;
.super Ljava/lang/Object;
.source "UDPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/bitswarm/UDPManager;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/bitswarm/UDPManager;


# direct methods
.method constructor <init>(Lsfs2x/client/bitswarm/UDPManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/bitswarm/UDPManager$3;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager$3;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    # invokes: Lsfs2x/client/bitswarm/UDPManager;->onTimeout()V
    invoke-static {v1}, Lsfs2x/client/bitswarm/UDPManager;->access$2(Lsfs2x/client/bitswarm/UDPManager;)V
    :try_end_0
    .catch Lcom/smartfoxserver/v2/exceptions/SFSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "err":Lcom/smartfoxserver/v2/exceptions/SFSException;
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager$3;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    # getter for: Lsfs2x/client/bitswarm/UDPManager;->log:Lorg/slf4j/Logger;
    invoke-static {v1}, Lsfs2x/client/bitswarm/UDPManager;->access$3(Lsfs2x/client/bitswarm/UDPManager;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/exceptions/SFSException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
