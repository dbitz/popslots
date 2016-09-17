.class public Lcom/helpshift/support/HSMessagesFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "HSMessagesFragment.java"

# interfaces
.implements Lcom/helpshift/support/widget/CSATView$CSATListener;
.implements Lcom/helpshift/support/DownloadTaskCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private final MESSAGE_POLL_DURATION:I

.field private adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

.field private chatLaunchSource:Ljava/lang/String;

.field private confirmationBox:Landroid/widget/LinearLayout;

.field private final connChecker:Landroid/content/BroadcastReceiver;

.field private csatView:Lcom/helpshift/support/widget/CSATView;

.field private csatViewStub:Landroid/view/ViewStub;

.field private enableNCRMessage:Z

.field private extras:Landroid/os/Bundle;

.field private final failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

.field private fetchMessagesFailure:Landroid/os/Handler;

.field private fetchMessagesSuccess:Landroid/os/Handler;

.field private footerMessage:Landroid/widget/TextView;

.field private helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

.field private hsApiData:Lcom/helpshift/support/HSApiData;

.field private hsClient:Lcom/helpshift/support/HSApiClient;

.field private hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

.field private hsStorage:Lcom/helpshift/support/HSStorage;

.field private issueId:Ljava/lang/String;

.field private issueStatus:Ljava/lang/Integer;

.field private messageBox:Landroid/widget/LinearLayout;

.field private messageIdsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/viewstructs/HSMsg;",
            ">;"
        }
    .end annotation
.end field

.field private messagesListFooterView:Landroid/widget/LinearLayout;

.field private messagesListView:Landroid/widget/ListView;

.field private newActivity:Z

.field private newConversationBox:Landroid/widget/LinearLayout;

.field private newConversationBtn:Landroid/widget/Button;

.field private pendingDownloadInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

.field private persistMessageBox:Z

.field private pollerThreadHandler:Landroid/os/Handler;

.field private replyFailHandler:Landroid/os/Handler;

.field private replyField:Landroid/widget/EditText;

.field private replyHandler:Landroid/os/Handler;

.field private scReferIdsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectImage:Z

.field private showAgentName:Z

.field private showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

.field private showingNewConversationBox:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$1;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$2;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->connChecker:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/helpshift/support/HSMessagesFragment;->MESSAGE_POLL_DURATION:I

    .line 121
    iput-boolean v1, p0, Lcom/helpshift/support/HSMessagesFragment;->selectImage:Z

    .line 127
    iput-boolean v1, p0, Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z

    .line 128
    iput-boolean v2, p0, Lcom/helpshift/support/HSMessagesFragment;->enableNCRMessage:Z

    .line 129
    iput-boolean v2, p0, Lcom/helpshift/support/HSMessagesFragment;->newActivity:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->csatView:Lcom/helpshift/support/widget/CSATView;

    .line 134
    iput-boolean v1, p0, Lcom/helpshift/support/HSMessagesFragment;->showingNewConversationBox:Z

    .line 162
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$3;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$3;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesSuccess:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$4;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$4;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesFailure:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$5;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$5;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment$6;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSMessagesFragment$6;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;

    .line 1419
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V

    return-void
.end method

.method static synthetic access$1000(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesFailure:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/helpshift/support/HSMessagesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/helpshift/support/HSMessagesFragment;->showAgentName:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->resolutionAccepted()V

    return-void
.end method

.method static synthetic access$1402(Lcom/helpshift/support/HSMessagesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->showMessageBox()V

    return-void
.end method

.method static synthetic access$1600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/helpshift/support/HSMessagesFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment;->showKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/helpshift/support/HSMessagesFragment;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment;->sendResolutionEvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/contracts/HSMessagesListener;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/support/HSMessagesFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/SupportInternal$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/helpshift/support/HSMessagesFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment;->addListViewBottomPadding(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct/range {p0 .. p6}, Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/helpshift/support/HSMessagesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/helpshift/support/HSMessagesFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment;->gotoApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/support/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->refreshStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/support/HSMessagesFragment;)Lcom/helpshift/support/customadapters/MessagesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/support/HSMessagesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/helpshift/support/HSMessagesFragment;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment;->renderReplyMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/helpshift/support/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSMessagesFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->fetchMessagesSuccess:Landroid/os/Handler;

    return-object v0
.end method

.method private addListViewBottomPadding(Z)V
    .locals 7
    .param p1, "add"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 814
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/R$dimen;->activity_vertical_margin_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v1, v2

    .line 816
    .local v1, "topPadding":I
    const/4 v0, 0x0

    .line 817
    .local v0, "bottomPadding":I
    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/R$dimen;->activity_vertical_margin_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v2, v3}, Lcom/helpshift/support/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v0, v2

    .line 820
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6, v1, v6, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 821
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    .line 823
    .end local v0    # "bottomPadding":I
    .end local v1    # "topPadding":I
    :cond_1
    return-void
.end method

.method private addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setScreenShotDraft(Ljava/lang/Boolean;)V

    .line 1504
    const-string/jumbo v0, "ar"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0, p3, v1}, Lcom/helpshift/support/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    return-void
.end method

.method private addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "failedState"    # I

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setScreenShotDraft(Ljava/lang/Boolean;)V

    .line 1523
    const-string/jumbo v0, "ar"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0, p3, v1}, Lcom/helpshift/support/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1533
    return-void
.end method

