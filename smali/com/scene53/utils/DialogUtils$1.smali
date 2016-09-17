.class final Lcom/scene53/utils/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils;->showSimpleAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$btnText:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$1;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/scene53/utils/DialogUtils$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/scene53/utils/DialogUtils$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/scene53/utils/DialogUtils$1;->val$btnText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$1;->val$context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$1;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$1;->val$btnText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    .local v0, "d":Landroid/app/Dialog;
    iget-object v1, p0, Lcom/scene53/utils/DialogUtils$1;->val$context:Landroid/app/Activity;

    # invokes: Lcom/scene53/utils/DialogUtils;->showDialogAndMaintainSticky(Landroid/app/Activity;Landroid/app/Dialog;)V
    invoke-static {v1, v0}, Lcom/scene53/utils/DialogUtils;->access$000(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 53
    return-void
.end method
