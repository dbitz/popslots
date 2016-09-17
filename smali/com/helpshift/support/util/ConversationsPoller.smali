.class public Lcom/helpshift/support/util/ConversationsPoller;
.super Ljava/lang/Object;
.source "ConversationsPoller.java"


# instance fields
.field private final conversationsPollerThreadHandler:Landroid/os/Handler;

.field private pollerStarted:Z

.field private final runnableTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/HSApiData;)V
    .locals 7
    .param p1, "interval"    # I
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;
    .param p4, "data"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->pollerStarted:Z

    .line 20
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v0, "ConversationsPoller"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .local v6, "conversationsPollerThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->conversationsPollerThreadHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/helpshift/support/util/ConversationsPoller$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/util/ConversationsPoller$1;-><init>(Lcom/helpshift/support/util/ConversationsPoller;Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->runnableTask:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/util/ConversationsPoller;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/util/ConversationsPoller;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->runnableTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/util/ConversationsPoller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/util/ConversationsPoller;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->conversationsPollerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->conversationsPollerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 52
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->pollerStarted:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->conversationsPollerThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/support/util/ConversationsPoller;->runnableTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->pollerStarted:Z

    .line 41
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->pollerStarted:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->conversationsPollerThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/support/util/ConversationsPoller;->runnableTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/util/ConversationsPoller;->pollerStarted:Z

    .line 48
    :cond_0
    return-void
.end method
