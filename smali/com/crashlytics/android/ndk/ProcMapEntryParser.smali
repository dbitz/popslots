.class final Lcom/crashlytics/android/ndk/ProcMapEntryParser;
.super Ljava/lang/Object;
.source "ProcMapEntryParser.java"


# static fields
.field private static final MAP_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "\\s*(\\p{XDigit}+)-\\s*(\\p{XDigit}+)\\s+(.{4})\\s+\\p{XDigit}+\\s+.+\\s+\\d+\\s+(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->MAP_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static isRelevant(JJLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # J
    .param p2, "size"    # J
    .param p4, "perms"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 44
    const/16 v0, 0x78

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/crashlytics/android/ndk/ProcMapEntry;
    .locals 13
    .param p0, "mapEntry"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x10

    .line 28
    sget-object v8, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->MAP_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 30
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-object v7

    .line 34
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 35
    .local v0, "address":J
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v2, v8, v0

    .line 36
    .local v2, "size":J
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "perms":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "path":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->isRelevant(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v7, Lcom/crashlytics/android/ndk/ProcMapEntry;

    move-wide v8, v0

    move-wide v10, v2

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/crashlytics/android/ndk/ProcMapEntry;-><init>(JJLjava/lang/String;)V

    goto :goto_0
.end method
