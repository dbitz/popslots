.class final Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;
.super Ljava/lang/Object;
.source "BBClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/bitswarm/bbox/BBClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PollRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/bitswarm/bbox/BBClient;


# direct methods
.method private constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsfs2x/client/bitswarm/bbox/BBClient;Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;-><init>(Lsfs2x/client/bitswarm/bbox/BBClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lsfs2x/client/bitswarm/bbox/BBClient$PollRunner;->this$0:Lsfs2x/client/bitswarm/bbox/BBClient;

    # invokes: Lsfs2x/client/bitswarm/bbox/BBClient;->poll()V
    invoke-static {v0}, Lsfs2x/client/bitswarm/bbox/BBClient;->access$0(Lsfs2x/client/bitswarm/bbox/BBClient;)V

    .line 125
    return-void
.end method
