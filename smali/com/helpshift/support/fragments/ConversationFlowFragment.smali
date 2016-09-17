.class public Lcom/helpshift/support/fragments/ConversationFlowFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "ConversationFlowFragment.java"

# interfaces
.implements Lcom/helpshift/support/contracts/ConversationFlowView;


# instance fields
.field private conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

.field private layout:Landroid/view/View;

.field private permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

.field private showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

.field private storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    return-void
.end method

.method private launchImagePicker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    .local v0, "pickImageIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "pickImageIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0    # "pickImageIntent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 190
    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/ConversationFlowFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    new-instance v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;-><init>()V

    .line 43
    .local v0, "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method

.method private requestStoragePermission()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    iget-object v3, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->layout:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/helpshift/support/util/PermissionUtil;->requestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;ILandroid/view/View;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    .line 147
    return-void
.end method


# virtual methods
.method public getConversationFlowController()Lcom/helpshift/support/controllers/ConversationFlowController;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

    return-object v0
.end method

.method public getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/SupportFragment;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/fragments/MainFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/helpshift/support/util/AttachmentUtil;->isImageUri(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/helpshift/support/util/AttachmentUtil;->getPath(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/controllers/ConversationFlowController;->setPendingScreenshotPath(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "data":Lcom/helpshift/support/HSApiData;
    iget-object v1, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->storage:Lcom/helpshift/support/HSStorage;

    .line 56
    iget-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/helpshift/support/controllers/ConversationFlowController;

    .line 58
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/helpshift/support/controllers/ConversationFlowController;-><init>(Lcom/helpshift/support/contracts/ConversationFlowView;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Lcom/helpshift/support/HSApiData;)V

    iput-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

    .line 61
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

    invoke-virtual {v1, v2}, Lcom/helpshift/support/fragments/SupportFragment;->setConversationListeners(Lcom/helpshift/support/controllers/ConversationFlowController;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 69
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->resetNewMessageCount()V

    .line 72
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
    .line 77
    sget v0, Lcom/helpshift/R$layout;->hs__conversation_flow_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->storage:Lcom/helpshift/support/HSStorage;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setIsConversationShowing(Ljava/lang/Boolean;)V

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 103
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    const/16 v1, 0x59

    if-ne p1, v1, :cond_2

    .line 154
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->launchImagePicker()V

    .line 176
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/fragments/MainFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 177
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->layout:Landroid/view/View;

    sget v2, Lcom/helpshift/R$string;->hs__permission_denied_message:I

    const/4 v3, -0x1

    .line 158
    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__permission_denied_snackbar_action:I

    new-instance v3, Lcom/helpshift/support/fragments/ConversationFlowFragment$1;

    invoke-direct {v3, p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment$1;-><init>(Lcom/helpshift/support/fragments/ConversationFlowFragment;)V

    .line 161
    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    .line 168
    iget-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 170
    :cond_2
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getRetainedChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/support/util/FragmentUtil;->getHsMessagesFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSMessagesFragment;

    move-result-object v0

    .line 172
    .local v0, "hsMessagesFragment":Lcom/helpshift/support/HSMessagesFragment;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/support/HSMessagesFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->conversationFlowController:Lcom/helpshift/support/controllers/ConversationFlowController;

    invoke-virtual {v0}, Lcom/helpshift/support/controllers/ConversationFlowController;->start()V

    .line 90
    iget-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->storage:Lcom/helpshift/support/HSStorage;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setIsConversationShowing(Ljava/lang/Boolean;)V

    .line 91
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    sget v0, Lcom/helpshift/R$id;->conversation_fragment_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->layout:Landroid/view/View;

    .line 83
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public pickImage()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->storage:Lcom/helpshift/support/HSStorage;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSStorage;->setScreenShotDraft(Ljava/lang/Boolean;)V

    .line 114
    invoke-static {}, Lcom/helpshift/util/ApplicationUtil;->getDeviceApiVersion()I

    move-result v0

    .line 115
    .local v0, "apiVersion":I
    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->launchImagePicker()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcom/helpshift/util/ApplicationUtil;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->launchImagePicker()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__permission_not_granted:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/fragments/ConversationFlowFragment;->layout:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/helpshift/support/util/InputUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->requestStoragePermission()V

    goto :goto_0

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->launchImagePicker()V

    goto :goto_0
.end method
