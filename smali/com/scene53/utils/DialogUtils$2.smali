.class final Lcom/scene53/utils/DialogUtils$2;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils;->showInteractiveAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IJ[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$btnTexts:[Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$listenerPtr:J

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$numButtons:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/scene53/utils/DialogUtils$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/scene53/utils/DialogUtils$2;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/scene53/utils/DialogUtils$2;->val$numButtons:I

    iput-object p5, p0, Lcom/scene53/utils/DialogUtils$2;->val$btnTexts:[Ljava/lang/String;

    iput-wide p6, p0, Lcom/scene53/utils/DialogUtils$2;->val$listenerPtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/scene53/utils/DialogUtils$2;->val$context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/scene53/utils/DialogUtils$2;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/scene53/utils/DialogUtils$2;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/scene53/utils/DialogUtils$2;->val$numButtons:I

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 93
    .local v1, "d":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$2;->val$context:Landroid/app/Activity;

    # invokes: Lcom/scene53/utils/DialogUtils;->showDialogAndMaintainSticky(Landroid/app/Activity;Landroid/app/Dialog;)V
    invoke-static {v2, v1}, Lcom/scene53/utils/DialogUtils;->access$000(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 94
    return-void

    .line 68
    .end local v1    # "d":Landroid/app/Dialog;
    :pswitch_0
    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$2;->val$btnTexts:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    new-instance v3, Lcom/scene53/utils/DialogUtils$2$1;

    invoke-direct {v3, p0}, Lcom/scene53/utils/DialogUtils$2$1;-><init>(Lcom/scene53/utils/DialogUtils$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    :pswitch_1
    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$2;->val$btnTexts:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Lcom/scene53/utils/DialogUtils$2$2;

    invoke-direct {v3, p0}, Lcom/scene53/utils/DialogUtils$2$2;-><init>(Lcom/scene53/utils/DialogUtils$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    :pswitch_2
    iget-object v2, p0, Lcom/scene53/utils/DialogUtils$2;->val$btnTexts:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-instance v3, Lcom/scene53/utils/DialogUtils$2$3;

    invoke-direct {v3, p0}, Lcom/scene53/utils/DialogUtils$2$3;-><init>(Lcom/scene53/utils/DialogUtils$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
