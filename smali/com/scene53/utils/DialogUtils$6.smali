.class final Lcom/scene53/utils/DialogUtils$6;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils;->showDisconnectedPopup(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$6;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->dismissDisconnectDialog()V

    .line 162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/scene53/utils/DialogUtils$6;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d1

    new-instance v2, Lcom/scene53/utils/DialogUtils$6$1;

    invoke-direct {v2, p0}, Lcom/scene53/utils/DialogUtils$6$1;-><init>(Lcom/scene53/utils/DialogUtils$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/scene53/utils/DialogUtils;->access$202(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 171
    iget-object v0, p0, Lcom/scene53/utils/DialogUtils$6;->val$context:Landroid/app/Activity;

    # getter for: Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->access$200()Landroid/app/Dialog;

    move-result-object v1

    # invokes: Lcom/scene53/utils/DialogUtils;->showDialogAndMaintainSticky(Landroid/app/Activity;Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/scene53/utils/DialogUtils;->access$000(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 172
    return-void
.end method
