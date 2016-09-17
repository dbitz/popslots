.class public Lcom/helpshift/support/controllers/ConversationFlowController;
.super Ljava/lang/Object;
.source "ConversationFlowController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lcom/helpshift/support/contracts/ScreenshotPreviewListener;
.implements Lcom/helpshift/support/contracts/NewConversationListener;
.implements Lcom/helpshift/support/contracts/SearchResultListener;
.implements Lcom/helpshift/support/contracts/HSMessagesListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

.field private final data:Lcom/helpshift/support/HSApiData;

.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private isControllerStarted:Z

.field private pendingScreenshotPath:Ljava/lang/String;

.field private pickImageMessagePosition:I

.field private screenshotPreviewFragmentMode:I

.field private final storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/helpshift/support/controllers/ConversationFlowController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/controllers/ConversationFlowController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/helpshift/support/contracts/ConversationFlowView;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Lcom/helpshift/support/HSApiData;)V
    .locals 1
    .param p1, "conversationFlowView"    # Lcom/helpshift/support/contracts/ConversationFlowView;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "data"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    .line 70
    iput-object p2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 71
    iput-object p3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->bundle:Landroid/os/Bundle;

    .line 72
    iput-object p4, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->data:Lcom/helpshift/support/HSApiData;

    .line 73
    iget-object v0, p4, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->storage:Lcom/helpshift/support/HSStorage;

    .line 74
    return-void
.end method

.method private sendTicketAvoidedEvent()V
    .locals 7

    .prologue
    .line 177
    iget-object v4, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v4}, Lcom/helpshift/support/util/FragmentUtil;->getSingleQuestionFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/SingleQuestionFragment;

    move-result-object v3

    .line 178
    .local v3, "singleQuestionFragment":Lcom/helpshift/support/fragments/SingleQuestionFragment;
    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v3}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getQuestionId()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "questionId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v1, "eventData":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string/jumbo v4, "str"

    iget-object v5, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->getConversationDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string/jumbo v4, "ta"

    invoke-static {v4, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "eventData":Lorg/json/JSONObject;
    .end local v2    # "questionId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local v1    # "eventData":Lorg/json/JSONObject;
    .restart local v2    # "questionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/helpshift/support/controllers/ConversationFlowController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "sendTicketAvoidedEvent : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showFragment()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "activeConversation":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "archivedConversation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "issueId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->showMessagesFragment()V

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "issueId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->showMessagesFragment()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->showHsAddIssueFragment()V

    goto :goto_0
.end method

.method private showHsAddIssueFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    iput v5, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->screenshotPreviewFragmentMode:I

    .line 115
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->conversation_fragment_container:I

    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->bundle:Landroid/os/Bundle;

    .line 117
    invoke-static {v2, p0}, Lcom/helpshift/support/HSAddIssueFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/NewConversationListener;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, p0

    .line 115
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/ConversationFlowController;Z)V

    .line 121
    return-void
.end method

.method private showMessagesFragment()V
    .locals 6

    .prologue
    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->screenshotPreviewFragmentMode:I

    .line 105
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/helpshift/R$id;->conversation_fragment_container:I

    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->bundle:Landroid/os/Bundle;

    .line 107
    invoke-static {v2}, Lcom/helpshift/support/HSMessagesFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p0

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/ConversationFlowController;Z)V

    .line 111
    return-void
.end method


# virtual methods
.method public acceptResolution()V
    .locals 0

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->refreshMenu()V

    .line 311
    return-void
.end method

