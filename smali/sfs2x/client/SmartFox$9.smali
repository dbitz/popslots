.class Lsfs2x/client/SmartFox$9;
.super Ljava/lang/Object;
.source "SmartFox.java"

# interfaces
.implements Lsfs2x/client/core/IEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsfs2x/client/SmartFox;->loadConfig(Ljava/lang/String;Z)V
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
    iput-object p1, p0, Lsfs2x/client/SmartFox$9;->this$0:Lsfs2x/client/SmartFox;

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 1
    .param p1, "evt"    # Lsfs2x/client/core/BaseEvent;

    .prologue
    .line 1161
    iget-object v0, p0, Lsfs2x/client/SmartFox$9;->this$0:Lsfs2x/client/SmartFox;

    # invokes: Lsfs2x/client/SmartFox;->onConfigLoadSuccess(Lsfs2x/client/core/BaseEvent;)V
    invoke-static {v0, p1}, Lsfs2x/client/SmartFox;->access$7(Lsfs2x/client/SmartFox;Lsfs2x/client/core/BaseEvent;)V

    .line 1162
    return-void
.end method
