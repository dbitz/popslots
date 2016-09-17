.class public final Lcom/helpshift/util/HSFormat;
.super Ljava/lang/Object;
.source "HSFormat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpshiftDebug"

.field public static final breadCrumbTsFormat:Ljava/text/SimpleDateFormat;

.field public static final datePropertyTsFormat:Ljava/text/SimpleDateFormat;

.field public static final deviceInfoTsFormat:Ljava/text/SimpleDateFormat;

.field public static final inputMsgFormatter:Ljava/text/SimpleDateFormat;

.field public static final issueTsFormat:Ljava/text/SimpleDateFormat;

.field public static final outputMsgFormatter:Ljava/text/SimpleDateFormat;

.field public static final tsSecFormatter:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->breadCrumbTsFormat:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->deviceInfoTsFormat:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->inputMsgFormatter:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd-MMM-yyyy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->outputMsgFormatter:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->datePropertyTsFormat:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.000"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    .line 26
    sget-object v0, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    sget-object v0, Lcom/helpshift/util/HSFormat;->inputMsgFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 28
    sget-object v0, Lcom/helpshift/util/HSFormat;->datePropertyTsFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMilliSeconds(Ljava/text/SimpleDateFormat;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "dateFormat"    # Ljava/text/SimpleDateFormat;
    .param p1, "inputDate"    # Ljava/lang/String;
    .param p2, "milliSeconds"    # I

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 36
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 38
    new-instance v1, Ljava/util/Date;

    .end local v1    # "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    int-to-long v6, p2

    add-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 39
    .restart local v1    # "date":Ljava/util/Date;
    sget-object v3, Lcom/helpshift/util/HSFormat;->inputMsgFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 43
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local p1    # "inputDate":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 40
    .restart local p1    # "inputDate":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/text/ParseException;
    const-string/jumbo v3, "HelpshiftDebug"

    const-string/jumbo v4, "addMilliSeconds : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
