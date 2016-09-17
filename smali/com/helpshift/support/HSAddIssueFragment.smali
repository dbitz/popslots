.class public Lcom/helpshift/support/HSAddIssueFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "HSAddIssueFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private clearBtn:Landroid/widget/ImageButton;

.field private desc:Landroid/widget/TextView;

.field private email:Ljava/lang/String;

.field private emailField:Landroid/widget/EditText;

.field public existsHandler:Landroid/os/Handler;

.field private extras:Landroid/os/Bundle;

.field private failureHandler:Landroid/os/Handler;

.field private getLatestIssuesHandler:Landroid/os/Handler;

.field private helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

.field private hsApiClient:Lcom/helpshift/support/HSApiClient;

.field private hsApiData:Lcom/helpshift/support/HSApiData;

.field private hsStorage:Lcom/helpshift/support/HSStorage;

.field private isChangingConfiguration:Z

.field private issueId:Ljava/lang/String;

.field private msgData:Lcom/helpshift/support/viewstructs/HSMsg;

.field private newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field public reportHandler:Landroid/os/Handler;

.field private requireEmail:Ljava/lang/Boolean;

.field private screenshot:Landroid/widget/ImageView;

.field private screenshotContainer:Landroid/support/v7/widget/CardView;

.field private screenshotFileName:Landroid/widget/TextView;

.field private screenshotFileSize:Landroid/widget/TextView;

.field private screenshotPath:Ljava/lang/String;

.field private searchActivityShown:Z

.field private selectImage:Z

.field private selectingScreenshot:Z

.field private sendAnyway:Z

.field private showAttachScreenshotMenu:Z

.field private showStartNewConversationMenu:Z

.field private uploadFailHandler:Landroid/os/Handler;

.field private uploadSuccessHandler:Landroid/os/Handler;

.field private userName:Ljava/lang/String;

.field private userNameField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->sendAnyway:Z

    .line 77
    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->searchActivityShown:Z

    .line 80
    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->selectingScreenshot:Z

    .line 81
    iput-boolean v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->showAttachScreenshotMenu:Z

    .line 82
    iput-boolean v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->showStartNewConversationMenu:Z

    .line 85
    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->isChangingConfiguration:Z

    .line 120
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment$1;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment$2;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->reportHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment$3;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment$3;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->getLatestIssuesHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment$4;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment$4;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->uploadSuccessHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment$5;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment$5;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->uploadFailHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment$6;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment$6;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->existsHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/HSAddIssueFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSAddIssueFragment;->setIsReportingIssue(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->uploadFailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/helpshift/support/HSAddIssueFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment;->issueId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/HSApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiClient:Lcom/helpshift/support/HSApiClient;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/helpshift/support/HSAddIssueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->handleExit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/SupportInternal$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->getLatestIssuesHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getUserInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/contracts/NewConversationListener;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/support/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/helpshift/support/HSAddIssueFragment;)Lcom/helpshift/support/viewstructs/HSMsg;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->msgData:Lcom/helpshift/support/viewstructs/HSMsg;

    return-object v0
.end method

.method static synthetic access$802(Lcom/helpshift/support/HSAddIssueFragment;Lcom/helpshift/support/viewstructs/HSMsg;)Lcom/helpshift/support/viewstructs/HSMsg;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;
    .param p1, "x1"    # Lcom/helpshift/support/viewstructs/HSMsg;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment;->msgData:Lcom/helpshift/support/viewstructs/HSMsg;

    return-object p1
.end method

.method static synthetic access$900(Lcom/helpshift/support/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSAddIssueFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->uploadSuccessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getIssueText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "issueText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    sget-object v1, Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;->KEYWORD_SEARCH:Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/support/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getUserInfo()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "data":Ljava/util/HashMap;
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-static {v1}, Lcom/helpshift/support/util/IdentityFilter;->sendNameEmail(Lcom/helpshift/support/HSStorage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "data":Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .restart local v0    # "data":Ljava/util/HashMap;
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    return-object v0
.end method

.method private handleExit()V
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    sget-object v2, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v3, "dia"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 135
    .local v0, "dia":Z
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showConvOnReportIssue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "showConversationOnReportIssue":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 137
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v2}, Lcom/helpshift/support/contracts/NewConversationListener;->showConversationOnReportIssue()V

    .line 142
    .end local v0    # "dia":Z
    .end local v1    # "showConversationOnReportIssue":Z
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0    # "dia":Z
    .restart local v1    # "showConversationOnReportIssue":Z
    :cond_1
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v2}, Lcom/helpshift/support/contracts/NewConversationListener;->exitSdkSession()V

    goto :goto_0
.end method

