.class public Lcom/helpshift/support/UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"


# static fields
.field private static final HELPSHIFT_BASE_PACKAGE_NAME:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "com.helpshift"

    sput-object v0, Lcom/helpshift/support/UncaughtExceptionHandler;->HELPSHIFT_BASE_PACKAGE_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/helpshift/support/UncaughtExceptionHandler;->isCausedByHelpshift(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 30
    .local v0, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/helpshift/support/UncaughtExceptionHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/helpshift/support/UncaughtExceptionHandler$1;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    return-void
.end method

.method private static isCausedByHelpshift(Ljava/lang/Throwable;)Z
    .locals 8
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 67
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v5, v2

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v1, v2, v4

    .line 68
    .local v1, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/helpshift/support/UncaughtExceptionHandler;->HELPSHIFT_BASE_PACKAGE_NAME:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    const/4 v3, 0x1

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 72
    .end local v1    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 73
    goto :goto_1
.end method
