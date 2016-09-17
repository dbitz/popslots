.class final Lcom/scene53/utils/DialogUtils$4;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils;->dismissPleaseWait(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    # getter for: Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->access$100()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    # getter for: Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->access$100()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    const/4 v0, 0x0

    # setter for: Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/scene53/utils/DialogUtils;->access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 122
    :cond_0
    return-void
.end method
