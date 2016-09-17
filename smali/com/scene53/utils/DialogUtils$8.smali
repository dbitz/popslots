.class final Lcom/scene53/utils/DialogUtils$8;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils;->showCommunicationErrorPopup(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$errCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$8;->val$context:Landroid/app/Activity;

    iput p2, p0, Lcom/scene53/utils/DialogUtils$8;->val$errCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->dismissDisconnectDialog()V

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/scene53/utils/DialogUtils$8;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/utils/DialogUtils$8;->val$context:Landroid/app/Activity;

    const v2, 0x7f0c00d6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/scene53/utils/DialogUtils$8;->val$errCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d7

    new-instance v2, Lcom/scene53/utils/DialogUtils$8$1;

    invoke-direct {v2, p0}, Lcom/scene53/utils/DialogUtils$8$1;-><init>(Lcom/scene53/utils/DialogUtils$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/scene53/utils/DialogUtils;->access$202(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 203
    iget-object v0, p0, Lcom/scene53/utils/DialogUtils$8;->val$context:Landroid/app/Activity;

    # getter for: Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->access$200()Landroid/app/Dialog;

    move-result-object v1

    # invokes: Lcom/scene53/utils/DialogUtils;->showDialogAndMaintainSticky(Landroid/app/Activity;Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/scene53/utils/DialogUtils;->access$000(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 204
    return-void
.end method
