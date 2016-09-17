.class public Lcom/helpshift/support/constants/ErrorReportTypes;
.super Ljava/lang/Object;
.source "ErrorReportTypes.java"


# static fields
.field public static RUNTIME_ERROR:Ljava/lang/String;

.field public static SCHEMA_ERROR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "runtime_error"

    sput-object v0, Lcom/helpshift/support/constants/ErrorReportTypes;->RUNTIME_ERROR:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "schema_error"

    sput-object v0, Lcom/helpshift/support/constants/ErrorReportTypes;->SCHEMA_ERROR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method
