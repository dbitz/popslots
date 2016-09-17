.class public Lcom/helpshift/support/fragments/NewConversationFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "NewConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;,
        Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;,
        Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;,
        Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;,
        Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;,
        Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;,
        Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private createIssueFailureHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

.field private createIssueSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;

.field private data:Lcom/helpshift/support/HSApiData;

.field private descriptionField:Landroid/widget/EditText;

.field private emailField:Landroid/widget/EditText;

.field private getIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;

.field private getLatestIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;

.field private newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

.field private profileExistsHandler:Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;

.field private screenshotImageView:Landroid/widget/ImageView;

.field private screenshotPath:Ljava/lang/String;

.field private storage:Lcom/helpshift/support/HSStorage;

.field private usernameField:Landroid/widget/EditText;

.field private validatedForm:Lcom/helpshift/support/model/Form;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/helpshift/support/fragments/NewConversationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->getLatestIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueFailureHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/helpshift/support/fragments/NewConversationFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/NewConversationFragment;->setIsReportingIssue(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/helpshift/support/fragments/NewConversationFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/helpshift/support/fragments/NewConversationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->clearScreenshot()V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/support/fragments/NewConversationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->handleExit()V

    return-void
.end method

.method static synthetic access$500(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/model/Form;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/support/fragments/NewConversationFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/helpshift/support/fragments/NewConversationFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/NewConversationFragment;->uploadScreenshot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/helpshift/support/fragments/NewConversationFragment;)Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/NewConversationFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->getIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;

    return-object v0
.end method

.method private clearScreenshot()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->setScreenshotInImageView()V

    .line 163
    return-void
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
    .line 436
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    sget-object v1, Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;->KEYWORD_SEARCH:Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/support/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getUserInfo(Lcom/helpshift/support/model/Form;Lcom/helpshift/support/HSStorage;)Ljava/util/HashMap;
    .locals 4
    .param p0, "form"    # Lcom/helpshift/support/model/Form;
    .param p1, "storage"    # Lcom/helpshift/support/HSStorage;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/helpshift/support/util/IdentityFilter;->sendNameEmail(Lcom/helpshift/support/HSStorage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .restart local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/helpshift/support/model/Form;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/helpshift/support/model/Form;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    const-string/jumbo v2, "email"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v1    # "email":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-direct {p0, v4}, Lcom/helpshift/support/fragments/NewConversationFragment;->setIsReportingIssue(Z)V

    .line 167
    sget-object v2, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v3, "dia"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 168
    .local v0, "dia":Z
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showConvOnReportIssue"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 169
    .local v1, "showConversationOnReportIssue":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 170
    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v2}, Lcom/helpshift/support/contracts/NewConversationListener;->showConversationOnReportIssue()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v2}, Lcom/helpshift/support/contracts/NewConversationListener;->exitSdkSession()V

    goto :goto_0
.end method

.method private isSearchOnNewConversationEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 426
    const/4 v1, 0x1

    .line 427
    .local v1, "searchPerformed":Z
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 428
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 429
    const-string/jumbo v3, "search_performed"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 431
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getShowSearchOnNewConversation()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/NewConversationListener;)Lcom/helpshift/support/fragments/NewConversationFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "listener"    # Lcom/helpshift/support/contracts/NewConversationListener;

    .prologue
    .line 69
    new-instance v0, Lcom/helpshift/support/fragments/NewConversationFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/NewConversationFragment;-><init>()V

    .line 70
    .local v0, "newConversationFragment":Lcom/helpshift/support/fragments/NewConversationFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    iput-object p1, v0, Lcom/helpshift/support/fragments/NewConversationFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    .line 72
    return-object v0
.end method

.method private setIsReportingIssue(Z)V
    .locals 0
    .param p1, "isReportingIssue"    # Z

    .prologue
    .line 423
    return-void
.end method

