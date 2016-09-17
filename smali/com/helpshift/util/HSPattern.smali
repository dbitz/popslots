.class public final Lcom/helpshift/util/HSPattern;
.super Ljava/lang/Object;
.source "HSPattern.java"


# static fields
.field private static customPropertyPattern:Ljava/util/regex/Pattern;

.field private static domainNamePattern:Ljava/util/regex/Pattern;

.field private static emailPattern:Ljava/util/regex/Pattern;

.field private static ipPattern:Ljava/util/regex/Pattern;

.field private static propertyKeyPattern:Ljava/util/regex/Pattern;

.field private static specialCharPattern:Ljava/util/regex/Pattern;

.field private static timeStampPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "\\W+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->specialCharPattern:Ljava/util/regex/Pattern;

    .line 9
    const-string/jumbo v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->emailPattern:Ljava/util/regex/Pattern;

    .line 19
    const-string/jumbo v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->ipPattern:Ljava/util/regex/Pattern;

    .line 20
    const-string/jumbo v0, "^\\d+.\\d{3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->timeStampPattern:Ljava/util/regex/Pattern;

    .line 21
    const-string/jumbo v0, "^[A-Za-z0-9][A-Za-z0-9-]*[A-Za-z0-9]\\.helpshift\\.(com|mobi)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->domainNamePattern:Ljava/util/regex/Pattern;

    .line 22
    const-string/jumbo v0, "^[A-Za-z0-9_]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->customPropertyPattern:Ljava/util/regex/Pattern;

    .line 23
    const-string/jumbo v0, "^[\\p{L}\\p{N}][\\p{L}\\p{N}\\p{Pd}\\p{Pc}]*[\\p{L}\\p{N}]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/HSPattern;->propertyKeyPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v1, Lcom/helpshift/util/HSPattern;->emailPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 27
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static checkIpv4Address(Ljava/lang/String;)Z
    .locals 7
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v4

    .line 50
    :cond_1
    sget-object v5, Lcom/helpshift/util/HSPattern;->ipPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 51
    .local v3, "m":Ljava/util/regex/Matcher;
    const/4 v2, 0x1

    .line 52
    .local v2, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 54
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "componentString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 56
    .local v0, "component":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_1

    .line 61
    .end local v0    # "component":Ljava/lang/Integer;
    .end local v1    # "componentString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static checkSpecialCharacters(Ljava/lang/String;)Z
    .locals 3
    .param p0, "issueText"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v1, Lcom/helpshift/util/HSPattern;->specialCharPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 33
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static getComponentPlaceHolderPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "^[\\p{L}\\p{N}-]+_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_\\d{17}-[0-9a-z]{15}$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static getDomainNamePattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/helpshift/util/HSPattern;->domainNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getPropertyKeyPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/helpshift/util/HSPattern;->propertyKeyPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getTimeStampPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/helpshift/util/HSPattern;->timeStampPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static sanitiseCustomPropertyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "sanitisedKey":Ljava/lang/String;
    const-string/jumbo v2, "-"

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/helpshift/util/HSPattern;->customPropertyPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 40
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 43
    :cond_0
    return-object v1
.end method
