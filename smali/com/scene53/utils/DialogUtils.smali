.class public Lcom/scene53/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field private static d:Landroid/app/Dialog;

.field private static progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/scene53/utils/DialogUtils;->showDialogAndMaintainSticky(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$100()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 14
    sput-object p0, Lcom/scene53/utils/DialogUtils;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 14
    sput-object p0, Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;

    return-object p0
.end method

.method public static dismissDisconnectDialog()V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/scene53/utils/DialogUtils;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 212
    :cond_0
    return-void
.end method

.method public static dismissPleaseWait(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 114
    new-instance v0, Lcom/scene53/utils/DialogUtils$4;

    invoke-direct {v0}, Lcom/scene53/utils/DialogUtils$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public static native onDialogButtonClicked(JI)V
.end method

.method public static native onDisconnectDialogButtonClicked()V
.end method

.method public static native onInactiveDialogButtonClicked()V
.end method

.method public static native onUpdateDialogButtonClicked(I)V
.end method

.method public static showCommunicationErrorPopup(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "errCode"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/scene53/utils/DialogUtils$8;

    invoke-direct {v0, p0, p1}, Lcom/scene53/utils/DialogUtils$8;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method private static showDialogAndMaintainSticky(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/16 v2, 0x8

    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 37
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 43
    return-void
.end method

.method public static showDisconnectedPopup(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 158
    new-instance v0, Lcom/scene53/utils/DialogUtils$6;

    invoke-direct {v0, p0}, Lcom/scene53/utils/DialogUtils$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public static showInactivePopup(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 177
    new-instance v0, Lcom/scene53/utils/DialogUtils$7;

    invoke-direct {v0, p0}, Lcom/scene53/utils/DialogUtils$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public static showInteractiveAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IJ[Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "numButtons"    # I
    .param p4, "listenerPtr"    # J
    .param p6, "btnTexts"    # [Ljava/lang/String;

    .prologue
    .line 60
    const-string/jumbo v0, "Scene53"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alert::DialogUtils::showInteractiveAlert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/scene53/utils/DialogUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/scene53/utils/DialogUtils$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public static showPleaseWait(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/scene53/utils/DialogUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/scene53/utils/DialogUtils$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public static showSimpleAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "btnText"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcom/scene53/utils/DialogUtils$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/scene53/utils/DialogUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public static showUpdateAlert(Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 127
    const-string/jumbo v0, "Scene53"

    const-string/jumbo v1, "Alert::DialogUtils::showUpdateAlert"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/scene53/utils/DialogUtils$5;

    invoke-direct {v0, p0}, Lcom/scene53/utils/DialogUtils$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
