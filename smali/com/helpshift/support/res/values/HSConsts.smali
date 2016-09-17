.class public final Lcom/helpshift/support/res/values/HSConsts;
.super Ljava/lang/Object;
.source "HSConsts.java"


# static fields
.field public static final ADMIN_ATTACHMENT_GENERIC_TYPE:Ljava/lang/String; = "admin_attachment_generic"

.field public static final ADMIN_ATTACHMENT_IMAGE_TYPE:Ljava/lang/String; = "admin_attachment_image"

.field public static final ENABLE_DEFAULT_FALLBACK_LANGUAGE:Ljava/lang/String; = "enableDefaultFallbackLanguage"

.field public static final ISSUE_FILING:Ljava/lang/String; = "issue-filing"

.field public static final MESSAGE_FILING:Ljava/lang/String; = "message-filing"

.field public static final QUESTION_FLOW:Ljava/lang/String; = "questionFlow"

.field public static final REASON_ISSUE_FILING:I = 0x1

.field public static final REASON_MESSAGE_FILING:I = 0x3

.field public static final REASON_OPEN_ISSUE:I = 0x2

.field public static final SEARCH_PERFORMED:Ljava/lang/String; = "search_performed"

.field public static final SEARCH_QUERY:Ljava/lang/String; = "searchQuery"

.field public static final SHOW_CONVERSATION_RESOLUTION_QUESTION:Ljava/lang/String; = "showConversationResolutionQuestion"

.field public static final SHOW_SEARCH_ON_NEW_CONVERSATION:Ljava/lang/String; = "showSearchOnNewConversation"

.field public static final SHOW_SEARCH_ON_NEW_CONVERSATION_DEFAULT:Z = false

.field public static final SHOW_SEARCH_ON_NEW_CONVERSATION_FLOW:Ljava/lang/String; = "showSearchOnNewConversationFlow"

.field public static final SHOW_SEARCH_ON_NEW_CONVERSATION_REQUEST_CODE:I = 0x7fbb

.field public static final SRC_INAPP:Ljava/lang/String; = "inapp"

.field public static final SRC_INBOX:Ljava/lang/String; = "inbox"

.field public static final SRC_PUSH:Ljava/lang/String; = "push"

.field public static final SRC_SUPPORT:Ljava/lang/String; = "support"

.field public static final STATUS_INPROGRESS:Ljava/lang/String; = "1"

.field public static final STATUS_NEW:Ljava/lang/String; = "0"

.field public static final STATUS_REJECTED:Ljava/lang/String; = "3"

.field public static final STATUS_RESOLVED:Ljava/lang/String; = "2"

.field public static final invalidLogins:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/support/res/values/HSConsts;->invalidLogins:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
