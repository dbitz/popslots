.class public final Lcom/helpshift/support/HSReviewFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HSReviewFragment.java"


# static fields
.field private static alertToRateAppListener:Lcom/helpshift/support/AlertToRateAppListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private data:Lcom/helpshift/support/HSApiData;

.field private disableReview:Z

.field private rurl:Ljava/lang/String;

.field private storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 25
    const-string/jumbo v0, "HelpshiftDebug"

    iput-object v0, p0, Lcom/helpshift/support/HSReviewFragment;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/HSReviewFragment;->disableReview:Z

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/HSReviewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSReviewFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/helpshift/support/HSReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSReviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/helpshift/support/HSReviewFragment;)Lcom/helpshift/support/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSReviewFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/helpshift/support/HSReviewFragment;->storage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/HSReviewFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSReviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSReviewFragment;->gotoApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/support/HSReviewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSReviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V

    return-void
.end method

.method private gotoApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 81
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    sget v2, Lcom/helpshift/support/D$string;->hs__review_message:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 84
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    sget v2, Lcom/helpshift/support/D$string;->hs__review_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setTitle(I)V

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    const/4 v2, -0x1

    .line 88
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/support/D$string;->hs__rate_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpshift/support/HSReviewFragment$1;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSReviewFragment$1;-><init>(Lcom/helpshift/support/HSReviewFragment;)V

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    const/4 v2, -0x3

    .line 110
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/support/D$string;->hs__feedback_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpshift/support/HSReviewFragment$2;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSReviewFragment$2;-><init>(Lcom/helpshift/support/HSReviewFragment;)V

    .line 109
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    const/4 v2, -0x2

    .line 132
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/support/D$string;->hs__review_close_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpshift/support/HSReviewFragment$3;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSReviewFragment$3;-><init>(Lcom/helpshift/support/HSReviewFragment;)V

    .line 131
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    return-object v1
.end method

.method private sendAlertToRateAppAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/helpshift/support/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/support/AlertToRateAppListener;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/helpshift/support/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/support/AlertToRateAppListener;

    invoke-interface {v0, p1}, Lcom/helpshift/support/AlertToRateAppListener;->onAction(I)V

    .line 77
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/support/AlertToRateAppListener;

    .line 78
    return-void
.end method

.method protected static setAlertToRateAppListener(Lcom/helpshift/support/AlertToRateAppListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/helpshift/support/AlertToRateAppListener;

    .prologue
    .line 32
    sput-object p0, Lcom/helpshift/support/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/support/AlertToRateAppListener;

    .line 33
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
    const-string/jumbo v0, "later"

    invoke-static {v0}, Lcom/helpshift/support/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V

    .line 62
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 39
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v2, "disableReview"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/helpshift/support/HSReviewFragment;->disableReview:Z

    .line 41
    const-string/jumbo v2, "rurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    .line 43
    :cond_0
    new-instance v2, Lcom/helpshift/support/HSApiData;

    invoke-direct {v2, v0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/helpshift/support/HSReviewFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 44
    iget-object v2, p0, Lcom/helpshift/support/HSReviewFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v2, v2, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v2, p0, Lcom/helpshift/support/HSReviewFragment;->storage:Lcom/helpshift/support/HSStorage;

    .line 45
    invoke-direct {p0, v0}, Lcom/helpshift/support/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 67
    iget-boolean v0, p0, Lcom/helpshift/support/HSReviewFragment;->disableReview:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/helpshift/support/HSReviewFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->disableReview()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 71
    return-void
.end method
