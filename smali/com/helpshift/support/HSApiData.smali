.class public final Lcom/helpshift/support/HSApiData;
.super Ljava/lang/Object;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_EVENTS:I = 0x2

.field public static final CSAT_REQUEST:I = 0x4

.field public static final HIGHEST_RATING:I = 0x5

.field public static final MARK_QUESTION:I = 0x0

.field public static final MESSAGE_SEEN:I = 0x3

.field public static final PUSH_TOKEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field protected static faqsSyncing:Z

.field public static observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/HSFaqSyncStatusEvents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FILE_STORE_LIMIT:I

.field private c:Landroid/content/Context;

.field public client:Lcom/helpshift/support/HSApiClient;

.field failedApiKeys:Ljava/util/Iterator;

.field private faqDAO:Lcom/helpshift/support/storage/FaqDAO;

.field private flatFaqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation
.end field

.field private profilesManager:Lcom/helpshift/support/ProfilesManager;

.field private sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

.field public storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/support/HSApiData;->faqsSyncing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/helpshift/support/HSApiData;->FILE_STORE_LIMIT:I

    .line 71
    iput-object v1, p0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    .line 75
    iput-object v1, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/helpshift/support/HSStorage;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    .line 81
    new-instance v0, Lcom/helpshift/support/HSApiClient;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getDomain()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    .line 82
    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    .line 83
    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getApiKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/helpshift/support/HSApiClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/support/HSStorage;)V

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    .line 85
    new-instance v0, Lcom/helpshift/support/storage/SectionsDataSource;

    invoke-direct {v0}, Lcom/helpshift/support/storage/SectionsDataSource;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    .line 86
    new-instance v0, Lcom/helpshift/support/storage/FaqsDataSource;

    invoke-direct {v0}, Lcom/helpshift/support/storage/FaqsDataSource;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    .line 87
    invoke-static {}, Lcom/helpshift/support/ProfilesManager;->getInstance()Lcom/helpshift/support/ProfilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/SectionDAO;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/support/HSApiData;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->updateIndex()V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/support/HSApiData;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiData;->rfrCheck(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/support/HSApiData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/support/HSApiData;)Lcom/helpshift/support/storage/FaqDAO;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/support/HSApiData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiData;->getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/support/HSApiData;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/HSApiData;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/helpshift/support/HSApiData;->isStatusCodeRetriable(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected static addFaqSyncStatusObserver(Lcom/helpshift/support/HSFaqSyncStatusEvents;)V
    .locals 1
    .param p0, "observer"    # Lcom/helpshift/support/HSFaqSyncStatusEvents;

    .prologue
    .line 91
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    .line 95
    :cond_0
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private filterForPrivateData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "input"    # Lorg/json/JSONObject;

    .prologue
    .line 670
    :try_start_0
    const-string/jumbo v3, "device_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 671
    .local v1, "deviceInfo":Lorg/json/JSONObject;
    const-string/jumbo v3, "country-code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v3, "custom_meta"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 674
    .local v0, "customMeta":Lorg/json/JSONObject;
    const-string/jumbo v3, "private-data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0    # "customMeta":Lorg/json/JSONObject;
    .end local v1    # "deviceInfo":Lorg/json/JSONObject;
    :goto_0
    return-object p1

    .line 675
    :catch_0
    move-exception v2

    .line 676
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Exception is filtering metaData "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private generateMC()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 587
    .local v3, "mc":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 588
    .local v2, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/model/Issue;

    .line 589
    .local v1, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v1}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v5

    .line 590
    .local v5, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_0

    .line 591
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/model/Message;

    .line 592
    .local v4, "message":Lcom/helpshift/support/model/Message;
    invoke-virtual {v4}, Lcom/helpshift/support/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "localRscMessage_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 593
    invoke-virtual {v1}, Lcom/helpshift/support/model/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/helpshift/support/model/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 590
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 598
    .end local v0    # "i":I
    .end local v1    # "issue":Lcom/helpshift/support/model/Issue;
    .end local v4    # "message":Lcom/helpshift/support/model/Message;
    .end local v5    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getAndStoreConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/helpshift/support/HSApiData$5;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/support/HSApiData$5;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 276
    .local v0, "localSuccess":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v1, v0, p2}, Lcom/helpshift/support/HSApiClient;->getConfig(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 277
    return-void
.end method

.method private getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "identity"    # Ljava/lang/String;
    .param p4, "lastTs"    # Ljava/lang/String;
    .param p5, "mc"    # Ljava/lang/String;
    .param p6, "onlyNew"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/support/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "identity"    # Ljava/lang/String;
    .param p4, "lastTs"    # Ljava/lang/String;
    .param p5, "mc"    # Ljava/lang/String;
    .param p6, "onlyNew"    # Ljava/lang/Boolean;
    .param p7, "chatLaunchSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v1, Lcom/helpshift/support/HSApiData$6;

    invoke-direct {v1, p0, p1, p6, p2}, Lcom/helpshift/support/HSApiData$6;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Ljava/lang/Boolean;Landroid/os/Handler;)V

    .line 480
    .local v1, "localSuccess":Landroid/os/Handler;
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/support/HSApiClient;->fetchMyIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Lcom/helpshift/support/HSApiData$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/helpshift/support/HSApiData$3;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    .line 229
    .local v1, "localSuccess":Landroid/os/Handler;
    new-instance v0, Lcom/helpshift/support/HSApiData$4;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/support/HSApiData$4;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 240
    .local v0, "localFailure":Landroid/os/Handler;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/helpshift/support/HSApiData;->faqsSyncing:Z

    .line 241
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v2, v1, v0}, Lcom/helpshift/support/HSApiClient;->fetchFaqs(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 242
    return-void
.end method

.method private getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sectionId"    # Ljava/lang/String;

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getSections()Ljava/util/ArrayList;

    move-result-object v3

    .line 1379
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    const-string/jumbo v2, ""

    .line 1380
    .local v2, "sectionPublishId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1381
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Section;

    .line 1382
    .local v1, "sectionItem":Lcom/helpshift/support/Section;
    invoke-virtual {v1}, Lcom/helpshift/support/Section;->getSectionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1383
    invoke-virtual {v1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v2

    .line 1380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    .end local v1    # "sectionItem":Lcom/helpshift/support/Section;
    :cond_1
    return-object v2
.end method

.method private getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1390
    new-instance v0, Lcom/helpshift/support/HSApiData$19;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/support/HSApiData$19;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 1417
    .local v0, "localSuccess":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v1, p1, v0, p3}, Lcom/helpshift/support/HSApiClient;->getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1418
    return-void
.end method

.method private getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "reason"    # I
    .param p2, "openIssueId"    # Ljava/lang/String;

    .prologue
    .line 519
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 522
    .local v1, "messageMeta":Lorg/json/JSONObject;
    packed-switch p1, :pswitch_data_0

    .line 538
    :goto_0
    return-object v1

    .line 524
    :pswitch_0
    :try_start_0
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getRfrFailedMessageMeta"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 527
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string/jumbo v2, "open-issue-id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 531
    :pswitch_2
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isStatusCodeRetriable(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 1518
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_0

    .line 1519
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected static removeFaqSyncStatusObserver(Lcom/helpshift/support/HSFaqSyncStatusEvents;)V
    .locals 1
    .param p0, "observer"    # Lcom/helpshift/support/HSFaqSyncStatusEvents;

    .prologue
    .line 99
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method

.method private reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1027
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/support/HSApiClient;->reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 1028
    return-void
.end method

.method private reportActionEvents(Lorg/json/JSONArray;)V
    .locals 24
    .param p1, "actions"    # Lorg/json/JSONArray;

    .prologue
    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/support/HSApiData;->getLoggedInHSId()Ljava/lang/String;

    move-result-object v9

    .line 979
    .local v9, "identifier":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v15

    .line 980
    .local v15, "profileId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    move-object/from16 v20, v0

    const-string/jumbo v11, "4.1.1-support"

    .line 981
    .local v11, "libraryVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/support/HSStorage;->getSdkType()Ljava/lang/String;

    move-result-object v17

    .line 982
    .local v17, "sdkType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/support/HSApiData;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 983
    .local v7, "deviceId":Ljava/lang/String;
    const/16 v19, 0x0

    .line 984
    .local v19, "uid":Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 985
    .local v8, "deviceModel":Ljava/lang/String;
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 986
    .local v13, "os":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/helpshift/util/ApplicationUtil;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 987
    .local v5, "appVersion":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "os.version"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 988
    .local v16, "rom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 989
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 990
    .local v6, "cc":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 993
    .local v12, "ln":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 994
    move-object/from16 v19, v7

    .line 997
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 998
    .local v14, "params":Ljava/util/HashMap;
    const-string/jumbo v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    if-eqz v19, :cond_1

    .line 1000
    const-string/jumbo v20, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1003
    const-string/jumbo v20, "profile-id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    :cond_2
    const-string/jumbo v20, "v"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string/jumbo v20, "e"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string/jumbo v20, "s"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    const-string/jumbo v20, "dm"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string/jumbo v20, "os"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string/jumbo v20, "av"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string/jumbo v20, "rs"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1013
    const-string/jumbo v20, "cc"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_3
    const-string/jumbo v20, "ln"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "action_event_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1018
    .local v10, "key":Ljava/lang/String;
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    const/16 v21, 0x2

    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v4

    .line 1023
    .local v4, "apiFailHandler":Landroid/os/Handler;
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v14}, Lcom/helpshift/support/HSApiData;->reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 1024
    return-void
.end method

.method private rfrAccepted(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 542
    const/4 v6, 0x0

    .line 544
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 549
    :goto_0
    new-instance v1, Lcom/helpshift/support/HSApiData$7;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/support/HSApiData$7;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;)V

    .line 567
    .local v1, "localSuccess":Landroid/os/Handler;
    invoke-static {p1}, Lcom/helpshift/support/model/Issue;->openIssue(Ljava/lang/String;)V

    .line 568
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v4, "Accepted the follow-up"

    const-string/jumbo v5, "ra"

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void

    .line 545
    .end local v1    # "localSuccess":Landroid/os/Handler;
    :catch_0
    move-exception v7

    .line 546
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v2, "rfrAccepted"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rfrCheck(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "issues"    # Lorg/json/JSONArray;

    .prologue
    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 486
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 487
    .local v2, "issue":Lorg/json/JSONObject;
    const-string/jumbo v5, "messages"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 488
    .local v4, "messages":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 489
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 490
    .local v3, "lastMessage":Lorg/json/JSONObject;
    const-string/jumbo v5, "origin"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "admin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "type"

    .line 491
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rfr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    const-string/jumbo v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/helpshift/support/HSApiData;->rfrRequested(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v3    # "lastMessage":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v2    # "issue":Lorg/json/JSONObject;
    .end local v4    # "messages":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "rfrCheck"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;
    .param p3, "messageMeta"    # Lorg/json/JSONObject;

    .prologue
    .line 572
    const/4 v6, 0x0

    .line 574
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 578
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v4, "Rejected the follow-up"

    const-string/jumbo v5, "rj"

    move-object v0, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 579
    return-void

    .line 575
    :catch_0
    move-exception v8

    .line 576
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "rfrRejected"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rfrRequested(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 502
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getViewState()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "viewState":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "activeConversationId":Ljava/lang/String;
    const-string/jumbo v2, "issue-filing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4}, Lcom/helpshift/support/HSApiData;->getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/helpshift/support/HSApiData;->rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 516
    :goto_0
    return-void

    .line 507
    :cond_0
    const-string/jumbo v2, "message-filing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/helpshift/support/HSApiData;->getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/helpshift/support/HSApiData;->rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/helpshift/support/HSApiData;->getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/helpshift/support/HSApiData;->rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/HSApiData;->rfrAccepted(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private sendErrorReportsBatch(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 8
    .param p1, "reportType"    # Ljava/lang/String;
    .param p2, "errorReports"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, "reportIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/helpshift/support/HSApiData$1;

    invoke-direct {v2, p0, p3}, Lcom/helpshift/support/HSApiData$1;-><init>(Lcom/helpshift/support/HSApiData;Ljava/util/List;)V

    .line 138
    .local v2, "handlerCallbackSuccess":Landroid/os/Handler$Callback;
    new-instance v1, Lcom/helpshift/support/HSApiData$2;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSApiData$2;-><init>(Lcom/helpshift/support/HSApiData;)V

    .line 147
    .local v1, "handlerCallbackFailure":Landroid/os/Handler$Callback;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 148
    .local v5, "success":Landroid/os/Handler;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 151
    .local v0, "failure":Landroid/os/Handler;
    new-instance v4, Lcom/helpshift/support/HSApiData;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    .line 152
    .local v4, "hsApiData":Lcom/helpshift/support/HSApiData;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v3, "hashMapData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "elv"

    const-string/jumbo v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v6, "platform"

    const-string/jumbo v7, "android"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v6, "library-version"

    iget-object v7, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/support/HSStorage;->getLibraryVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v6, "domain"

    iget-object v7, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/support/HSStorage;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v6, "report_type"

    invoke-virtual {v3, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v6, "reports"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v6, v4, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v6, v5, v0, v3}, Lcom/helpshift/support/HSApiClient;->sendErrorReport(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 161
    return-void
.end method

.method private sendFailMessage(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "failure"    # Landroid/os/Handler;
    .param p2, "status"    # I

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 603
    .local v1, "result":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v0, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method protected static signalFaqsUpdated()V
    .locals 3

    .prologue
    .line 105
    const/4 v2, 0x0

    sput-boolean v2, Lcom/helpshift/support/HSApiData;->faqsSyncing:Z

    .line 106
    sget-object v2, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 108
    sget-object v2, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/HSFaqSyncStatusEvents;

    .line 109
    .local v1, "observer":Lcom/helpshift/support/HSFaqSyncStatusEvents;
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v1}, Lcom/helpshift/support/HSFaqSyncStatusEvents;->faqsUpdated()V

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "observer":Lcom/helpshift/support/HSFaqSyncStatusEvents;
    :cond_1
    return-void
.end method

.method protected static signalSearchIndexesUpdated()V
    .locals 3

    .prologue
    .line 117
    sget-object v2, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 119
    sget-object v2, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/HSFaqSyncStatusEvents;

    .line 120
    .local v1, "observer":Lcom/helpshift/support/HSFaqSyncStatusEvents;
    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1}, Lcom/helpshift/support/HSFaqSyncStatusEvents;->searchIndexesUpdated()V

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "observer":Lcom/helpshift/support/HSFaqSyncStatusEvents;
    :cond_1
    return-void
.end method

.method private updateFlatList()V
    .locals 7

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getSections()Ljava/util/ArrayList;

    move-result-object v5

    .line 179
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 182
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/Section;

    .line 183
    .local v4, "sectionItem":Lcom/helpshift/support/Section;
    invoke-virtual {v4}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSApiData;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 184
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 185
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Faq;

    .line 186
    .local v0, "faq":Lcom/helpshift/support/Faq;
    iget-object v6, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "faq":Lcom/helpshift/support/Faq;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    .end local v3    # "j":I
    .end local v4    # "sectionItem":Lcom/helpshift/support/Section;
    :cond_1
    return-void
.end method

.method private updateIndex()V
    .locals 3

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->deleteIndex()V

    .line 1313
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->updateFlatList()V

    .line 1315
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/helpshift/support/HSSearch;->indexDocuments(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 1316
    .local v0, "index":Ljava/util/HashMap;
    if-eqz v0, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/HSStorage;->storeIndex(Ljava/util/HashMap;)V

    .line 1319
    :cond_0
    return-void
.end method

.method private updateMessageSeenState(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "messageIds"    # Lorg/json/JSONArray;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "readAt"    # Ljava/lang/String;

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/support/HSApiClient;->updateMessageSeenState(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1665
    return-void
.end method

.method private updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 1282
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1283
    new-instance v1, Lcom/helpshift/support/HSApiData$15;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/support/HSApiData$15;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 1293
    .local v1, "localSuccess":Landroid/os/Handler;
    new-instance v0, Lcom/helpshift/support/HSApiData$16;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/support/HSApiData$16;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 1302
    .local v0, "localFailure":Landroid/os/Handler;
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v2, v1, v0, p4, p3}, Lcom/helpshift/support/HSApiClient;->updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    .end local v0    # "localFailure":Landroid/os/Handler;
    .end local v1    # "localSuccess":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;

    .prologue
    .line 757
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 758
    return-void
.end method

.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "failedState"    # I

    .prologue
    .line 767
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    return-void
.end method

.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "failedState"    # I
    .param p8, "messageMeta"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, "profileId":Ljava/lang/String;
    new-instance v0, Lcom/helpshift/support/HSApiData$9;

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/helpshift/support/HSApiData$9;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 795
    .local v0, "localFailure":Landroid/os/Handler;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    move-object v5, p1

    move-object v6, v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/helpshift/support/HSApiClient;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "messageMeta"    # Lorg/json/JSONObject;

    .prologue
    .line 748
    const/4 v7, -0x1

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 749
    return-void
.end method

.method protected clearNotifications(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 1818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1819
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    .line 1820
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1822
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4, p1}, Lcom/helpshift/support/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1823
    .local v3, "notifications":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1824
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1825
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1826
    .local v0, "issueId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 1829
    .end local v0    # "issueId":Ljava/lang/String;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notifications":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "messageText"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/IdentityException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    .line 714
    .local v6, "profileId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {p0, v2, v0}, Lcom/helpshift/support/HSApiData;->getFilteredMetaData(Ljava/lang/Boolean;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    .line 717
    .local v3, "metaInfo":Lorg/json/JSONObject;
    new-instance v1, Lcom/helpshift/support/HSApiData$8;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/helpshift/support/HSApiData$8;-><init>(Lcom/helpshift/support/HSApiData;Lorg/json/JSONObject;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .local v1, "localFailure":Landroid/os/Handler;
    iget-object v7, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    .line 735
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, p1

    move-object v9, v1

    move-object v10, v6

    move-object/from16 v11, p3

    .line 734
    invoke-virtual/range {v7 .. v12}, Lcom/helpshift/support/HSApiClient;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void

    .line 737
    .end local v1    # "localFailure":Landroid/os/Handler;
    .end local v3    # "metaInfo":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Lcom/helpshift/exceptions/IdentityException;

    const-string/jumbo v4, "Identity not found"

    invoke-direct {v2, v4}, Lcom/helpshift/exceptions/IdentityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected deleteFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1193
    .local p1, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1194
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1197
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected disableReview()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->setReviewed()V

    .line 1119
    return-void
.end method

.method protected enableReview()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->enableReview()V

    .line 1115
    return-void
.end method

.method public getAllFaqs(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;

    .prologue
    .line 902
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 903
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->updateFlatList()V

    .line 910
    :cond_0
    if-eqz p1, :cond_2

    .line 911
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, p1}, Lcom/helpshift/support/storage/FaqDAO;->getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 914
    :goto_0
    return-object v1

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Faq;

    .line 906
    .local v0, "faq":Lcom/helpshift/support/Faq;
    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->clearSearchTerms()V

    goto :goto_1

    .line 914
    .end local v0    # "faq":Lcom/helpshift/support/Faq;
    :cond_2
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getAllIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 7
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "profileId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    const/16 v0, 0x193

    invoke-direct {p0, p2, v0}, Lcom/helpshift/support/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected getAndStoreMessages(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 10
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;
    .param p4, "chatLaunchSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 1124
    .local v3, "profileId":Ljava/lang/String;
    invoke-static {p1}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v7

    .line 1125
    .local v7, "issue":Lcom/helpshift/support/model/Issue;
    invoke-virtual {v7}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v9

    .line 1127
    .local v9, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/support/model/Message;

    .line 1133
    .local v8, "lastMessage":Lcom/helpshift/support/model/Message;
    :goto_0
    new-instance v1, Lcom/helpshift/support/HSApiData$13;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/HSApiData$13;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 1146
    .local v1, "localSuccess":Landroid/os/Handler;
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    .line 1147
    invoke-virtual {v8}, Lcom/helpshift/support/model/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    move-object v4, p1

    move-object v6, p4

    .line 1146
    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/support/HSApiClient;->fetchMessages(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    return-void

    .line 1130
    .end local v1    # "localSuccess":Landroid/os/Handler;
    .end local v8    # "lastMessage":Lcom/helpshift/support/model/Message;
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/support/model/Message;

    .restart local v8    # "lastMessage":Lcom/helpshift/support/model/Message;
    goto :goto_0
.end method

.method public getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    .locals 6
    .param p1, "failure"    # Landroid/os/Handler;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 1529
    new-instance v0, Lcom/helpshift/support/HSApiData$21;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiData$21;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 1554
    .local v0, "apiFailHandler":Landroid/os/Handler;
    return-object v0
.end method

.method protected getApiSuccessHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    .locals 1
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 1565
    new-instance v0, Lcom/helpshift/support/HSApiData$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/support/HSApiData$22;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1580
    .local v0, "apiSuccessHandler":Landroid/os/Handler;
    return-object v0
.end method

.method protected getCSatDraft()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getCSatDraft()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getCSatState(Ljava/lang/String;)Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->isCSatEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1751
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getIssueCSatStates()Lorg/json/JSONObject;

    move-result-object v1

    .line 1752
    .local v1, "issueCSatStates":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1754
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1755
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1756
    .local v2, "state":I
    invoke-static {}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->values()[Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    move-result-object v3

    aget-object v3, v3, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    .end local v1    # "issueCSatStates":Lorg/json/JSONObject;
    .end local v2    # "state":I
    :goto_0
    return-object v3

    .line 1758
    .restart local v1    # "issueCSatStates":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "issueCSatStates":Lorg/json/JSONObject;
    :cond_0
    sget-object v3, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    goto :goto_0
.end method

.method protected getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    .line 366
    .local v1, "storedConfig":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    .end local v0    # "msgToPost":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/HSApiData;->getAndStoreConfig(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 372
    return-void
.end method

.method protected getDeviceIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getHSId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1943
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1944
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1945
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1949
    .local v0, "email":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1947
    .end local v0    # "email":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v2, v1}, Lcom/helpshift/support/ProfilesManager;->getEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "email":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getFaqsDataForSection(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/support/storage/FaqDAO;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting faqs for section"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;

    .prologue
    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v3, p1, p2}, Lcom/helpshift/support/storage/FaqDAO;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting faqs for section"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getFilteredMetaData(Ljava/lang/Boolean;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "isAddInfo"    # Ljava/lang/Boolean;
    .param p2, "userInfo"    # Ljava/util/HashMap;

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/helpshift/support/HSApiData;->getMetaInfo(Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v1

    .line 694
    .local v1, "metaInfo":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 696
    :try_start_0
    const-string/jumbo v2, "user_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    invoke-direct {p0, v1}, Lcom/helpshift/support/HSApiData;->filterForPrivateData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 706
    :cond_1
    return-object v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "userInfo JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getHSId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1179
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "profile_id":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getUUID()Ljava/lang/String;

    move-result-object v2

    .line 1181
    .local v2, "uuid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1183
    .local v0, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    :goto_0
    return-object v0

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getUUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 10
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, "profileId":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, v3}, Lcom/helpshift/support/HSStorage;->getIssuesTs(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 642
    .local v9, "ts":Ljava/util/HashMap;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    const-string/jumbo v0, "success"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 645
    .local v7, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 646
    .local v8, "issuesMess":Landroid/os/Message;
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 647
    invoke-virtual {p1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 654
    .end local v7    # "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Issue;>;"
    .end local v8    # "issuesMess":Landroid/os/Message;
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/support/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 652
    :cond_1
    const/16 v0, 0x193

    invoke-direct {p0, p2, v0}, Lcom/helpshift/support/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method protected getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 15
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "chatLaunchSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/support/HSStorage;->getIssuesTs(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    .line 616
    .local v14, "ts":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, "profileId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 618
    const-string/jumbo v1, "success"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const-string/jumbo v1, "ts"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 620
    .local v5, "dateStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->generateMC()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/helpshift/support/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 628
    .end local v5    # "dateStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 623
    :cond_0
    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v4

    move-object/from16 v13, p3

    invoke-direct/range {v6 .. v13}, Lcom/helpshift/support/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_1
    const/16 v1, 0x193

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/helpshift/support/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected getLoggedInHSId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getHSId()Ljava/lang/String;

    move-result-object v0

    .line 1175
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/model/Profile;->getSaltedIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1892
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1894
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 1898
    :goto_0
    return-object v0

    .line 1896
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/support/model/Profile;->getSaltedIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMessagesWithFails(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1479
    :try_start_0
    invoke-static {p1}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v1

    .line 1480
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/helpshift/support/HSStorage;->getFailedMessages(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1481
    invoke-static {v1}, Lcom/helpshift/support/util/IssuesUtil;->messageListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1480
    invoke-virtual {v2, v3, v4}, Lcom/helpshift/support/HSStorage;->mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1484
    .end local v1    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    :goto_0
    return-object v2

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method protected getMetaInfo(Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "isAddInfo"    # Ljava/lang/Boolean;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->isCustomIdentifier()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    .line 660
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {v0, p1, v1}, Lcom/helpshift/support/util/Meta;->getMetaInfo(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/helpshift/support/util/Meta;->getMetaInfo(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 919
    :try_start_0
    new-instance v1, Lcom/helpshift/support/HSApiData$12;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/support/HSApiData$12;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 931
    .local v1, "localSuccess":Landroid/os/Handler;
    invoke-virtual {p0, v1, p2}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    .end local v1    # "localSuccess":Landroid/os/Handler;
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getNotificationData(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 939
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getPopulatedSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "sectionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v4, p1}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/helpshift/support/HSApiData;->getPopulatedSections(Ljava/util/ArrayList;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v3

    .line 336
    return-object v3

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "s":Landroid/database/SQLException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Database exception in getting sections data "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPopulatedSections(Ljava/util/ArrayList;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .locals 3
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v1, "sectionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 320
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/Section;

    invoke-virtual {p0, v2, p2}, Lcom/helpshift/support/HSApiData;->isSectionEmpty(Lcom/helpshift/support/Section;Lcom/helpshift/support/FaqTagFilter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-object v1
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1904
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1905
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 1909
    .local v1, "profileId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1907
    .end local v1    # "profileId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v2, v0}, Lcom/helpshift/support/ProfilesManager;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "profileId":Ljava/lang/String;
    goto :goto_0
.end method

.method public getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1421
    const/4 v1, 0x0

    .line 1423
    .local v1, "question":Lcom/helpshift/support/Faq;
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/support/storage/FaqDAO;->getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1427
    :goto_0
    if-nez v1, :cond_0

    .line 1428
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/HSApiData;->getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1435
    :goto_1
    return-void

    .line 1424
    :catch_0
    move-exception v2

    .line 1425
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting faq "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1430
    .end local v2    # "s":Landroid/database/SQLException;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1431
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1432
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1433
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/HSApiData;->getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1
.end method

.method public getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;
    .locals 1
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v0

    return-object v0
.end method

.method public getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .locals 6
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;
    .param p4, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;

    .prologue
    .line 1333
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v4, p1}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v3

    .line 1334
    .local v3, "section":Lcom/helpshift/support/Section;
    if-eqz v3, :cond_0

    .line 1335
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1336
    .local v1, "msgToPost":Landroid/os/Message;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1337
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1339
    .end local v1    # "msgToPost":Landroid/os/Message;
    :cond_0
    new-instance v0, Lcom/helpshift/support/HSApiData$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/support/HSApiData$18;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1351
    .local v0, "localSuccess":Landroid/os/Handler;
    invoke-direct {p0, v0, p3, p4}, Lcom/helpshift/support/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    .end local v0    # "localSuccess":Landroid/os/Handler;
    .end local v3    # "section":Lcom/helpshift/support/Section;
    :goto_0
    return-void

    .line 1352
    :catch_0
    move-exception v2

    .line 1353
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Database exception in getting section data "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSectionSync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1363
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v2

    .line 1364
    .local v2, "section":Lcom/helpshift/support/Section;
    if-eqz v2, :cond_0

    .line 1365
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1366
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1367
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    .end local v0    # "msgToPost":Landroid/os/Message;
    .end local v2    # "section":Lcom/helpshift/support/Section;
    :goto_0
    return-void

    .line 1369
    .restart local v2    # "section":Lcom/helpshift/support/Section;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1370
    .restart local v0    # "msgToPost":Landroid/os/Message;
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    .end local v0    # "msgToPost":Landroid/os/Message;
    .end local v2    # "section":Lcom/helpshift/support/Section;
    :catch_0
    move-exception v1

    .line 1373
    .local v1, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting section data "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getSections()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v3}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-object v2

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting sections data "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .locals 6
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;

    .prologue
    .line 281
    const/4 v3, 0x0

    .line 284
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v4, p3}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, "result":Landroid/os/Message;
    sget v4, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_SUCCESS:I

    iput v4, v1, Landroid/os/Message;->what:I

    .line 297
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    .line 305
    return-void

    .line 285
    .end local v1    # "result":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 286
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Database exception in getting sections data "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v2    # "s":Landroid/database/SQLException;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 301
    .restart local v1    # "result":Landroid/os/Message;
    sget v4, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_FAILURE:I

    iput v4, v1, Landroid/os/Message;->what:I

    .line 302
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected getUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/HSStorage;->setUUID(Ljava/lang/String;)V

    .line 1165
    :cond_0
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1923
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1925
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "username":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1927
    .end local v1    # "username":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v2, v0}, Lcom/helpshift/support/ProfilesManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "username":Ljava/lang/String;
    goto :goto_0
.end method

.method protected install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p1}, Lcom/helpshift/support/HSStorage;->setApiKey(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p2}, Lcom/helpshift/support/HSStorage;->setDomain(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, p3}, Lcom/helpshift/support/HSStorage;->setAppId(Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/helpshift/support/HSApiClient;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-direct {v0, p2, p3, p1, v1}, Lcom/helpshift/support/HSApiClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/support/HSStorage;)V

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    .line 175
    return-void
.end method

.method protected isCSatEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1668
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "csat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected isCustomIdentifier()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSectionEmpty(Lcom/helpshift/support/Section;Lcom/helpshift/support/FaqTagFilter;)Z
    .locals 2
    .param p1, "section"    # Lcom/helpshift/support/Section;
    .param p2, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/helpshift/support/HSApiData;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v0

    .line 341
    .local v0, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Faq;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    return v1
.end method

.method protected loadConfig()V
    .locals 6

    .prologue
    .line 1058
    :try_start_0
    sget-object v3, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v4, "pr"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 1059
    .local v1, "pr":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    .line 1060
    .local v2, "storedConfig":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1061
    invoke-static {v2}, Lcom/helpshift/support/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    .end local v1    # "pr":Lorg/json/JSONObject;
    .end local v2    # "storedConfig":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSON Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadIndex()V
    .locals 2

    .prologue
    .line 1322
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/support/HSApiData$17;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSApiData$17;-><init>(Lcom/helpshift/support/HSApiData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1327
    .local v0, "loadIndexThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1328
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1329
    return-void
.end method

.method public localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/support/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;
    .param p3, "faqTagFilter"    # Lcom/helpshift/support/FaqTagFilter;

    .prologue
    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    if-nez v14, :cond_2

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/support/HSApiData;->updateFlatList()V

    .line 854
    :cond_0
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 856
    .local v10, "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/helpshift/support/Faq;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 858
    .local v9, "lcQuery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v14}, Lcom/helpshift/support/HSStorage;->getDBFlag()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 859
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v14}, Lcom/helpshift/support/HSStorage;->readIndex()Ljava/util/HashMap;

    move-result-object v5

    .line 860
    .local v5, "fullIndex":Ljava/util/HashMap;
    const/4 v11, 0x0

    .line 861
    .local v11, "tfidf":Ljava/util/HashMap;
    const/4 v6, 0x0

    .line 863
    .local v6, "fuzzyIndex":Ljava/util/HashMap;
    if-eqz v5, :cond_1

    .line 864
    const-string/jumbo v14, "i"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "tfidf":Ljava/util/HashMap;
    check-cast v11, Ljava/util/HashMap;

    .line 865
    .restart local v11    # "tfidf":Ljava/util/HashMap;
    const-string/jumbo v14, "f"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "fuzzyIndex":Ljava/util/HashMap;
    check-cast v6, Ljava/util/HashMap;

    .line 868
    .restart local v6    # "fuzzyIndex":Ljava/util/HashMap;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/helpshift/support/HSSearch;->queryDocs(Ljava/lang/String;Ljava/util/HashMap;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v12

    .line 869
    .local v12, "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/helpshift/support/HSSearch;->getFuzzyMatches(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v7

    .line 871
    .local v7, "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 872
    .local v3, "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v14, "f"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 873
    .local v2, "docId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/Faq;

    .line 874
    .local v4, "faq":Lcom/helpshift/support/Faq;
    const-string/jumbo v14, "t"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Lcom/helpshift/support/Faq;->addSearchTerms(Ljava/util/ArrayList;)V

    .line 875
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    .end local v2    # "docId":Ljava/lang/String;
    .end local v3    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v4    # "faq":Lcom/helpshift/support/Faq;
    .end local v5    # "fullIndex":Ljava/util/HashMap;
    .end local v6    # "fuzzyIndex":Ljava/util/HashMap;
    .end local v7    # "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v9    # "lcQuery":Ljava/lang/String;
    .end local v10    # "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/helpshift/support/Faq;>;"
    .end local v11    # "tfidf":Ljava/util/HashMap;
    .end local v12    # "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/Faq;

    .line 850
    .restart local v4    # "faq":Lcom/helpshift/support/Faq;
    invoke-virtual {v4}, Lcom/helpshift/support/Faq;->clearSearchTerms()V

    goto :goto_1

    .line 878
    .end local v4    # "faq":Lcom/helpshift/support/Faq;
    .restart local v5    # "fullIndex":Ljava/util/HashMap;
    .restart local v6    # "fuzzyIndex":Ljava/util/HashMap;
    .restart local v7    # "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v9    # "lcQuery":Ljava/lang/String;
    .restart local v10    # "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/helpshift/support/Faq;>;"
    .restart local v11    # "tfidf":Ljava/util/HashMap;
    .restart local v12    # "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 879
    .restart local v3    # "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v14, "f"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 880
    .restart local v2    # "docId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/Faq;

    .line 881
    .restart local v4    # "faq":Lcom/helpshift/support/Faq;
    const-string/jumbo v14, "t"

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Lcom/helpshift/support/Faq;->addSearchTerms(Ljava/util/ArrayList;)V

    .line 882
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 885
    .end local v2    # "docId":Ljava/lang/String;
    .end local v3    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v4    # "faq":Lcom/helpshift/support/Faq;
    .end local v5    # "fullIndex":Ljava/util/HashMap;
    .end local v6    # "fuzzyIndex":Ljava/util/HashMap;
    .end local v7    # "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v11    # "tfidf":Ljava/util/HashMap;
    .end local v12    # "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/Faq;

    .line 887
    .restart local v4    # "faq":Lcom/helpshift/support/Faq;
    invoke-virtual {v4}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 888
    .local v13, "title":Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 889
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 894
    .end local v4    # "faq":Lcom/helpshift/support/Faq;
    .end local v8    # "i":I
    .end local v13    # "title":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    .line 895
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v1}, Lcom/helpshift/support/storage/FaqDAO;->getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 898
    :goto_4
    return-object v14

    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4
.end method

.method protected login(Ljava/lang/String;)Z
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1853
    invoke-static {}, Lcom/helpshift/support/fragments/SupportFragment;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1854
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Login should be called before starting a Helpshift session"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :goto_0
    return v2

    .line 1858
    :cond_0
    sget-object v3, Lcom/helpshift/support/res/values/HSConsts;->invalidLogins:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1859
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->logout()V

    goto :goto_0

    .line 1863
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/helpshift/support/HSApiData;->clearNotifications(Ljava/lang/String;)V

    .line 1865
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, "previousLogin":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1867
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2, p1}, Lcom/helpshift/support/HSStorage;->setLoginIdentifier(Ljava/lang/String;)V

    .line 1868
    new-instance v1, Lcom/helpshift/support/HSApiData$26;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSApiData$26;-><init>(Lcom/helpshift/support/HSApiData;)V

    .line 1875
    .local v1, "success":Landroid/os/Handler;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/helpshift/support/HSApiData;->getNotificationData(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1878
    .end local v1    # "success":Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected logout()V
    .locals 2

    .prologue
    .line 1882
    invoke-static {}, Lcom/helpshift/support/fragments/SupportFragment;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "Logout should be called before starting a Helpshift session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :goto_0
    return-void

    .line 1886
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSApiData;->clearNotifications(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/support/HSStorage;->setLoginIdentifier(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->showNotifications()V

    goto :goto_0
.end method

.method public markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;
    .param p4, "helpful"    # Ljava/lang/Boolean;

    .prologue
    .line 802
    new-instance v0, Lcom/helpshift/support/HSApiData$10;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiData$10;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 823
    .local v0, "localSuccess":Landroid/os/Handler;
    new-instance v6, Lcom/helpshift/support/HSApiData$11;

    invoke-direct {v6, p0, p3, p4, p2}, Lcom/helpshift/support/HSApiData$11;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;)V

    .line 833
    .local v6, "localFailure":Landroid/os/Handler;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v1, v0, v6, p3}, Lcom/helpshift/support/HSApiClient;->markHelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    .line 839
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    invoke-virtual {v1, v0, v6, p3}, Lcom/helpshift/support/HSApiClient;->markUnhelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    .line 1235
    const/4 v7, 0x0

    .line 1238
    .local v7, "crittercismId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "com.crittercism.app.Crittercism"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1239
    .local v8, "Crittercism":Ljava/lang/Class;
    const-string/jumbo v3, "getUserUUID"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v8, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1240
    .local v11, "getUserUUID":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v11, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1247
    .end local v8    # "Crittercism":Ljava/lang/Class;
    .end local v11    # "getUserUUID":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v2, Lcom/helpshift/support/HSApiData$14;

    invoke-direct {v2, p0, p1}, Lcom/helpshift/support/HSApiData$14;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;)V

    .line 1256
    .local v2, "localSuccess":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/helpshift/support/HSApiClient;->registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1241
    .end local v2    # "localSuccess":Landroid/os/Handler;
    :catch_0
    move-exception v9

    .line 1242
    .local v9, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v3, "If you are not using Crittercism. Please ignore this"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1243
    .end local v9    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v10

    .line 1244
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v3, "If you are not using Crittercism. Please ignore this"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportActionEvents()V
    .locals 1

    .prologue
    .line 971
    invoke-static {}, Lcom/helpshift/support/HSFunnel;->takeActions()Lorg/json/JSONArray;

    move-result-object v0

    .line 972
    .local v0, "actions":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/helpshift/support/HSApiData;->reportActionEvents(Lorg/json/JSONArray;)V

    .line 973
    return-void
.end method

.method protected reportAppStartEvent()V
    .locals 10

    .prologue
    .line 952
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 953
    .local v0, "actions":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 955
    .local v2, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "ts"

    sget-object v4, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 956
    const-string/jumbo v3, "t"

    const-string/jumbo v4, "a"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    invoke-direct {p0, v0}, Lcom/helpshift/support/HSApiData;->reportActionEvents(Lorg/json/JSONArray;)V

    .line 962
    return-void

    .line 958
    :catch_0
    move-exception v1

    .line 959
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected resetReviewCounter()V
    .locals 8

    .prologue
    .line 1094
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getReviewCounter()I

    move-result v3

    .line 1097
    .local v3, "reviewCounter":I
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "pr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1098
    .local v2, "pr":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 1099
    const-string/jumbo v4, "t"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "counterType":Ljava/lang/String;
    const-string/jumbo v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1101
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 1105
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4, v3}, Lcom/helpshift/support/HSStorage;->setReviewCounter(I)V

    .line 1106
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->setLaunchReviewCounter(I)V

    .line 1111
    .end local v0    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 1102
    .restart local v0    # "counterType":Ljava/lang/String;
    .restart local v2    # "pr":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1103
    const/4 v3, 0x0

    goto :goto_0

    .line 1108
    .end local v0    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1109
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Reseting review counter"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected resetServiceInterval()V
    .locals 0

    .prologue
    .line 1438
    invoke-static {}, Lcom/helpshift/support/HSService;->resetInterval()V

    .line 1439
    return-void
.end method

.method protected sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 14
    .param p1, "rating"    # Ljava/lang/Integer;
    .param p2, "feedback"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1677
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 1678
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1679
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/helpshift/support/HSApiData;->getCSatState(Ljava/lang/String;)Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    move-result-object v11

    .line 1680
    .local v11, "hasCSatSurveyBeenSent":Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    sget-object v2, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq v11, v2, :cond_0

    sget-object v2, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    if-ne v11, v2, :cond_1

    .line 1682
    :cond_0
    new-instance v6, Lcom/helpshift/support/HSApiData$24;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v6, p0, v0, v1}, Lcom/helpshift/support/HSApiData$24;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1695
    .local v6, "localSuccess":Landroid/os/Handler;
    sget-object v2, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v2}, Lcom/helpshift/support/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1697
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1699
    .local v12, "requestObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "r"

    invoke-virtual {v12, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1700
    const-string/jumbo v2, "f"

    move-object/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1701
    const-string/jumbo v2, "id"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csat_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2, v3, v12}, Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v8

    .line 1708
    .local v8, "apiFailHandler":Landroid/os/Handler;
    new-instance v7, Lcom/helpshift/support/HSApiData$25;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, p0, v0, v1, v8}, Lcom/helpshift/support/HSApiData$25;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1725
    .local v7, "localFailure":Landroid/os/Handler;
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->client:Lcom/helpshift/support/HSApiClient;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/helpshift/support/HSApiClient;->sendCustomerSatisfactionRating(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1746
    .end local v6    # "localSuccess":Landroid/os/Handler;
    .end local v7    # "localFailure":Landroid/os/Handler;
    .end local v8    # "apiFailHandler":Landroid/os/Handler;
    .end local v11    # "hasCSatSurveyBeenSent":Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    .end local v12    # "requestObject":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 1702
    .restart local v6    # "localSuccess":Landroid/os/Handler;
    .restart local v11    # "hasCSatSurveyBeenSent":Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    .restart local v12    # "requestObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 1703
    .local v9, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException : "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1728
    .end local v6    # "localSuccess":Landroid/os/Handler;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v12    # "requestObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 1729
    .local v13, "result":Landroid/os/Message;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1730
    .local v10, "failureMessage":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    const-string/jumbo v2, "reason"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CSat survey already done for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iput-object v10, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1734
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1737
    .end local v10    # "failureMessage":Ljava/util/HashMap;
    .end local v11    # "hasCSatSurveyBeenSent":Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    .end local v13    # "result":Landroid/os/Message;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 1739
    .restart local v13    # "result":Landroid/os/Message;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1740
    .restart local v10    # "failureMessage":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "Rating not in range"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    iput-object v10, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1744
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected sendErrorReports(Ljava/lang/String;)V
    .locals 11
    .param p1, "reportType"    # Ljava/lang/String;

    .prologue
    .line 1963
    invoke-static {p1}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->getErrorReportsByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1964
    .local v5, "errorReports":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/ErrorReport;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1992
    :cond_0
    return-void

    .line 1969
    :cond_1
    const/16 v0, 0xa

    .line 1970
    .local v0, "BATCH_SIZE":I
    const/4 v2, 0x0

    .local v2, "currentItem":I
    const/4 v1, 0x0

    .line 1971
    .local v1, "batchItem":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v7, "reportIdsConsumed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1974
    .local v6, "jsonArrayReports":Lorg/json/JSONArray;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 1975
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/support/model/ErrorReport;

    .line 1976
    .local v4, "errorReport":Lcom/helpshift/support/model/ErrorReport;
    invoke-virtual {v4}, Lcom/helpshift/support/model/ErrorReport;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1977
    invoke-virtual {v4}, Lcom/helpshift/support/model/ErrorReport;->getReportId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1978
    add-int/lit8 v2, v2, 0x1

    .line 1979
    add-int/lit8 v1, v1, 0x1

    .line 1981
    if-eq v1, v0, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v2, v8, :cond_2

    .line 1983
    :cond_3
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v8, v9}, Lcom/helpshift/support/HSApiData;->sendErrorReportsBatch(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    :goto_1
    const/4 v1, 0x0

    .line 1988
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "reportIdsConsumed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1989
    .restart local v7    # "reportIdsConsumed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "jsonArrayReports":Lorg/json/JSONArray;
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .restart local v6    # "jsonArrayReports":Lorg/json/JSONArray;
    goto :goto_0

    .line 1984
    :catch_0
    move-exception v3

    .line 1985
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "HelpShiftDebug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing JSONArray "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected declared-synchronized sendFailedApiCalls()V
    .locals 21

    .prologue
    .line 1584
    monitor-enter p0

    :try_start_0
    new-instance v18, Lcom/helpshift/support/HSApiData$23;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/helpshift/support/HSApiData$23;-><init>(Lcom/helpshift/support/HSApiData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    .local v18, "localHandler":Landroid/os/Handler;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getFailedApiCalls()Lorg/json/JSONObject;

    move-result-object v16

    .line 1594
    .local v16, "failedApiCalls":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    if-nez v5, :cond_0

    .line 1595
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    .line 1598
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1599
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1600
    .local v17, "key":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 1601
    .local v15, "failedApiCall":Lorg/json/JSONObject;
    const-string/jumbo v5, "p"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1602
    .local v19, "params":Lorg/json/JSONObject;
    const-string/jumbo v5, "t"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1604
    .local v20, "type":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/support/HSApiData;->getApiSuccessHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v6

    .line 1605
    .local v6, "apiSuccessHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1607
    .local v7, "apiFailHandler":Landroid/os/Handler;
    packed-switch v20, :pswitch_data_0

    .line 1637
    .end local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .end local v7    # "apiFailHandler":Landroid/os/Handler;
    .end local v15    # "failedApiCall":Lorg/json/JSONObject;
    .end local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "params":Lorg/json/JSONObject;
    .end local v20    # "type":I
    :goto_0
    monitor-exit p0

    return-void

    .line 1609
    .restart local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .restart local v7    # "apiFailHandler":Landroid/os/Handler;
    .restart local v15    # "failedApiCall":Lorg/json/JSONObject;
    .restart local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v19    # "params":Lorg/json/JSONObject;
    .restart local v20    # "type":I
    :pswitch_0
    :try_start_2
    const-string/jumbo v5, "f"

    .line 1610
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "h"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1609
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5, v8}, Lcom/helpshift/support/HSApiData;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1634
    .end local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .end local v7    # "apiFailHandler":Landroid/os/Handler;
    .end local v15    # "failedApiCall":Lorg/json/JSONObject;
    .end local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "params":Lorg/json/JSONObject;
    .end local v20    # "type":I
    :catch_0
    move-exception v14

    .line 1635
    .local v14, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v8, "JSONException"

    invoke-static {v5, v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1584
    .end local v14    # "e":Lorg/json/JSONException;
    .end local v18    # "localHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1613
    .restart local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .restart local v7    # "apiFailHandler":Landroid/os/Handler;
    .restart local v15    # "failedApiCall":Lorg/json/JSONObject;
    .restart local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "localHandler":Landroid/os/Handler;
    .restart local v19    # "params":Lorg/json/JSONObject;
    .restart local v20    # "type":I
    :pswitch_1
    :try_start_4
    const-string/jumbo v5, "profile-id"

    .line 1614
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "device-token"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1613
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5, v8}, Lcom/helpshift/support/HSApiData;->updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :pswitch_2
    invoke-static/range {v19 .. v19}, Lcom/helpshift/util/HSJSONUtils;->toStringHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lcom/helpshift/support/HSApiData;->reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1619
    :pswitch_3
    const-string/jumbo v5, "mids"

    .line 1620
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string/jumbo v5, "src"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v5, "at"

    .line 1621
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    .line 1619
    invoke-direct/range {v5 .. v10}, Lcom/helpshift/support/HSApiData;->updateMessageSeenState(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1624
    :pswitch_4
    const-string/jumbo v5, "r"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v5, "f"

    .line 1625
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v5, "id"

    .line 1626
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    move-object v12, v6

    move-object v13, v7

    .line 1624
    invoke-virtual/range {v8 .. v13}, Lcom/helpshift/support/HSApiData;->sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1632
    .end local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .end local v7    # "apiFailHandler":Landroid/os/Handler;
    .end local v15    # "failedApiCall":Lorg/json/JSONObject;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "params":Lorg/json/JSONObject;
    .end local v20    # "type":I
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected sendFailedMessages()V
    .locals 10

    .prologue
    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/helpshift/support/HSStorage;->popFailedMessage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1493
    .local v9, "failedMessage":Lorg/json/JSONObject;
    if-nez v9, :cond_0

    .line 1515
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1497
    .restart local v9    # "failedMessage":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lcom/helpshift/support/HSApiData$20;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSApiData$20;-><init>(Lcom/helpshift/support/HSApiData;)V

    .line 1506
    .local v1, "localSuccess":Landroid/os/Handler;
    const-string/jumbo v0, "issue_id"

    .line 1507
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "body"

    .line 1508
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "type"

    .line 1509
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "refers"

    .line 1510
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "state"

    const/4 v2, 0x0

    .line 1511
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    move-object v0, p0

    move-object v2, v1

    .line 1506
    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/support/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1512
    .end local v1    # "localSuccess":Landroid/os/Handler;
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 1513
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v2, "SendfailedMessages failed"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .prologue
    .line 1768
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getIssueCSatStates()Lorg/json/JSONObject;

    move-result-object v1

    .line 1769
    .local v1, "issueCSatStates":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1771
    .local v2, "status":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 1772
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "issueCSatStates":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1778
    .restart local v1    # "issueCSatStates":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq p2, v3, :cond_1

    sget-object v3, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq p2, v3, :cond_1

    .line 1780
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1781
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1782
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v4}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1783
    :cond_1
    invoke-virtual {p2}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->ordinal()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1784
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1785
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3, v1}, Lcom/helpshift/support/HSStorage;->setIssueCSatStates(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    :cond_2
    :goto_0
    return-object v2

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1953
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1955
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSStorage;->setEmail(Ljava/lang/String;)V

    .line 1959
    :goto_0
    return-void

    .line 1957
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/support/ProfilesManager;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1914
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1915
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSStorage;->setIdentity(Ljava/lang/String;)V

    .line 1919
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/support/ProfilesManager;->setProfileId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1933
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1934
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/HSStorage;->setUsername(Ljava/lang/String;)V

    .line 1939
    :goto_0
    return-void

    .line 1937
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->profilesManager:Lcom/helpshift/support/ProfilesManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/support/ProfilesManager;->setName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showNotifications()V
    .locals 12

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v10

    .line 1833
    .local v10, "profileId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, v10}, Lcom/helpshift/support/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1835
    .local v9, "notifications":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1836
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1839
    .local v1, "issueId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1840
    .local v8, "notification":Lorg/json/JSONObject;
    const-string/jumbo v0, "issueTs"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1841
    .local v2, "issueTs":I
    const-string/jumbo v0, "newMessageCount"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1842
    .local v3, "newMessageCount":I
    const-string/jumbo v0, "chatLaunchSource"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1843
    .local v4, "chatLaunchSource":Ljava/lang/String;
    const-string/jumbo v0, "contentTitle"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1844
    .local v5, "contentTitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/util/HSNotification;->showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1845
    .end local v2    # "issueTs":I
    .end local v3    # "newMessageCount":I
    .end local v4    # "chatLaunchSource":Ljava/lang/String;
    .end local v5    # "contentTitle":Ljava/lang/String;
    .end local v8    # "notification":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 1846
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v11, "showNotifications"

    invoke-static {v0, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1850
    .end local v1    # "issueId":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "notifications":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method protected showReviewP()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1034
    iget-object v5, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getReviewed()I

    move-result v5

    if-nez v5, :cond_1

    .line 1035
    sget-object v5, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "pr"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1036
    .local v2, "pr":Lorg/json/JSONObject;
    sget-object v5, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "rurl"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1037
    .local v4, "rurl":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v5, "s"

    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1038
    iget-object v5, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getReviewCounter()I

    move-result v3

    .line 1039
    .local v3, "reviewCount":I
    const-string/jumbo v5, "t"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "counterType":Ljava/lang/String;
    const-string/jumbo v5, "i"

    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1041
    .local v0, "counterInterval":I
    if-lez v0, :cond_1

    .line 1042
    const-string/jumbo v5, "l"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lt v3, v0, :cond_0

    .line 1044
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1053
    .end local v0    # "counterInterval":I
    .end local v1    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    .end local v3    # "reviewCount":I
    .end local v4    # "rurl":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1045
    .restart local v0    # "counterInterval":I
    .restart local v1    # "counterType":Ljava/lang/String;
    .restart local v2    # "pr":Lorg/json/JSONObject;
    .restart local v3    # "reviewCount":I
    .restart local v4    # "rurl":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1047
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v8, v3

    sub-long/2addr v6, v8

    int-to-long v8, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 1048
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 1053
    .end local v0    # "counterInterval":I
    .end local v1    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    .end local v3    # "reviewCount":I
    .end local v4    # "rurl":Ljava/lang/String;
    :cond_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public startInAppService()V
    .locals 10

    .prologue
    .line 1447
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1448
    .local v5, "enableInAppNotification":Ljava/lang/Boolean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1449
    .local v1, "config":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/support/HSStorage;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    .line 1452
    .local v3, "deviceToken":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/support/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v1

    .line 1453
    const-string/jumbo v8, "enableInAppNotification"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1454
    const-string/jumbo v8, "enableInAppNotification"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, ""

    .line 1461
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "unreg"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    .line 1463
    .local v6, "profileId":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "conversation":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1465
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    const-class v9, Lcom/helpshift/support/HSService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1466
    .local v7, "service":Landroid/content/Intent;
    iget-object v8, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/support/HSStorage;->getLibraryVersion()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "4.1.1-support"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1468
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->stopInAppService()V

    .line 1470
    :cond_2
    iget-object v8, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1475
    .end local v2    # "conversation":Ljava/lang/String;
    .end local v6    # "profileId":Ljava/lang/String;
    .end local v7    # "service":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 1456
    :catch_0
    move-exception v4

    .line 1457
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "HelpShiftDebug"

    const-string/jumbo v9, "startInAppService JSONException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1473
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->stopInAppService()V

    goto :goto_1
.end method

.method protected stopInAppService()V
    .locals 3

    .prologue
    .line 1442
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    const-class v2, Lcom/helpshift/support/HSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1443
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1444
    return-void
.end method

.method protected storeCSatDraft(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "rating"    # Ljava/lang/Integer;
    .param p3, "feedback"    # Ljava/lang/String;

    .prologue
    .line 1795
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1796
    .local v2, "state":Ljava/lang/Boolean;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1797
    .local v0, "csatDraft":Lorg/json/JSONObject;
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 1799
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1800
    const-string/jumbo v3, "rating"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1801
    const-string/jumbo v3, "feedback"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1802
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3, v0}, Lcom/helpshift/support/HSStorage;->setCSatDraft(Lorg/json/JSONObject;)V

    .line 1803
    sget-object v3, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_INPROGRESS:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :goto_0
    return-object v2

    .line 1805
    :catch_0
    move-exception v1

    .line 1806
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public storeFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 1201
    :try_start_0
    iget-object v6, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v6}, Lcom/helpshift/support/HSStorage;->getStoredFiles()Lorg/json/JSONArray;

    move-result-object v2

    .line 1202
    .local v2, "fileJsonList":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v1, "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1205
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1208
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v1, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 1212
    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-interface {v1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 1214
    .local v3, "finalFileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1215
    .local v4, "finalFileJsonList":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1216
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1215
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1218
    :cond_1
    const/16 v6, 0xa

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/helpshift/support/HSApiData;->deleteFiles(Ljava/util/List;)V

    .line 1219
    iget-object v6, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v6, v4}, Lcom/helpshift/support/HSStorage;->setStoredFiles(Lorg/json/JSONArray;)V

    .line 1231
    .end local v1    # "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fileJsonList":Lorg/json/JSONArray;
    .end local v3    # "finalFileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "finalFileJsonList":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :goto_2
    return-void

    .line 1221
    .restart local v1    # "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "fileJsonList":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    :cond_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1222
    .restart local v4    # "finalFileJsonList":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1223
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1222
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1225
    :cond_3
    iget-object v6, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v6, v4}, Lcom/helpshift/support/HSStorage;->setStoredFiles(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1228
    .end local v1    # "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fileJsonList":Lorg/json/JSONArray;
    .end local v4    # "finalFileJsonList":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "storeFile"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected updateMessageSeenState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "chatLaunchSource"    # Ljava/lang/String;

    .prologue
    .line 1640
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/model/Message;->updateMessagesSeenState(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1641
    .local v10, "messageIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1642
    .local v5, "messageIds":Lorg/json/JSONArray;
    sget-object v2, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 1644
    .local v7, "readAt":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1647
    .local v11, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "mids"

    invoke-virtual {v11, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1648
    const-string/jumbo v2, "src"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1649
    const-string/jumbo v2, "at"

    invoke-virtual {v11, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "msg_seen_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1655
    .local v9, "key":Ljava/lang/String;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v3, v11}, Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v4

    .line 1658
    .local v4, "apiFailHandler":Landroid/os/Handler;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/support/HSApiData;->updateMessageSeenState(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    return-void

    .line 1650
    .end local v4    # "apiFailHandler":Landroid/os/Handler;
    .end local v9    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1651
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateReviewCounter()V
    .locals 8

    .prologue
    .line 1069
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getReviewCounter()I

    move-result v3

    .line 1070
    .local v3, "reviewCounter":I
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getLaunchReviewCounter()I

    move-result v1

    .line 1072
    .local v1, "launchReviewCounter":I
    if-nez v3, :cond_0

    .line 1073
    move v1, v3

    .line 1074
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 1077
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1078
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4, v1}, Lcom/helpshift/support/HSStorage;->setLaunchReviewCounter(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->loadConfig()V

    .line 1081
    sget-object v4, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v5, "pr"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1082
    .local v2, "pr":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 1083
    const-string/jumbo v4, "t"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "counterType":Ljava/lang/String;
    const-string/jumbo v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1085
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getLaunchReviewCounter()I

    move-result v3

    .line 1088
    .end local v0    # "counterType":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v4, v3}, Lcom/helpshift/support/HSStorage;->setReviewCounter(I)V

    .line 1089
    return-void
.end method

.method public updateUAToken()V
    .locals 8

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    .line 1263
    .local v4, "profileId":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/support/HSStorage;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "deviceToken":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1267
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "profile-id"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1268
    const-string/jumbo v5, "device-token"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "push_token_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7, v3}, Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 1276
    .local v0, "apiFailHandler":Landroid/os/Handler;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v5, v0, v4, v1}, Lcom/helpshift/support/HSApiData;->updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    return-void

    .line 1269
    .end local v0    # "apiFailHandler":Landroid/os/Handler;
    :catch_0
    move-exception v2

    .line 1270
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "JSONException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
