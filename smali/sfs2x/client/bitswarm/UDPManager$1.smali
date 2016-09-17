.class Lsfs2x/client/bitswarm/UDPManager$1;
.super Ljava/lang/Object;
.source "UDPManager.java"

# interfaces
.implements Lsfs2x/client/core/IEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/bitswarm/UDPManager;->initialize(Ljava/lang/String;I)V
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
    iput-object p1, p0, Lsfs2x/client/bitswarm/UDPManager$1;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 4
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager$1;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    new-instance v2, Lsfs2x/client/util/ByteArray;

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "data"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Lsfs2x/client/util/ByteArray;-><init>([B)V

    # invokes: Lsfs2x/client/bitswarm/UDPManager;->onUDPData(Lsfs2x/client/util/ByteArray;)V
    invoke-static {v1, v2}, Lsfs2x/client/bitswarm/UDPManager;->access$0(Lsfs2x/client/bitswarm/UDPManager;Lsfs2x/client/util/ByteArray;)V

    .line 75
    return-void
.end method
