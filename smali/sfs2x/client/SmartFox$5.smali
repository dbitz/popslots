.class Lsfs2x/client/SmartFox$5;
.super Ljava/lang/Object;
.source "SmartFox.java"

# interfaces
.implements Lsfs2x/client/core/IEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/SmartFox;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/SmartFox;


# direct methods
.method constructor <init>(Lsfs2x/client/SmartFox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/SmartFox$5;->this$0:Lsfs2x/client/SmartFox;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 216
    iget-object v0, p0, Lsfs2x/client/SmartFox$5;->this$0:Lsfs2x/client/SmartFox;

    check-cast p1, Lsfs2x/client/bitswarm/BitSwarmEvent;

    .end local p1    # "evt":Lsfs2x/client/core/BaseEvent;
    # invokes: Lsfs2x/client/SmartFox;->onSocketSecurityError(Lsfs2x/client/bitswarm/BitSwarmEvent;)V
    invoke-static {v0, p1}, Lsfs2x/client/SmartFox;->access$4(Lsfs2x/client/SmartFox;Lsfs2x/client/bitswarm/BitSwarmEvent;)V

    .line 217
    return-void
.end method
