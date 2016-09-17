.class final Lcom/scene53/utils/DialogUtils$3;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils;->showPleaseWait(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$3;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/scene53/utils/DialogUtils$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    # getter for: Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->access$100()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    # getter for: Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->access$100()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/scene53/utils/DialogUtils$3;->val$context:Landroid/app/Activity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$3;->val$message:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    # setter for: Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/scene53/utils/DialogUtils;->access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 109
    return-void
.end method
