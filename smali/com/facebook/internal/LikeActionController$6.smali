.class Lcom/facebook/internal/LikeActionController$6;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    .line 828
    iget-object v3, p0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/LikeActionController;->access$1900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 831
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string/jumbo v4, "Invalid Object Id"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v3, p0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string/jumbo v4, "com.facebook.sdk.LikeActionController.DID_ERROR"

    # invokes: Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v4, v0}, Lcom/facebook/internal/LikeActionController;->access$1800(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 865
    .end local v0    # "errorBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 838
    :cond_0
    new-instance v2, Lcom/facebook/RequestBatch;

    invoke-direct {v2}, Lcom/facebook/RequestBatch;-><init>()V

    .line 839
    .local v2, "requestBatch":Lcom/facebook/RequestBatch;
    new-instance v1, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v3, p0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/LikeActionController;->access$1900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 840
    .local v1, "likeRequest":Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;
    invoke-virtual {v1, v2}, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;->addToBatch(Lcom/facebook/RequestBatch;)V

    .line 841
    new-instance v3, Lcom/facebook/internal/LikeActionController$6$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/internal/LikeActionController$6$1;-><init>(Lcom/facebook/internal/LikeActionController$6;Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;)V

    invoke-virtual {v2, v3}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 864
    invoke-virtual {v2}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0
.end method
