.class Lcom/helpshift/util/concurrent/DispatchQueue$1;
.super Ljava/lang/Object;
.source "DispatchQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/util/concurrent/DispatchQueue;->dispatchAfter(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/util/concurrent/DispatchQueue;

.field final synthetic val$interval:J

.field final synthetic val$queue:Lcom/helpshift/util/concurrent/DispatchQueue;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/helpshift/util/concurrent/DispatchQueue;JLcom/helpshift/util/concurrent/DispatchQueue;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/util/concurrent/DispatchQueue;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->this$0:Lcom/helpshift/util/concurrent/DispatchQueue;

    iput-wide p2, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->val$interval:J

    iput-object p4, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->val$queue:Lcom/helpshift/util/concurrent/DispatchQueue;

    iput-object p5, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-wide v2, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->val$interval:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 63
    iget-object v1, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->val$queue:Lcom/helpshift/util/concurrent/DispatchQueue;

    iget-object v2, p0, Lcom/helpshift/util/concurrent/DispatchQueue$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/helpshift/util/concurrent/DispatchQueue;->dispatchAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "HelpshiftDebug"

    const-string/jumbo v2, "Runnable interrupted : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
