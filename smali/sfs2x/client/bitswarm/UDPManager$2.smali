.class Lsfs2x/client/bitswarm/UDPManager$2;
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
    iput-object p1, p0, Lsfs2x/client/bitswarm/UDPManager$2;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 3
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lsfs2x/client/bitswarm/UDPManager$2;->this$0:Lsfs2x/client/bitswarm/UDPManager;

    invoke-virtual {p1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "message"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lsfs2x/client/bitswarm/UDPManager;->onUDPError(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lsfs2x/client/bitswarm/UDPManager;->access$1(Lsfs2x/client/bitswarm/UDPManager;Ljava/lang/String;)V

    .line 85
    return-void
.end method
