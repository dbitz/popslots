.class Lcom/facebook/internal/LikeActionController$9;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController;->refreshStatusViaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 969
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    const-string/jumbo v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 975
    .local v1, "objectIsLiked":Z
    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "likeCountWithLike":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 985
    .local v3, "likeCountWithoutLike":Ljava/lang/String;
    :goto_2
    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 990
    .local v4, "socialSentenceWithLike":Ljava/lang/String;
    :goto_3
    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, "socialSentenceWithoutLike":Ljava/lang/String;
    :goto_4
    const-string/jumbo v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1000
    .local v6, "unlikeToken":Ljava/lang/String;
    :goto_5
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    # invokes: Lcom/facebook/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/facebook/internal/LikeActionController;->access$1500(Lcom/facebook/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 975
    .end local v2    # "likeCountWithLike":Ljava/lang/String;
    .end local v3    # "likeCountWithoutLike":Ljava/lang/String;
    .end local v4    # "socialSentenceWithLike":Ljava/lang/String;
    .end local v5    # "socialSentenceWithoutLike":Ljava/lang/String;
    .end local v6    # "unlikeToken":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 980
    .restart local v2    # "likeCountWithLike":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1000(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 985
    .restart local v3    # "likeCountWithoutLike":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1100(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 990
    .restart local v4    # "socialSentenceWithLike":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1200(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 995
    .restart local v5    # "socialSentenceWithoutLike":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$9;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1300(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method
