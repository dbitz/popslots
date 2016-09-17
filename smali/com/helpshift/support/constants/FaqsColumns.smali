.class public Lcom/helpshift/support/constants/FaqsColumns;
.super Ljava/lang/Object;
.source "FaqsColumns.java"


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CATEGORY_TAGS:Ljava/lang/String; = "c_tags"

.field public static final HELPFUL:Ljava/lang/String; = "helpful"

.field public static final PUBLISH_ID:Ljava/lang/String; = "publish_id"

.field public static final QUESTION_ID:Ljava/lang/String; = "question_id"

.field public static final RTL:Ljava/lang/String; = "rtl"

.field public static final SECTION_ID:Ljava/lang/String; = "section_id"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UI_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "question_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "publish_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "section_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/support/constants/FaqsColumns;->UI_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
