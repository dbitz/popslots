.class Lcom/scene53/Scene53NativeActivity$7;
.super Ljava/lang/Object;
.source "Scene53NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/Scene53NativeActivity;->queryProducts([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/Scene53NativeActivity;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/scene53/Scene53NativeActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/scene53/Scene53NativeActivity$7;->this$0:Lcom/scene53/Scene53NativeActivity;

    iput-object p2, p0, Lcom/scene53/Scene53NativeActivity$7;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/scene53/Scene53NativeActivity$7;->this$0:Lcom/scene53/Scene53NativeActivity;

    # getter for: Lcom/scene53/Scene53NativeActivity;->mHelper:Lcom/scene53/utils/purchase/IabHelper;
    invoke-static {v0}, Lcom/scene53/Scene53NativeActivity;->access$000(Lcom/scene53/Scene53NativeActivity;)Lcom/scene53/utils/purchase/IabHelper;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/scene53/Scene53NativeActivity$7;->val$list:Ljava/util/ArrayList;

    new-instance v3, Lcom/scene53/Scene53NativeActivity$7$1;

    invoke-direct {v3, p0}, Lcom/scene53/Scene53NativeActivity$7$1;-><init>(Lcom/scene53/Scene53NativeActivity$7;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/scene53/utils/purchase/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/scene53/utils/purchase/IabHelper$QueryInventoryFinishedListener;)V

    .line 759
    return-void
.end method
