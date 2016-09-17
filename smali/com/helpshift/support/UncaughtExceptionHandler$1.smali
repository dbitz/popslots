.class final Lcom/helpshift/support/UncaughtExceptionHandler$1;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/UncaughtExceptionHandler;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/helpshift/support/UncaughtExceptionHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/helpshift/support/UncaughtExceptionHandler$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    # invokes: Lcom/helpshift/support/UncaughtExceptionHandler;->isCausedByHelpshift(Ljava/lang/Throwable;)Z
    invoke-static {p2}, Lcom/helpshift/support/UncaughtExceptionHandler;->access$000(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Lcom/helpshift/support/model/ErrorReport;

    iget-object v1, p0, Lcom/helpshift/support/UncaughtExceptionHandler$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/helpshift/support/HSApiData;

    iget-object v3, p0, Lcom/helpshift/support/UncaughtExceptionHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/helpshift/support/constants/ErrorReportTypes;->RUNTIME_ERROR:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/model/ErrorReport;-><init>(Landroid/content/Context;Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 41
    .local v0, "errorReport":Lcom/helpshift/support/model/ErrorReport;
    invoke-static {v0}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->storeErrorReport(Lcom/helpshift/support/model/ErrorReport;)V

    .line 45
    .end local v0    # "errorReport":Lcom/helpshift/support/model/ErrorReport;
    :cond_0
    iget-object v1, p0, Lcom/helpshift/support/UncaughtExceptionHandler$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/helpshift/support/UncaughtExceptionHandler$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 48
    :cond_1
    return-void
.end method
