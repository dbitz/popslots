.class Lsfs2x/client/SmartFox$8;
.super Ljava/util/TimerTask;
.source "SmartFox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/SmartFox;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/SmartFox;

.field private final synthetic val$delayedAction:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lsfs2x/client/SmartFox;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/SmartFox$8;->this$0:Lsfs2x/client/SmartFox;

    iput-object p2, p0, Lsfs2x/client/SmartFox$8;->val$delayedAction:Ljava/util/Timer;

    .line 624
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lsfs2x/client/SmartFox$8;->this$0:Lsfs2x/client/SmartFox;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Lsfs2x/client/SmartFox;->handleClientDisconnection(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lsfs2x/client/SmartFox$8;->val$delayedAction:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 631
    return-void
.end method