.method private isFormValid()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 521
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 523
    .local v4, "validForm":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "issueText":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-static {v5}, Lcom/helpshift/support/util/IdentityFilter;->showNameEmailForm(Lcom/helpshift/support/HSApiData;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 526
    .local v1, "isNameEmailFormShown":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 527
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    .line 528
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    .line 534
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 535
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    sget v6, Lcom/helpshift/support/D$string;->hs__conversation_detail_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 536
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 549
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    .line 550
    invoke-static {v5}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    :cond_2
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    sget v6, Lcom/helpshift/support/D$string;->hs__username_blank_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 552
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 555
    :cond_3
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->requireEmail:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    .line 556
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    .line 557
    invoke-static {v5}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 558
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    sget v6, Lcom/helpshift/support/D$string;->hs__invalid_email_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 559
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 566
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 530
    :cond_5
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getUsername()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    .line 531
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    goto :goto_0

    .line 538
    :cond_6
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 539
    .local v3, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/helpshift/R$integer;->hs__issue_description_min_chars:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 540
    .local v0, "descriptionMinLength":I
    const-string/jumbo v5, "\\s+"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v0, :cond_7

    .line 541
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    sget v6, Lcom/helpshift/R$string;->hs__description_invalid_length_error:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 542
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 543
    :cond_7
    invoke-static {v2}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    sget v6, Lcom/helpshift/support/D$string;->hs__invalid_description_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 545
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 560
    .end local v0    # "descriptionMinLength":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_8
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    .line 561
    invoke-static {v5}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 562
    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    sget v6, Lcom/helpshift/support/D$string;->hs__invalid_email_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 563
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2
.end method

.method private isSearchOnNewConversationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_performed"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 450
    .local v0, "searchPerformed":Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    .line 451
    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getShowSearchOnNewConversation()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/NewConversationListener;)Lcom/helpshift/support/HSAddIssueFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "listener"    # Lcom/helpshift/support/contracts/NewConversationListener;

    .prologue
    .line 88
    new-instance v0, Lcom/helpshift/support/HSAddIssueFragment;

    invoke-direct {v0}, Lcom/helpshift/support/HSAddIssueFragment;-><init>()V

    .line 89
    .local v0, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/HSAddIssueFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iput-object p1, v0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    .line 91
    return-object v0
.end method

.method private saveScreenshot(Ljava/lang/String;)V
    .locals 2
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/support/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void
.end method

.method private setIsReportingIssue(Z)V
    .locals 4
    .param p1, "isReportingIssue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    if-nez p1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->showStartNewConversationMenu:Z

    .line 471
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 472
    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 475
    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 478
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    .line 479
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 480
    :cond_2
    iput-boolean v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->showAttachScreenshotMenu:Z

    .line 484
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    if-eqz v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/NewConversationListener;->reportingIssue()V

    .line 488
    :cond_4
    if-eqz p1, :cond_9

    .line 489
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 494
    :goto_4
    return-void

    :cond_5
    move v0, v2

    .line 469
    goto :goto_0

    :cond_6
    move v0, v2

    .line 472
    goto :goto_1

    :cond_7
    move v0, v2

    .line 475
    goto :goto_2

    .line 481
    :cond_8
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 482
    iput-boolean v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->showAttachScreenshotMenu:Z

    goto :goto_3

    .line 491
    :cond_9
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public checkAndStartNewConversation()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->isFormValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->isSearchOnNewConversationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSAddIssueFragment;->getSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, "questions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v1, v0}, Lcom/helpshift/support/contracts/NewConversationListener;->showSearchResultFragment(Ljava/util/ArrayList;)V

    .line 113
    .end local v0    # "questions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->startNewConversation()V

    goto :goto_0
.end method

.method public clearScreenshot()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 236
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotContainer:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->showAttachScreenshotMenu:Z

    .line 242
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/NewConversationListener;->clear()V

    .line 243
    return-void
.end method

.method public isShowAttachScreenshotMenu()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->showAttachScreenshotMenu:Z

    return v0
.end method