.method public actionDone()V
    .locals 6

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->sendTicketAvoidedEvent()V

    .line 163
    iget-object v3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/support/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->storage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/support/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    invoke-interface {v3}, Lcom/helpshift/support/contracts/ConversationFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v1

    .line 166
    .local v1, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    invoke-virtual {v1}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    .line 167
    .local v0, "supportController":Lcom/helpshift/support/controllers/SupportController;
    invoke-virtual {v0}, Lcom/helpshift/support/controllers/SupportController;->getSupportMode()I

    move-result v2

    .line 168
    .local v2, "supportMode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->exitSdkSession()V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/helpshift/support/controllers/SupportController;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    .line 172
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v3, v4}, Lcom/helpshift/support/util/FragmentUtil;->popBackStackImmediate(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 3
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-class v2, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/FragmentUtil;->popBackStack(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v0

    .line 197
    .local v0, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Lcom/helpshift/support/HSAddIssueFragment;->setScreenshot(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public change()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/ConversationFlowView;->pickImage()V

    .line 223
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->refreshMenu()V

    .line 256
    return-void
.end method

.method public exitSdkSession()V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    invoke-interface {v1}, Lcom/helpshift/support/contracts/ConversationFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 245
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/helpshift/support/activities/ParentActivity;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/helpshift/support/util/FragmentUtil;->removeFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 146
    .local v1, "menuItemId":I
    sget v3, Lcom/helpshift/R$id;->hs__attach_screenshot:I

    if-ne v1, v3, :cond_1

    .line 147
    iput v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->pickImageMessagePosition:I

    .line 148
    iget-object v2, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    invoke-interface {v2}, Lcom/helpshift/support/contracts/ConversationFlowView;->pickImage()V

    .line 149
    const/4 v2, 0x1

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    sget v3, Lcom/helpshift/R$id;->hs__start_new_conversation:I

    if-ne v1, v3, :cond_2

    .line 151
    iget-object v3, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v3}, Lcom/helpshift/support/util/FragmentUtil;->getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v0

    .line 152
    .local v0, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/helpshift/support/HSAddIssueFragment;->checkAndStartNewConversation()V

    goto :goto_0

    .line 155
    .end local v0    # "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    :cond_2
    sget v3, Lcom/helpshift/R$id;->hs__action_done:I

    if-ne v1, v3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->actionDone()V

    goto :goto_0
.end method

.method public onQuestionSelected(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "questionPublishId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p2, :cond_0

    .line 268
    const-string/jumbo v1, "searchTerms"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/helpshift/R$id;->conversation_fragment_container:I

    const/4 v3, 0x2

    .line 272
    invoke-static {v0, v3}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->newInstance(Landroid/os/Bundle;I)Lcom/helpshift/support/fragments/SingleQuestionFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 270
    invoke-static {v1, v2, v3, v4, v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 275
    return-void
.end method

.method public pickImage(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->pickImageMessagePosition:I

    .line 290
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/ConversationFlowView;->pickImage()V

    .line 291
    return-void
.end method

.method public refreshMenu()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->conversationFlowView:Lcom/helpshift/support/contracts/ConversationFlowView;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/ConversationFlowView;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->refreshMenu()V

    .line 320
    return-void
.end method

.method public rejectResolution()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->refreshMenu()V

    .line 306
    return-void
.end method

.method public reloadMenu()V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->refreshMenu()V

    .line 316
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-class v2, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/FragmentUtil;->popBackStack(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v0

    .line 215
    .local v0, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/helpshift/support/HSAddIssueFragment;->clearScreenshot()V

    .line 218
    :cond_0
    return-void
.end method

.method public reportingIssue()V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->refreshMenu()V

    .line 261
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-class v2, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/FragmentUtil;->popBackStackImmediate(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getHsMessagesFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v0

    .line 206
    .local v0, "hsMessagesFragment":Lcom/helpshift/support/HSMessagesFragment;
    if-eqz v0, :cond_0

    .line 207
    iget v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->pickImageMessagePosition:I

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/support/HSMessagesFragment;->sendScreenshot(Ljava/lang/String;I)V

    .line 209
    :cond_0
    return-void
.end method

.method public sendAnyway()V
    .locals 3

    .prologue
    .line 279
    const-string/jumbo v1, "taf"

    invoke-static {v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-class v2, Lcom/helpshift/support/fragments/SearchResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/FragmentUtil;->popBackStackImmediate(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v0

    .line 282
    .local v0, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/helpshift/support/HSAddIssueFragment;->startNewConversation()V

    .line 285
    :cond_0
    return-void
.end method

.method public setPendingScreenshotPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->pendingScreenshotPath:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public showConversationOnReportIssue()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0}, Lcom/helpshift/support/util/FragmentUtil;->removeHsAddIssueFragmentImmediate(Landroid/support/v4/app/FragmentManager;)V

    .line 239
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->showFragment()V

    .line 240
    return-void
.end method

.method public showResolutionRequest()V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->refreshMenu()V

    .line 301
    return-void
.end method

.method public showSearchResultFragment(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "questions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "results"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 229
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/helpshift/R$id;->conversation_fragment_container:I

    .line 231
    invoke-static {v0, p0}, Lcom/helpshift/support/fragments/SearchResultFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/SearchResultListener;)Lcom/helpshift/support/fragments/SearchResultFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 229
    invoke-static {v1, v2, v3, v4, v5}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 234
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->isControllerStarted:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->showFragment()V

    .line 80
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->isControllerStarted:Z

    .line 82
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->pendingScreenshotPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->pendingScreenshotPath:Ljava/lang/String;

    iget v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->screenshotPreviewFragmentMode:I

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/controllers/ConversationFlowController;->startScreenshotPreviewFragment(Ljava/lang/String;I)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/controllers/ConversationFlowController;->setPendingScreenshotPath(Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void
.end method

.method public startNewConversation()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/helpshift/support/controllers/ConversationFlowController;->showFragment()V

    .line 296
    return-void
.end method

.method public startScreenshotPreviewFragment(Ljava/lang/String;I)V
    .locals 5
    .param p1, "screenshotPath"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getScreenshotPreviewFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    move-result-object v0

    .line 130
    .local v0, "screenshotPreviewFragment":Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;
    if-nez v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->bundle:Landroid/os/Bundle;

    invoke-static {v1, p0, p2}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->newInstance(Landroid/os/Bundle;Lcom/helpshift/support/contracts/ScreenshotPreviewListener;I)Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/helpshift/support/controllers/ConversationFlowController;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/helpshift/R$id;->conversation_fragment_container:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/helpshift/support/util/FragmentUtil;->startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 140
    :cond_0
    invoke-virtual {v0, p1}, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;->setScreenshotPath(Ljava/lang/String;)V

    .line 141
    return-void
.end method
