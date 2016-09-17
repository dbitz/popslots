.class public Lorg/jboss/netty/util/internal/StackTraceSimplifier;
.super Ljava/lang/Object;
.source "StackTraceSimplifier.java"


# static fields
.field private static final EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

.field private static final SIMPLIFY_STACK_TRACE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lorg/jboss/netty/util/DebugUtil;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->SIMPLIFY_STACK_TRACE:Z

    .line 42
    const-string/jumbo v0, "^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static simplify(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 55
    sget-boolean v3, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->SIMPLIFY_STACK_TRACE:Z

    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 64
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 69
    sget-object v3, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v1, "simpleTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    aget-object v3, v2, v5

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 80
    sget-object v3, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_3
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method