.method private gotoApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "marketUrl"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->startActivity(Landroid/content/Intent;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    goto :goto_0
.end method

.method private inflateCSATView()Lcom/helpshift/support/widget/CSATView;
    .locals 4

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "rView":Lcom/helpshift/support/widget/CSATView;
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .end local v0    # "rView":Lcom/helpshift/support/widget/CSATView;
    check-cast v0, Lcom/helpshift/support/widget/CSATView;

    .line 283
    .restart local v0    # "rView":Lcom/helpshift/support/widget/CSATView;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/widget/CSATView;->setCSATListener(Lcom/helpshift/support/widget/CSATView$CSATListener;)V

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    .line 285
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    sget-object v3, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/support/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 288
    :cond_0
    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/HSMessagesFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    new-instance v0, Lcom/helpshift/support/HSMessagesFragment;

    invoke-direct {v0}, Lcom/helpshift/support/HSMessagesFragment;-><init>()V

    .line 145
    .local v0, "hsMessagesFragment":Lcom/helpshift/support/HSMessagesFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/HSMessagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    return-object v0
.end method

.method private refreshMessages()V
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSApiData;->getMessagesWithFails(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 332
    .local v0, "messages":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->refreshMessages(Lorg/json/JSONArray;)V

    .line 333
    return-void
.end method

.method private refreshMessages(Lorg/json/JSONArray;)V
    .locals 36
    .param p1, "messages"    # Lorg/json/JSONArray;

    .prologue
    .line 337
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashSet;->clear()V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashSet;->clear()V

    .line 340
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v26

    .line 341
    .local v26, "messagesLength":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 343
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 344
    .local v24, "message":Lorg/json/JSONObject;
    const-string/jumbo v33, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v33, "type"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v33, "admin_attachment_generic"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->getFilePathForGenericAttachment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 349
    .local v19, "filePath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 351
    const-string/jumbo v33, "state"

    const/16 v34, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v33, "origin"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "origin":Ljava/lang/String;
    const-string/jumbo v33, "body"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "body":Ljava/lang/String;
    const-string/jumbo v33, "created_at"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, "date":Ljava/lang/String;
    const-string/jumbo v33, "state"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 388
    .local v11, "state":I
    const-string/jumbo v33, "inProgress"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 390
    .local v12, "inProgress":Ljava/lang/Boolean;
    const-string/jumbo v33, "mobile"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    const-string/jumbo v33, "ncr"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/helpshift/support/HSMessagesFragment;->enableNCRMessage:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    add-int/lit8 v33, v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 341
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 353
    .end local v6    # "origin":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/String;
    .end local v8    # "date":Ljava/lang/String;
    .end local v11    # "state":I
    .end local v12    # "inProgress":Ljava/lang/Boolean;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "filePath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v33, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->removeFromDownloadedGenericFiles(Ljava/lang/String;)V

    .line 356
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->isDownloadActive(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 357
    const-string/jumbo v33, "state"

    const/16 v34, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 484
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v24    # "message":Lorg/json/JSONObject;
    .end local v26    # "messagesLength":I
    :catch_0
    move-exception v17

    .line 485
    .local v17, "e":Lorg/json/JSONException;
    const-string/jumbo v33, "HelpShiftDebug"

    const-string/jumbo v34, "Slug in get(\"slug\") no found"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v17    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v33

    if-lez v33, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 491
    :cond_5
    return-void

    .line 360
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v20    # "i":I
    .restart local v24    # "message":Lorg/json/JSONObject;
    .restart local v26    # "messagesLength":I
    :cond_6
    :try_start_1
    const-string/jumbo v33, "admin_attachment_image"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->getFilePathForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 362
    .local v22, "imagePath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v21, "imageFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 364
    const-string/jumbo v33, "screenshot"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string/jumbo v33, "state"

    const/16 v34, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 367
    :cond_7
    const-string/jumbo v33, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_8

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->removeFromDownloadedImageFiles(Ljava/lang/String;)V

    .line 370
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 371
    .local v31, "thumbnailPath":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v30, "thumbnailFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 373
    const-string/jumbo v33, "screenshot"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->isDownloadActive(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 375
    const-string/jumbo v33, "state"

    const/16 v34, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 377
    :cond_9
    const-string/jumbo v33, "state"

    const/16 v34, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 379
    :cond_a
    const-string/jumbo v33, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/helpshift/support/HSStorage;->removeFromDownloadedThumbnailFiles(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    .end local v21    # "imageFile":Ljava/io/File;
    .end local v22    # "imagePath":Ljava/lang/String;
    .end local v30    # "thumbnailFile":Ljava/io/File;
    .end local v31    # "thumbnailPath":Ljava/lang/String;
    .restart local v6    # "origin":Ljava/lang/String;
    .restart local v7    # "body":Ljava/lang/String;
    .restart local v8    # "date":Ljava/lang/String;
    .restart local v11    # "state":I
    .restart local v12    # "inProgress":Ljava/lang/Boolean;
    :cond_b
    const-string/jumbo v33, "screenshot"

    const-string/jumbo v34, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, "screenshot":Ljava/lang/String;
    const-string/jumbo v33, "rsc"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 398
    const-string/jumbo v33, "screenshot"

    const-string/jumbo v34, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 399
    const-string/jumbo v33, "localRscMessage_"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    .line 400
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 401
    invoke-static {v4}, Lcom/helpshift/support/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 406
    :cond_c
    const-string/jumbo v33, "admin"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    const-string/jumbo v33, "rfr"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 407
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/helpshift/support/util/MessagesUtil;->isRfrAccepted(Lorg/json/JSONArray;ILjava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 412
    :cond_d
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 413
    .local v28, "metaResponse":Ljava/lang/Boolean;
    const-string/jumbo v33, "meta"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 415
    .local v27, "meta":Lorg/json/JSONObject;
    if-eqz v27, :cond_e

    .line 416
    const-string/jumbo v33, "response"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 417
    .local v25, "messageMeta":Lorg/json/JSONObject;
    if-eqz v25, :cond_e

    .line 418
    const-string/jumbo v33, "state"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 422
    .end local v25    # "messageMeta":Lorg/json/JSONObject;
    :cond_e
    const-string/jumbo v13, ""

    .line 423
    .local v13, "agentName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/helpshift/support/HSMessagesFragment;->showAgentName:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 424
    const-string/jumbo v33, "author"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 425
    .local v16, "author":Lorg/json/JSONObject;
    if-eqz v16, :cond_f

    .line 426
    const-string/jumbo v33, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 430
    .end local v16    # "author":Lorg/json/JSONObject;
    :cond_f
    const-string/jumbo v33, "invisible"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_10

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_13

    :cond_10
    const/16 v33, 0x1

    :goto_3
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 431
    .local v9, "invisible":Ljava/lang/Boolean;
    invoke-static {v6, v5}, Lcom/helpshift/support/util/MessagesUtil;->isMessageSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    .line 432
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v3, Lcom/helpshift/support/viewstructs/HSMsg;

    invoke-direct/range {v3 .. v13}, Lcom/helpshift/support/viewstructs/HSMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 437
    .local v3, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    const-string/jumbo v33, "rsc"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 438
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_11

    .line 439
    invoke-static {}, Lcom/helpshift/util/ApplicationUtil;->getDeviceApiVersion()I

    move-result v33

    const/16 v34, 0x16

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_11

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v33

    const-string/jumbo v34, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static/range {v33 .. v34}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_11

    .line 443
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v3, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 444
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v3, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 445
    iget-object v0, v3, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 447
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    const-string/jumbo v33, "sc"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 449
    const/16 v27, 0x0

    .line 450
    const-string/jumbo v33, "meta"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 451
    if-eqz v27, :cond_1

    .line 452
    const-string/jumbo v33, "attachments"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 454
    .local v15, "attachments":Lorg/json/JSONArray;
    const-string/jumbo v33, "refers"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 456
    .local v29, "refers":Ljava/lang/String;
    const-string/jumbo v33, "localRscMessage_"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 458
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/helpshift/support/HSMessagesFragment;->removeMessage(Ljava/lang/String;)V

    .line 459
    invoke-static/range {v29 .. v29}, Lcom/helpshift/support/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 465
    :cond_12
    :goto_4
    if-eqz v15, :cond_15

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v33

    if-lez v33, :cond_15

    if-eqz v29, :cond_15

    .line 467
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 468
    .local v14, "attachment":Lorg/json/JSONObject;
    if-eqz v14, :cond_1

    .line 469
    const-string/jumbo v33, "url"

    const-string/jumbo v34, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 470
    .local v32, "url":Ljava/lang/String;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v23, "imgData":Ljava/util/HashMap;
    const-string/jumbo v33, "url"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string/jumbo v33, "messageId"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v33, "attachId"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string/jumbo v33, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v33, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;-><init>(Lcom/helpshift/support/HSMessagesFragment;Lcom/helpshift/support/HSMessagesFragment$1;)V

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/util/HashMap;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v23, v34, v35

    invoke-virtual/range {v33 .. v34}, Lcom/helpshift/support/HSMessagesFragment$DownloadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 430
    .end local v3    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    .end local v9    # "invisible":Ljava/lang/Boolean;
    .end local v14    # "attachment":Lorg/json/JSONObject;
    .end local v15    # "attachments":Lorg/json/JSONArray;
    .end local v23    # "imgData":Ljava/util/HashMap;
    .end local v29    # "refers":Ljava/lang/String;
    .end local v32    # "url":Ljava/lang/String;
    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 461
    .restart local v3    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    .restart local v9    # "invisible":Ljava/lang/Boolean;
    .restart local v15    # "attachments":Lorg/json/JSONArray;
    .restart local v29    # "refers":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 477
    :cond_15
    if-nez v15, :cond_1

    .line 478
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/helpshift/support/HSMessagesFragment;->removeMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private refreshStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 222
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "openConversations":Ljava/util/List;
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {v5}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v0

    .line 224
    .local v0, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v0}, Lcom/helpshift/support/model/Issue;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 225
    .local v4, "status":Ljava/lang/Integer;
    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->issueStatus:Ljava/lang/Integer;

    .line 226
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->getReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 228
    .local v2, "replyLength":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->showMessageBox()V

    .line 231
    iput-boolean v7, p0, Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 233
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 234
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getShowConversationResolutionQuestion()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 235
    .local v3, "showConfirmationBox":Z
    if-eqz v3, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->showConfirmationBox()V

    goto :goto_0

    .line 238
    :cond_3
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->resolutionAccepted()V

    goto :goto_0

    .line 240
    .end local v3    # "showConfirmationBox":Z
    :cond_4
    iget-boolean v5, p0, Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z

    if-nez v5, :cond_5

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getScreenShotDraft()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 241
    :cond_5
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->showMessageBox()V

    goto :goto_0

    .line 243
    :cond_6
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->showNewConversationBox()V

    goto :goto_0

    .line 245
    :cond_7
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    invoke-interface {v5}, Lcom/helpshift/support/contracts/HSMessagesListener;->reloadMenu()V

    goto :goto_0
.end method

.method private removeMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 497
    .local v1, "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v2, v1, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 501
    .end local v1    # "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    :cond_1
    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method private renderReplyMsg(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 192
    .local v2, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 193
    .local v0, "message":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v1, "messages":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    invoke-static {v1}, Lcom/helpshift/support/util/IssuesUtil;->jsonArrayToMessageList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessages(Ljava/util/List;)I

    .line 198
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V

    .line 199
    return-void
.end method

.method private requestStoragePermission()V
    .locals 3

    .prologue
    .line 1218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-static {p0, v0, v1, v2}, Lcom/helpshift/support/util/PermissionUtil;->requestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;ILandroid/view/View;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    .line 1222
    return-void
.end method

.method private resolutionAccepted()V
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSStorage;->storeReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->sendResolutionEvent(Ljava/lang/Boolean;)V

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z

    .line 830
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->refreshStatus()V

    .line 831
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/HSMessagesListener;->acceptResolution()V

    .line 832
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    const-string/jumbo v1, "User accepted the solution"

    invoke-interface {v0, v1}, Lcom/helpshift/support/SupportInternal$Delegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 835
    :cond_0
    return-void
.end method

.method private sendResolutionEvent(Ljava/lang/Boolean;)V
    .locals 9
    .param p1, "accepted"    # Ljava/lang/Boolean;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSStorage;->clearAndUpdateActiveConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 842
    .local v8, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string/jumbo v5, ""

    .line 844
    .local v5, "messageType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string/jumbo v0, "y"

    invoke-static {v0, v8}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 846
    const-string/jumbo v5, "ca"

    .line 851
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->replyHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    sget-object v2, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/support/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 858
    .end local v5    # "messageType":Ljava/lang/String;
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 848
    .restart local v5    # "messageType":Ljava/lang/String;
    .restart local v8    # "eventData":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "n"

    invoke-static {v0, v8}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 849
    const-string/jumbo v5, "ncr"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 855
    .end local v5    # "messageType":Ljava/lang/String;
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 856
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "JSONException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setMessagesListViewFooter(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 307
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 308
    invoke-direct {p0, v2}, Lcom/helpshift/support/HSMessagesFragment;->addListViewBottomPadding(Z)V

    .line 309
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->footerMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->footerMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 313
    :cond_0
    return-void
.end method

.method private showConfirmationBox()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableButtons(Z)V

    .line 252
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messageBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/helpshift/support/util/InputUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    sget v0, Lcom/helpshift/support/D$string;->hs__confirmation_footer_msg:I

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 257
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/HSMessagesListener;->showResolutionRequest()V

    .line 258
    return-void
.end method

.method private showKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 326
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 327
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 328
    return-void
.end method

.method private showMessageBox()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 316
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableButtons(Z)V

    .line 317
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messageBox:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/HSMessagesListener;->reloadMenu()V

    .line 321
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 322
    return-void
.end method

.method private showNewConversationBox()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 261
    iput-boolean v3, p0, Lcom/helpshift/support/HSMessagesFragment;->enableNCRMessage:Z

    .line 262
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v1, v3}, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableButtons(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/helpshift/support/util/InputUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 264
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messageBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSApiData;->getCSatState(Ljava/lang/String;)Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    move-result-object v0

    .line 268
    .local v0, "state":Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    if-ne v0, v1, :cond_1

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->inflateCSATView()Lcom/helpshift/support/widget/CSATView;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->csatView:Lcom/helpshift/support/widget/CSATView;

    .line 271
    sget v1, Lcom/helpshift/support/D$string;->hs__confirmation_footer_msg:I

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 275
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/support/HSMessagesFragment;->showingNewConversationBox:Z

    .line 276
    return-void

    .line 273
    :cond_1
    sget v1, Lcom/helpshift/support/D$string;->hs__conversation_end_msg:I

    invoke-direct {p0, v1}, Lcom/helpshift/support/HSMessagesFragment;->setMessagesListViewFooter(I)V

    goto :goto_0
.end method

.method private startAdminAttachmentDownload(Lorg/json/JSONObject;II)V
    .locals 5
    .param p1, "attachment"    # Lorg/json/JSONObject;
    .param p2, "position"    # I
    .param p3, "downloadType"    # I

    .prologue
    .line 1172
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1173
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    packed-switch p3, :pswitch_data_0

    .line 1196
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {p1, p2, v3, v4, p3}, Lcom/helpshift/support/DownloadManager;->startDownload(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)Lcom/helpshift/support/DownloadTask;

    .line 1201
    :cond_1
    :goto_1
    return-void

    .line 1175
    :pswitch_0
    const/4 v3, 0x1

    iput v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1176
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1179
    :pswitch_1
    const/4 v3, 0x2

    iput v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1180
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1183
    :pswitch_2
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->isDownloadActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1186
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, "thumbnailPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v1, "thumbnail":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1173
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startDownloadWithSystemService(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "attachment"    # Lorg/json/JSONObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "download"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 1206
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    const-string/jumbo v3, "url"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1207
    .local v0, "attachmentUri":Landroid/net/Uri;
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1208
    .local v2, "request":Landroid/app/DownloadManager$Request;
    invoke-static {}, Lcom/helpshift/util/ApplicationUtil;->getDeviceApiVersion()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 1209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1211
    :cond_0
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 1212
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1213
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/helpshift/R$string;->hs__starting_download:I

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    .line 1215
    :cond_1
    return-void
.end method


# virtual methods
.method public attachImage(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 1033
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "profileId":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1035
    .local v9, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 1036
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 1037
    iget-object v0, v9, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 1039
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1041
    new-instance v1, Lcom/helpshift/support/HSMessagesFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/support/HSMessagesFragment$18;-><init>(Lcom/helpshift/support/HSMessagesFragment;I)V

    .line 1088
    .local v1, "replySysHandler":Landroid/os/Handler;
    new-instance v2, Lcom/helpshift/support/HSMessagesFragment$19;

    invoke-direct {v2, p0, p1}, Lcom/helpshift/support/HSMessagesFragment$19;-><init>(Lcom/helpshift/support/HSMessagesFragment;I)V

    .line 1105
    .local v2, "replySysFailHandler":Landroid/os/Handler;
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsClient:Lcom/helpshift/support/HSApiClient;

    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "sc"

    iget-object v7, v9, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget-object v8, v9, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/support/HSApiClient;->addScMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public csatViewDissmissed()V
    .locals 1

    .prologue
    .line 293
    sget v0, Lcom/helpshift/support/D$string;->hs__conversation_end_msg:I

    invoke-direct {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 294
    return-void
.end method

.method public downloadAdminAttachment(Lorg/json/JSONObject;II)V
    .locals 4
    .param p1, "attachment"    # Lorg/json/JSONObject;
    .param p2, "position"    # I
    .param p3, "downloadType"    # I

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcom/helpshift/util/ApplicationUtil;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    .line 1146
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/HSMessagesFragment;->startAdminAttachmentDownload(Lorg/json/JSONObject;II)V

    .line 1167
    :cond_1
    :goto_0
    return-void

    .line 1148
    :cond_2
    invoke-static {}, Lcom/helpshift/util/ApplicationUtil;->getDeviceApiVersion()I

    move-result v0

    .line 1149
    .local v0, "apiVersion":I
    const/16 v1, 0x9

    if-ge v0, v1, :cond_3

    .line 1150
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__permission_not_granted:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    goto :goto_0

    .line 1156
    :cond_3
    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 1157
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSMessagesFragment;->startDownloadWithSystemService(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1159
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/helpshift/support/util/InputUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 1160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    .line 1161
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    const-string/jumbo v2, "attachment"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    const-string/jumbo v2, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    const-string/jumbo v2, "downloadType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->requestStoragePermission()V

    goto :goto_0
.end method

.method public downloadAttachment(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "attachId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v7, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 1115
    .local v2, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1117
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-thumbnail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1118
    .local v5, "outputName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1119
    .local v4, "outputFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1120
    .local v1, "fname":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1121
    iget-object v8, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v8, v5}, Lcom/helpshift/support/HSApiData;->storeFile(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1123
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1126
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 1127
    .local v0, "data":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1128
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1133
    .end local v0    # "data":[B
    .end local v1    # "fname":Ljava/lang/String;
    .end local v4    # "outputFile":Ljava/io/File;
    .end local v5    # "outputName":Ljava/lang/String;
    .end local v6    # "read":I
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_0

    .line 1134
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1135
    :cond_0
    if-eqz v2, :cond_1

    .line 1136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v8

    .line 1133
    .restart local v1    # "fname":Ljava/lang/String;
    .restart local v4    # "outputFile":Ljava/io/File;
    .restart local v5    # "outputName":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 1134
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1135
    :cond_3
    if-eqz v2, :cond_4

    .line 1136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    return-object v1
.end method

.method public getMessageBox()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messageBox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isIssueRejected()Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->issueStatus:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public launchAttachment(Lcom/helpshift/support/viewstructs/HSMsg;)V
    .locals 9
    .param p1, "msg"    # Lcom/helpshift/support/viewstructs/HSMsg;

    .prologue
    .line 1254
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v0, "attachmentObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "content-type"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1258
    .local v1, "contentType":Ljava/lang/String;
    iget-object v7, p1, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v8, "admin_attachment_generic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1259
    iget-object v7, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v8, p1, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/helpshift/support/HSStorage;->getFilePathForGenericAttachment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, "filePath":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1266
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1267
    .local v6, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1271
    invoke-virtual {p0, v5}, Lcom/helpshift/support/HSMessagesFragment;->startActivity(Landroid/content/Intent;)V

    .line 1287
    .end local v0    # "attachmentObj":Lorg/json/JSONObject;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 1261
    .restart local v0    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v1    # "contentType":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v8, p1, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/helpshift/support/HSStorage;->getFilePathForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 1272
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v7, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    if-eqz v7, :cond_3

    .line 1273
    iget-object v7, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    invoke-interface {v7, v3}, Lcom/helpshift/support/SupportInternal$Delegate;->displayAttachmentFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1284
    .end local v0    # "attachmentObj":Lorg/json/JSONObject;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1285
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "launchAttachment : "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1275
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1276
    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V

    goto :goto_1

    .line 1280
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1281
    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/helpshift/support/util/SnackbarUtil;->showErrorSnackbar(ILandroid/view/View;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 651
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    .line 652
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    .line 653
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsClient:Lcom/helpshift/support/HSApiClient;

    .line 654
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getConversationFlowController()Lcom/helpshift/support/controllers/ConversationFlowController;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    .line 655
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 672
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 673
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1304
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const-string/jumbo v5, "Copy"

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v3, p2

    .line 1306
    check-cast v3, Landroid/widget/TextView;

    .line 1307
    .local v3, "copyTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, "copyText":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1311
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v4, "Copy Text"

    invoke-static {v4, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1312
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1317
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 1315
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->extras:Landroid/os/Bundle;

    .line 661
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "chatLaunchSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;

    .line 663
    invoke-static {}, Lcom/helpshift/support/SupportInternal;->getDelegate()Lcom/helpshift/support/SupportInternal$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    .line 664
    sget v0, Lcom/helpshift/support/D$layout;->hs__messages_list_footer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    .line 665
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    sget v1, Lcom/helpshift/R$id;->footer_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->footerMessage:Landroid/widget/TextView;

    .line 666
    sget v0, Lcom/helpshift/support/D$layout;->hs__messages_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onDestroy()V

    .line 547
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/util/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "downloadType"    # I

    .prologue
    const/4 v2, 0x3

    .line 1341
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1343
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    packed-switch p5, :pswitch_data_0

    .line 1357
    :goto_0
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V

    .line 1358
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    if-eq p5, v1, :cond_0

    .line 1359
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->launchAttachment(Lcom/helpshift/support/viewstructs/HSMsg;)V

    .line 1363
    .end local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    :cond_0
    return-void

    .line 1346
    .restart local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    :pswitch_0
    iput v2, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    goto :goto_0

    .line 1349
    :pswitch_1
    iput v2, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1350
    iput-object p1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0

    .line 1353
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1354
    iput-object p1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDownloadTaskFailed(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 1370
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1372
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    packed-switch p4, :pswitch_data_0

    .line 1385
    .end local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    :cond_0
    :goto_0
    return-void

    .line 1375
    .restart local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1376
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1379
    :pswitch_1
    const/4 v1, 0x1

    iput v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1380
    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1373
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDownloadTaskPaused(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 1325
    return-void
.end method

.method public onDownloadTaskResumed(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 1333
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 506
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onPause()V

    .line 507
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 511
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSStorage;->resetIssueCount(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/helpshift/support/SupportInternal$Delegate;->didReceiveNotification(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSStorage;->setForeground(Ljava/lang/Boolean;)V

    .line 519
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/HSApiData;->resetServiceInterval()V

    .line 522
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->connChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 523
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_1
    invoke-static {}, Lcom/helpshift/support/DownloadManager;->deregisterDownloadTaskCallBacks()V

    .line 532
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/support/HSStorage;->storeReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->showRationaleSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 538
    :cond_2
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/helpshift/support/util/InputUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 542
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 524
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onProgressChanged(DILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "progress"    # D
    .param p3, "position"    # I
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "issueId"    # Ljava/lang/String;
    .param p6, "downloadType"    # I

    .prologue
    const/4 v7, 0x2

    .line 1393
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1394
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1395
    .local v2, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v6, v2, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1396
    const/4 v6, 0x6

    if-ne p6, v6, :cond_2

    .line 1397
    iput v7, v2, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1398
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1399
    .local v4, "start":I
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 1400
    .local v0, "end":I
    move v1, v4

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1401
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1402
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    sub-int v7, v1, v4

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1403
    .local v5, "view":Landroid/view/View;
    const v6, 0x102000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1404
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    double-to-int v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1405
    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    iget-object v7, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1, v5, v7}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1417
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    .end local v3    # "progressBar":Landroid/widget/ProgressBar;
    .end local v4    # "start":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 1400
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    .restart local v2    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    .restart local v4    # "start":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1409
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v4    # "start":I
    :cond_2
    const/4 v6, 0x7

    if-ne p6, v6, :cond_0

    .line 1410
    iget v6, v2, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    if-eq v6, v7, :cond_0

    .line 1411
    iput v7, v2, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 1412
    invoke-virtual {p0, v2}, Lcom/helpshift/support/HSMessagesFragment;->updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V

    goto :goto_1
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
    .line 1228
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 1229
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    const-string/jumbo v2, "position"

    .line 1231
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->pendingDownloadInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "downloadType"

    .line 1232
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1230
    invoke-virtual {p0, v0, v2, v1}, Lcom/helpshift/support/HSMessagesFragment;->downloadAdminAttachment(Lorg/json/JSONObject;II)V

    .line 1250
    :goto_0
    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/R$string;->hs__permission_denied_message:I

    const/4 v2, -0x1

    .line 1235
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    sget v1, Lcom/helpshift/R$string;->hs__permission_denied_snackbar_action:I

    new-instance v2, Lcom/helpshift/support/HSMessagesFragment$20;

    invoke-direct {v2, p0}, Lcom/helpshift/support/HSMessagesFragment$20;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    .line 1238
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    .line 1245
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->permissionDeniedSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 1248
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/fragments/MainFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 601
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 602
    iput-boolean v8, p0, Lcom/helpshift/support/HSMessagesFragment;->selectImage:Z

    .line 604
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 605
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 606
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->clearNotification(Ljava/lang/String;)V

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->connChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 613
    .local v2, "failFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.helpshift.failedMessageRequest"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->startPoller()V

    .line 619
    :try_start_0
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->resetIssueCount(Ljava/lang/String;)V

    .line 620
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    if-eqz v5, :cond_0

    .line 621
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/helpshift/support/SupportInternal$Delegate;->didReceiveNotification(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->setForeground(Ljava/lang/Boolean;)V

    .line 628
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 629
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    iget-object v7, p0, Lcom/helpshift/support/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/helpshift/support/HSApiData;->updateMessageSeenState(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/support/HSStorage;->getReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "replyText":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/helpshift/support/HSMessagesFragment;->showingNewConversationBox:Z

    if-nez v5, :cond_1

    .line 635
    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_1
    iget-boolean v5, p0, Lcom/helpshift/support/HSMessagesFragment;->newActivity:Z

    if-eqz v5, :cond_2

    .line 638
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 639
    iput-boolean v8, p0, Lcom/helpshift/support/HSMessagesFragment;->persistMessageBox:Z

    .line 641
    :cond_2
    iput-boolean v8, p0, Lcom/helpshift/support/HSMessagesFragment;->newActivity:Z

    .line 643
    invoke-static {p0}, Lcom/helpshift/support/DownloadManager;->registerDownloadTaskCallbacks(Lcom/helpshift/support/DownloadTaskCallBacks;)V

    .line 645
    sget v5, Lcom/helpshift/R$string;->hs__conversation_header:I

    invoke-virtual {p0, v5}, Lcom/helpshift/support/HSMessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/helpshift/support/HSMessagesFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 646
    return-void

    .line 623
    .end local v4    # "replyText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 862
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 863
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->addVisibleFragment()V

    .line 864
    iget-boolean v2, p0, Lcom/helpshift/support/HSMessagesFragment;->selectImage:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_0

    .line 866
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 867
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    const-string/jumbo v2, "c"

    invoke-static {v2, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 877
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 878
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->removeVisibleFragment()V

    .line 879
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSMessagesFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 677
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 679
    sget v4, Lcom/helpshift/support/D$id;->hs__messagesList:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    .line 680
    sget v4, Lcom/helpshift/support/D$id;->hs__messageText:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    .line 681
    sget v4, Lcom/helpshift/support/D$id;->hs__sendMessageBtn:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 682
    .local v0, "addReply":Landroid/widget/ImageButton;
    sget v4, Lcom/helpshift/support/D$id;->hs__confirmation:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    .line 683
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    sget v5, Lcom/helpshift/support/D$id;->hs__new_conversation:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    .line 684
    sget v4, Lcom/helpshift/support/D$id;->relativeLayout1:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messageBox:Landroid/widget/LinearLayout;

    .line 685
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 686
    .local v2, "solvedBtn":Landroid/widget/Button;
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 687
    .local v3, "unsolvedBtn":Landroid/widget/Button;
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    sget v5, Lcom/helpshift/support/D$id;->hs__new_conversation_btn:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    .line 688
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListFooterView:Landroid/widget/LinearLayout;

    sget v5, Lcom/helpshift/support/D$id;->csat_view_stub:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    .line 689
    new-instance v4, Lcom/helpshift/support/HSMessagesFragment$8;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSMessagesFragment$8;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    new-instance v4, Lcom/helpshift/support/HSMessagesFragment$9;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSMessagesFragment$9;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    new-instance v5, Lcom/helpshift/support/HSMessagesFragment$10;

    invoke-direct {v5, p0}, Lcom/helpshift/support/HSMessagesFragment$10;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 724
    new-instance v4, Lcom/helpshift/support/customadapters/MessagesAdapter;

    const v5, 0x1090003

    iget-object v6, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Lcom/helpshift/support/customadapters/MessagesAdapter;-><init>(Landroid/support/v4/app/Fragment;ILjava/util/List;)V

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    .line 726
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 730
    .local v1, "dummyTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 731
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 732
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 734
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "issueId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    .line 735
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {v4}, Lcom/helpshift/support/model/Issue;->isShowAgentNameEnabled(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/helpshift/support/HSMessagesFragment;->showAgentName:Z

    .line 736
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->refreshStatus()V

    .line 737
    invoke-direct {p0}, Lcom/helpshift/support/HSMessagesFragment;->refreshMessages()V

    .line 738
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v5}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 740
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 741
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 742
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 743
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/helpshift/support/util/Styles;->setSendMessageButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 750
    :goto_0
    new-instance v4, Lcom/helpshift/support/HSMessagesFragment$11;

    invoke-direct {v4, p0}, Lcom/helpshift/support/HSMessagesFragment$11;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    new-instance v5, Lcom/helpshift/support/HSMessagesFragment$12;

    invoke-direct {v5, p0, v0}, Lcom/helpshift/support/HSMessagesFragment$12;-><init>(Lcom/helpshift/support/HSMessagesFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 786
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    new-instance v5, Lcom/helpshift/support/HSMessagesFragment$13;

    invoke-direct {v5, p0, v0}, Lcom/helpshift/support/HSMessagesFragment$13;-><init>(Lcom/helpshift/support/HSMessagesFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 811
    return-void

    .line 745
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 746
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 747
    invoke-virtual {p0}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/helpshift/support/util/Styles;->setSendMessageButtonActiveIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public removeScreenshot(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1017
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/support/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1025
    :goto_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1026
    return-void

    .line 1021
    :cond_0
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/helpshift/support/model/Message;->setScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0
.end method

.method public replyConfirmation(Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 10
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "accepted"    # Ljava/lang/Boolean;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 883
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 884
    .local v9, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 885
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 886
    iget-object v0, v9, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 888
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 890
    new-instance v1, Lcom/helpshift/support/HSMessagesFragment$14;

    invoke-direct {v1, p0, p3}, Lcom/helpshift/support/HSMessagesFragment$14;-><init>(Lcom/helpshift/support/HSMessagesFragment;I)V

    .line 903
    .local v1, "replySysHandler":Landroid/os/Handler;
    new-instance v2, Lcom/helpshift/support/HSMessagesFragment$15;

    invoke-direct {v2, p0, p3}, Lcom/helpshift/support/HSMessagesFragment$15;-><init>(Lcom/helpshift/support/HSMessagesFragment;I)V

    .line 919
    .local v2, "replySysFailHandler":Landroid/os/Handler;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ca"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :goto_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 929
    .local v8, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v0, "id"

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    const-string/jumbo v0, "y"

    invoke-static {v0, v8}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 923
    :cond_0
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ncr"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    .restart local v8    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v0, "n"

    invoke-static {v0, v8}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 935
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 936
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v0, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public replyReview(Ljava/lang/String;I)V
    .locals 8
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 941
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 942
    .local v7, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 943
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 944
    iget-object v0, v7, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/helpshift/support/model/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 946
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 948
    new-instance v1, Lcom/helpshift/support/HSMessagesFragment$16;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/HSMessagesFragment$16;-><init>(Lcom/helpshift/support/HSMessagesFragment;I)V

    .line 979
    .local v1, "replySysHandler":Landroid/os/Handler;
    new-instance v2, Lcom/helpshift/support/HSMessagesFragment$17;

    invoke-direct {v2, p0, p2}, Lcom/helpshift/support/HSMessagesFragment$17;-><init>(Lcom/helpshift/support/HSMessagesFragment;I)V

    .line 995
    .local v2, "replySysFailHandler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ar"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public retryMessage(Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/helpshift/support/HSStorage;->popFailedMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1457
    .local v9, "failedMessage":Lorg/json/JSONObject;
    if-nez v9, :cond_0

    .line 1493
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1461
    .restart local v9    # "failedMessage":Lorg/json/JSONObject;
    :cond_0
    new-instance v11, Lorg/json/JSONObject;

    .line 1462
    invoke-static {v9}, Lcom/helpshift/util/HSJSONUtils;->getJSONObjectKeys(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v9, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1464
    .local v11, "tempMess":Lorg/json/JSONObject;
    const-string/jumbo v0, "state"

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1466
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/HSApiData;->getMessagesWithFails(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1467
    .local v10, "messages":Lorg/json/JSONArray;
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1468
    invoke-direct {p0, v10}, Lcom/helpshift/support/HSMessagesFragment;->refreshMessages(Lorg/json/JSONArray;)V

    .line 1470
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lcom/helpshift/support/HSStorage;->storeFailedMessage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1472
    new-instance v1, Lcom/helpshift/support/HSMessagesFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/support/HSMessagesFragment$21;-><init>(Lcom/helpshift/support/HSMessagesFragment;Ljava/lang/String;)V

    .line 1484
    .local v1, "addMessageHandler":Landroid/os/Handler;
    const-string/jumbo v0, "issue_id"

    .line 1485
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "body"

    .line 1486
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "type"

    .line 1487
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "refers"

    .line 1488
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "state"

    const/4 v2, 0x0

    .line 1489
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    move-object v0, p0

    move-object v2, v1

    .line 1484
    invoke-direct/range {v0 .. v7}, Lcom/helpshift/support/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1490
    .end local v1    # "addMessageHandler":Landroid/os/Handler;
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    .end local v10    # "messages":Lorg/json/JSONArray;
    .end local v11    # "tempMess":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 1491
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v2, "retryMessage"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectImagePopup(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsMessagesListener:Lcom/helpshift/support/contracts/HSMessagesListener;

    invoke-interface {v0, p1}, Lcom/helpshift/support/contracts/HSMessagesListener;->pickImage(I)V

    .line 1030
    return-void
.end method

.method public sendCSATSurvey(ILjava/lang/String;)V
    .locals 6
    .param p1, "rating"    # I
    .param p2, "feedback"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 299
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/support/HSApiData;->sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 300
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/helpshift/support/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/support/SupportInternal$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/helpshift/support/SupportInternal$Delegate;->userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public sendScreenshot(Ljava/lang/String;I)V
    .locals 3
    .param p1, "screenshotPath"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 1001
    if-nez p2, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v2, p0, Lcom/helpshift/support/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/helpshift/support/util/AttachmentUtil;->addAndGetLocalRscMsg(Lcom/helpshift/support/HSStorage;Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/support/viewstructs/HSMsg;

    move-result-object v0

    .line 1003
    .local v0, "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    :goto_0
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/helpshift/support/model/Message;->setScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    invoke-virtual {v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1011
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/helpshift/support/HSMessagesFragment;->attachImage(I)V

    .line 1012
    return-void

    .line 1005
    .end local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 1006
    .restart local v0    # "msgData":Lcom/helpshift/support/viewstructs/HSMsg;
    iput-object p1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0
.end method

.method public startPoller()V
    .locals 5

    .prologue
    .line 553
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "conversation":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/support/HSMessagesFragment;->hsStorage:Lcom/helpshift/support/HSStorage;

    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->hsApiData:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/support/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "archivedConversation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    :goto_0
    return-void

    .line 566
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/helpshift/support/HSMessagesFragment$7;

    invoke-direct {v3, p0}, Lcom/helpshift/support/HSMessagesFragment$7;-><init>(Lcom/helpshift/support/HSMessagesFragment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 596
    .local v2, "pollerThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateView(Lcom/helpshift/support/viewstructs/HSMsg;)V
    .locals 6
    .param p1, "msgData"    # Lcom/helpshift/support/viewstructs/HSMsg;

    .prologue
    .line 1290
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1291
    .local v2, "start":I
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 1292
    .local v0, "end":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1293
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1294
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1295
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/helpshift/support/HSMessagesFragment;->adapter:Lcom/helpshift/support/customadapters/MessagesAdapter;

    iget-object v5, p0, Lcom/helpshift/support/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v3, v5}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1299
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 1292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
