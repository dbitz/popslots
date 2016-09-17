.class Lcom/scene53/utils/KeyboardUtils$1$5;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/KeyboardUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/utils/KeyboardUtils$1;

.field final synthetic val$e:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/scene53/utils/KeyboardUtils$1;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/scene53/utils/KeyboardUtils$1$5;->this$0:Lcom/scene53/utils/KeyboardUtils$1;

    iput-object p2, p0, Lcom/scene53/utils/KeyboardUtils$1$5;->val$e:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 113
    iget-object v0, p0, Lcom/scene53/utils/KeyboardUtils$1$5;->this$0:Lcom/scene53/utils/KeyboardUtils$1;

    iget-object v0, v0, Lcom/scene53/utils/KeyboardUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/scene53/utils/KeyboardUtils$1$5;->val$e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 114
    iget-object v0, p0, Lcom/scene53/utils/KeyboardUtils$1$5;->this$0:Lcom/scene53/utils/KeyboardUtils$1;

    iget-object v0, v0, Lcom/scene53/utils/KeyboardUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 115
    const/4 v0, 0x0

    # setter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/scene53/utils/KeyboardUtils;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 116
    return-void
.end method
