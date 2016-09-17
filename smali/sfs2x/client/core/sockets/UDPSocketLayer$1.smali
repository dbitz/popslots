.class Lsfs2x/client/core/sockets/UDPSocketLayer$1;
.super Ljava/lang/Object;
.source "UDPSocketLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/core/sockets/UDPSocketLayer;->handleError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

.field private final synthetic val$err:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$1;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    iput-object p2, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$1;->val$err:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$1;->this$0:Lsfs2x/client/core/sockets/UDPSocketLayer;

    iget-object v1, p0, Lsfs2x/client/core/sockets/UDPSocketLayer$1;->val$err:Ljava/lang/String;

    # invokes: Lsfs2x/client/core/sockets/UDPSocketLayer;->handleErrorThread(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lsfs2x/client/core/sockets/UDPSocketLayer;->access$3(Lsfs2x/client/core/sockets/UDPSocketLayer;Ljava/lang/String;)V

    .line 46
    return-void
.end method
