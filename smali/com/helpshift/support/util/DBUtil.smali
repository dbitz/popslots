.class public Lcom/helpshift/support/util/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDatabaseFolder()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/helpshift/support/storage/IssuesDataSource;->createDB()V

    .line 14
    return-void
.end method

.method public static restoreDatabaseBackup(Ljava/lang/String;)V
    .locals 1
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->doesDatabaseExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/helpshift/support/util/DBUtil;->createDatabaseFolder()V

    .line 22
    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->restoreDatabaseBackup(Ljava/lang/String;)V

    goto :goto_0
.end method