.method private uploadScreenshot(Ljava/lang/String;)V
    .locals 10
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p1}, Lcom/helpshift/support/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/helpshift/support/util/AttachmentUtil;->addAndGetLocalRscMsg(Lcom/helpshift/support/HSStorage;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/support/viewstructs/HSMsg;

    move-result-object v9

    .line 196
    .local v9, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    new-instance v1, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;

    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2}, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadSuccessHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;

    invoke-direct {v2, p0, v9}, Lcom/helpshift/support/fragments/NewConversationFragment$ScreenshotUploadFailureHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;Lcom/helpshift/support/viewstructs/HSMsg;)V

    iget-object v3, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 198
    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    const-string/jumbo v6, "sc"

    iget-object v7, v9, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget-object v8, v9, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    move-object v4, p1

    .line 196
    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/support/HSApiClient;->addScMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v9    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->handleExit()V

    goto :goto_0
.end method

.method private validateForm()Lcom/helpshift/support/model/Form;
    .locals 10

    .prologue
    .line 440
    const/4 v2, 0x1

    .line 441
    .local v2, "isFormValid":Z
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v8, v8, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-static {v8}, Lcom/helpshift/support/util/IdentityFilter;->requireEmailFromUI(Lcom/helpshift/support/HSStorage;)Z

    move-result v5

    .line 442
    .local v5, "requireEmail":Z
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-static {v8}, Lcom/helpshift/support/util/IdentityFilter;->showNameEmailForm(Lcom/helpshift/support/HSApiData;)Z

    move-result v3

    .line 446
    .local v3, "isNameEmailFormShown":Z
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "issueText":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 448
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->usernameField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "username":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "email":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 456
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;

    sget v9, Lcom/helpshift/R$string;->hs__conversation_detail_error:I

    invoke-virtual {p0, v9}, Lcom/helpshift/support/fragments/NewConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 457
    const/4 v2, 0x0

    .line 470
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 471
    :cond_1
    invoke-static {v7}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 472
    :cond_2
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->usernameField:Landroid/widget/EditText;

    sget v9, Lcom/helpshift/R$string;->hs__username_blank_error:I

    invoke-virtual {p0, v9}, Lcom/helpshift/support/fragments/NewConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 473
    const/4 v2, 0x0

    .line 476
    :cond_3
    if-eqz v5, :cond_8

    .line 477
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 478
    invoke-static {v1}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 479
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->emailField:Landroid/widget/EditText;

    sget v9, Lcom/helpshift/R$string;->hs__invalid_email_error:I

    invoke-virtual {p0, v9}, Lcom/helpshift/support/fragments/NewConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 480
    const/4 v2, 0x0

    .line 487
    :cond_4
    :goto_2
    new-instance v8, Lcom/helpshift/support/model/Form;

    invoke-direct {v8, v4, v7, v1, v2}, Lcom/helpshift/support/model/Form;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8

    .line 451
    .end local v1    # "email":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v8}, Lcom/helpshift/support/HSApiData;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 452
    .restart local v7    # "username":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v8}, Lcom/helpshift/support/HSApiData;->getEmail()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "email":Ljava/lang/String;
    goto :goto_0

    .line 459
    :cond_6
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 460
    .local v6, "resources":Landroid/content/res/Resources;
    sget v8, Lcom/helpshift/R$integer;->hs__issue_description_min_chars:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 461
    .local v0, "descriptionMinLength":I
    const-string/jumbo v8, "\\s+"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v0, :cond_7

    .line 462
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;

    sget v9, Lcom/helpshift/R$string;->hs__description_invalid_length_error:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 463
    const/4 v2, 0x0

    goto :goto_1

    .line 464
    :cond_7
    invoke-static {v4}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 465
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;

    sget v9, Lcom/helpshift/R$string;->hs__invalid_description_error:I

    invoke-virtual {p0, v9}, Lcom/helpshift/support/fragments/NewConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 466
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 481
    .end local v0    # "descriptionMinLength":I
    .end local v6    # "resources":Landroid/content/res/Resources;
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 482
    invoke-static {v1}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 483
    iget-object v8, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->emailField:Landroid/widget/EditText;

    sget v9, Lcom/helpshift/R$string;->hs__invalid_email_error:I

    invoke-virtual {p0, v9}, Lcom/helpshift/support/fragments/NewConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 484
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public checkAndStartNewConversation()V
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->validateForm()Lcom/helpshift/support/model/Form;

    move-result-object v0

    .line 133
    .local v0, "form":Lcom/helpshift/support/model/Form;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Form;->isFormValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    .line 135
    invoke-direct {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->isSearchOnNewConversationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    invoke-virtual {v2}, Lcom/helpshift/support/model/Form;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/support/fragments/NewConversationFragment;->getSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    .local v1, "questions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    invoke-interface {v2, v1}, Lcom/helpshift/support/contracts/NewConversationListener;->showSearchResultFragment(Ljava/util/ArrayList;)V

    .line 144
    .end local v1    # "questions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->startNewConversation()V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 84
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    .line 85
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->loadIndex()V

    .line 86
    new-instance v0, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;

    .line 87
    new-instance v0, Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->profileExistsHandler:Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;

    .line 88
    new-instance v0, Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->getIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetIssuesSuccessHandler;

    .line 89
    new-instance v0, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueFailureHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

    .line 90
    new-instance v0, Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;

    invoke-direct {v0, p0}, Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;-><init>(Lcom/helpshift/support/fragments/NewConversationFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->getLatestIssuesSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$GetLatestIssuesSuccessHandler;

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 212
    .local v0, "id":I
    sget v1, Lcom/helpshift/R$id;->screenshot:I

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->newConversationListener:Lcom/helpshift/support/contracts/NewConversationListener;

    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/helpshift/support/contracts/NewConversationListener;->startScreenshotPreviewFragment(Ljava/lang/String;I)V

    .line 217
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    sget v0, Lcom/helpshift/R$layout;->hs__new_conversation_frag:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->setScreenshotInImageView()V

    .line 116
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    if-nez p2, :cond_0

    .line 104
    sget v0, Lcom/helpshift/R$id;->conversation_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->descriptionField:Landroid/widget/EditText;

    .line 105
    sget v0, Lcom/helpshift/R$id;->username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->usernameField:Landroid/widget/EditText;

    .line 106
    sget v0, Lcom/helpshift/R$id;->email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->emailField:Landroid/widget/EditText;

    .line 107
    sget v0, Lcom/helpshift/R$id;->screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotImageView:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setScreenshotInImageView()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "screenshotFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setScreenshotPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->screenshotPath:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/NewConversationFragment;->setScreenshotInImageView()V

    .line 78
    return-void
.end method

.method public startNewConversation()V
    .locals 7

    .prologue
    .line 178
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/NewConversationFragment;->setIsReportingIssue(Z)V

    .line 179
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueSuccessHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueSuccessHandler;

    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueFailureHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

    iget-object v3, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    .line 181
    invoke-virtual {v3}, Lcom/helpshift/support/model/Form;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    iget-object v5, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->storage:Lcom/helpshift/support/HSStorage;

    .line 182
    invoke-static {v4, v5}, Lcom/helpshift/support/fragments/NewConversationFragment;->getUserInfo(Lcom/helpshift/support/model/Form;Lcom/helpshift/support/HSStorage;)Ljava/util/HashMap;

    move-result-object v4

    .line 179
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/support/HSApiData;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/helpshift/exceptions/IdentityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, "e":Lcom/helpshift/exceptions/IdentityException;
    iget-object v0, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v1, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->profileExistsHandler:Lcom/helpshift/support/fragments/NewConversationFragment$ProfileExistsHandler;

    iget-object v2, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->createIssueFailureHandler:Lcom/helpshift/support/fragments/NewConversationFragment$CreateIssueFailureHandler;

    iget-object v3, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    .line 186
    invoke-virtual {v3}, Lcom/helpshift/support/model/Form;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->validatedForm:Lcom/helpshift/support/model/Form;

    .line 187
    invoke-virtual {v4}, Lcom/helpshift/support/model/Form;->getEmail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/support/fragments/NewConversationFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 188
    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/support/HSApiData;->registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
