.class public Lorg/jboss/netty/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 48
    :try_start_0
    const-string/jumbo v3, "org.jboss.netty.debug"

    invoke-static {v3}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .local v1, "value":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_1
    return v2

    .line 49
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string/jumbo v3, "N"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method
