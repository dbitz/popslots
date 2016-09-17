.class public Lcom/scene53/utils/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# static fields
.field private static d:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 28
    sput-object p0, Lcom/scene53/utils/KeyboardUtils;->d:Landroid/app/Dialog;

    return-object p0
.end method

.method public static native onDonePressed(Ljava/lang/String;)V
.end method

.method public static native setText(Ljava/lang/String;)V
.end method

.method public static showKeyboard(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "show"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v1, Lcom/scene53/utils/KeyboardUtils$1;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/scene53/utils/KeyboardUtils$1;-><init>(ZLandroid/app/Activity;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
