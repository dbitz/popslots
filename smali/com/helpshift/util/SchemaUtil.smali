.class public Lcom/helpshift/util/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateDomainName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "domainName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lcom/helpshift/util/HSPattern;->getDomainNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 28
    .local v0, "domainNamePattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 29
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private static validateInputForComponent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p1}, Lcom/helpshift/util/HSPattern;->getComponentPlaceHolderPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 11
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 13
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static validatePlatformId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "platformId"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "platform"

    invoke-static {p0, v0}, Lcom/helpshift/util/SchemaUtil;->validateInputForComponent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static validatePropertyKey(Ljava/lang/String;)Z
    .locals 3
    .param p0, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/helpshift/util/HSPattern;->getPropertyKeyPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 34
    .local v1, "propertyKeyPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 35
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static validateTimestamp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/helpshift/util/HSPattern;->getTimeStampPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 22
    .local v1, "timeStampPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 23
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method