.method public isShowStartNewConversationMenu()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->showStartNewConversationMenu:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    .line 98
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    .line 99
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiClient:Lcom/helpshift/support/HSApiClient;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    .line 315
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    .line 317
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->isSearchOnNewConversationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$7;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$7;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-static {v0}, Lcom/helpshift/support/util/IdentityFilter;->requireEmailFromUI(Lcom/helpshift/support/HSStorage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->requireEmail:Ljava/lang/Boolean;

    .line 329
    iput-boolean v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->searchActivityShown:Z

    .line 330
    sget v0, Lcom/helpshift/support/D$layout;->hs__new_conversation_fragment:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onDestroy()V

    .line 308
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/util/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 288
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onPause()V

    .line 290
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getConversationPrefillText()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "prefillText":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "activeConversation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/support/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSAddIssueFragment;->saveScreenshot(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/helpshift/support/util/InputUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 302
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/helpshift/support/HSAddIssueFragment;->setIsReportingIssue(Z)V

    .line 303
    return-void

    .line 295
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "dropMeta"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/helpshift/support/util/Meta;->setMetadataCallback(Lcom/helpshift/support/Callable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 585
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 586
    const-string/jumbo v4, "issue-filing"

    invoke-static {v4}, Lcom/helpshift/util/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 587
    iget-boolean v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->sendAnyway:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->isChangingConfiguration:Z

    if-nez v4, :cond_0

    .line 588
    const-string/jumbo v4, "i"

    invoke-static {v4}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 591
    :cond_0
    const-string/jumbo v0, ""

    .line 592
    .local v0, "initText":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->getConversationDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "storedText":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getConversationPrefillText()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "prefillText":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 596
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "input":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .end local v1    # "input":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->selectingScreenshot:Z

    if-nez v4, :cond_2

    .line 607
    iget-boolean v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->searchActivityShown:Z

    if-eqz v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :goto_0
    iput-boolean v6, p0, Lcom/helpshift/support/HSAddIssueFragment;->selectingScreenshot:Z

    .line 619
    :cond_2
    iput-boolean v6, p0, Lcom/helpshift/support/HSAddIssueFragment;->sendAnyway:Z

    .line 620
    iput-boolean v6, p0, Lcom/helpshift/support/HSAddIssueFragment;->searchActivityShown:Z

    .line 621
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 622
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->getConversationScreenshot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/helpshift/support/HSAddIssueFragment;->setScreenshot(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/helpshift/support/util/InputUtil;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 624
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v4}, Lcom/helpshift/support/contracts/NewConversationListener;->reloadMenu()V

    .line 625
    sget v4, Lcom/helpshift/R$string;->hs__new_conversation_header:I

    invoke-virtual {p0, v4}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/helpshift/support/HSAddIssueFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 626
    return-void

    .line 609
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 610
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 611
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 612
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_5
    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 571
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 572
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->isChangingConfiguration:Z

    .line 573
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->addVisibleFragment()V

    .line 574
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 578
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 579
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->removeVisibleFragment()V

    .line 580
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSAddIssueFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 336
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 338
    sget v0, Lcom/helpshift/support/D$id;->hs__conversationDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$8;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$8;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$9;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$9;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    sget v0, Lcom/helpshift/support/D$id;->hs__username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    .line 374
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$10;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$10;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 389
    sget v0, Lcom/helpshift/support/D$id;->hs__email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    .line 390
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$11;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$11;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 405
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->requireEmail:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/support/D$string;->hs__email_required_hint:I

    invoke-virtual {p0, v1}, Lcom/helpshift/support/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-static {v0}, Lcom/helpshift/support/util/IdentityFilter;->sendNameEmail(Lcom/helpshift/support/HSStorage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "Anonymous"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-static {v0}, Lcom/helpshift/support/util/IdentityFilter;->showNameEmailForm(Lcom/helpshift/support/HSApiData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 421
    :goto_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 423
    sget v0, Lcom/helpshift/R$id;->screenshot_view_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotContainer:Landroid/support/v7/widget/CardView;

    .line 425
    sget v0, Lcom/helpshift/support/D$id;->hs__screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    .line 426
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$12;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$12;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    sget v0, Lcom/helpshift/R$id;->attachment_file_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotFileName:Landroid/widget/TextView;

    .line 434
    sget v0, Lcom/helpshift/R$id;->attachment_file_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotFileSize:Landroid/widget/TextView;

    .line 436
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    .line 437
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/support/HSAddIssueFragment$13;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSAddIssueFragment$13;-><init>(Lcom/helpshift/support/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    sget v0, Lcom/helpshift/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 446
    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setScreenshot(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 503
    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 504
    .local v0, "screenshotBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 505
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotFileName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/helpshift/support/util/AttachmentUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotFileSize:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/helpshift/support/util/AttachmentUtil;->getFileSizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 510
    iput-object p1, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->screenshotContainer:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 512
    iput-boolean v3, p0, Lcom/helpshift/support/HSAddIssueFragment;->showAttachScreenshotMenu:Z

    .line 515
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSAddIssueFragment;->saveScreenshot(Ljava/lang/String;)V

    .line 518
    :cond_1
    return-void
.end method

.method public startNewConversation()V
    .locals 7

    .prologue
    .line 456
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/helpshift/support/HSAddIssueFragment;->setIsReportingIssue(Z)V

    .line 457
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->reportHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    .line 458
    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/helpshift/support/HSAddIssueFragment;->getUserInfo()Ljava/util/HashMap;

    move-result-object v4

    .line 457
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/support/HSApiData;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/helpshift/exceptions/IdentityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v6

    .line 460
    .local v6, "e":Lcom/helpshift/exceptions/IdentityException;
    iget-object v0, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v1, p0, Lcom/helpshift/support/HSAddIssueFragment;->existsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/support/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/support/HSAddIssueFragment;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/support/HSAddIssueFragment;->email:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/support/HSAddIssueFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    .line 464
    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/support/HSApiData;->registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
