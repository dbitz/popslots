.class Lsfs2x/client/SmartFox$7;
.super Ljava/lang/Object;
.source "SmartFox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/SmartFox;->connect(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/SmartFox;

.field private final synthetic val$theHost:Ljava/lang/String;

.field private final synthetic val$thePort:I


# direct methods
.method constructor <init>(Lsfs2x/client/SmartFox;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsfs2x/client/SmartFox$7;->this$0:Lsfs2x/client/SmartFox;

    iput-object p2, p0, Lsfs2x/client/SmartFox$7;->val$theHost:Ljava/lang/String;

    iput p3, p0, Lsfs2x/client/SmartFox$7;->val$thePort:I

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lsfs2x/client/SmartFox$7;->this$0:Lsfs2x/client/SmartFox;

    # getter for: Lsfs2x/client/SmartFox;->bitSwarm:Lsfs2x/client/bitswarm/BitSwarmClient;
    invoke-static {v0}, Lsfs2x/client/SmartFox;->access$6(Lsfs2x/client/SmartFox;)Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/SmartFox$7;->val$theHost:Ljava/lang/String;

    iget v2, p0, Lsfs2x/client/SmartFox$7;->val$thePort:I

    invoke-virtual {v0, v1, v2}, Lsfs2x/client/bitswarm/BitSwarmClient;->connect(Ljava/lang/String;I)V

    .line 572
    return-void
.end method
