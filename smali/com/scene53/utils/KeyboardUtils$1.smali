.class final Lcom/scene53/utils/KeyboardUtils$1;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/KeyboardUtils;->showKeyboard(Landroid/app/Activity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$show:Z

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$show:Z

    iput-object p2, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 47
    iget-boolean v5, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$show:Z

    if-eqz v5, :cond_2

    .line 48
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 52
    :cond_0
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$a:Landroid/app/Activity;

    const v7, 0x7f080165

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/scene53/utils/KeyboardUtils;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 53
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 54
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 55
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    const v6, 0x7f03006e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 57
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    const v6, 0x102001e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/scene53/utils/TextLinearLayout;

    .line 58
    .local v2, "view":Lcom/scene53/utils/TextLinearLayout;
    new-instance v5, Lcom/scene53/utils/KeyboardUtils$1$1;

    invoke-direct {v5, p0}, Lcom/scene53/utils/KeyboardUtils$1$1;-><init>(Lcom/scene53/utils/KeyboardUtils$1;)V

    invoke-virtual {v2, v5}, Lcom/scene53/utils/TextLinearLayout;->setOnBackPressedListener(Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;)V

    .line 67
    const v5, 0x1020003

    invoke-virtual {v2, v5}, Lcom/scene53/utils/TextLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 68
    .local v1, "e":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 70
    const/16 v5, 0x2021

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 71
    new-instance v5, Lcom/scene53/utils/KeyboardUtils$1$2;

    invoke-direct {v5, p0, v1}, Lcom/scene53/utils/KeyboardUtils$1$2;-><init>(Lcom/scene53/utils/KeyboardUtils$1;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 83
    new-instance v5, Lcom/scene53/utils/KeyboardUtils$1$3;

    invoke-direct {v5, p0}, Lcom/scene53/utils/KeyboardUtils$1$3;-><init>(Lcom/scene53/utils/KeyboardUtils$1;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    const v5, 0x1020019

    invoke-virtual {v2, v5}, Lcom/scene53/utils/TextLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    .local v0, "b":Landroid/widget/Button;
    new-instance v5, Lcom/scene53/utils/KeyboardUtils$1$4;

    invoke-direct {v5, p0, v1}, Lcom/scene53/utils/KeyboardUtils$1$4;-><init>(Lcom/scene53/utils/KeyboardUtils$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    new-instance v6, Lcom/scene53/utils/KeyboardUtils$1$5;

    invoke-direct {v6, p0, v1}, Lcom/scene53/utils/KeyboardUtils$1$5;-><init>(Lcom/scene53/utils/KeyboardUtils$1;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 119
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 121
    .local v4, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x50

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    iget-object v5, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v9, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 125
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 135
    .end local v0    # "b":Landroid/widget/Button;
    .end local v1    # "e":Landroid/widget/EditText;
    .end local v2    # "view":Lcom/scene53/utils/TextLinearLayout;
    .end local v3    # "window":Landroid/view/Window;
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v5, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 128
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_1

    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 130
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 131
    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    iget-object v5, p0, Lcom/scene53/utils/KeyboardUtils$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;
    invoke-static {}, Lcom/scene53/utils/KeyboardUtils;->access$000()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
