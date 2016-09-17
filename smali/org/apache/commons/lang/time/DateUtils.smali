.class public Lorg/apache/commons/lang/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_IN_DAY:I = 0x5265c00

.field public static final MILLIS_IN_HOUR:I = 0x36ee80

.field public static final MILLIS_IN_MINUTE:I = 0xea60

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field public static final UTC_TIME_ZONE:Ljava/util/TimeZone;

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0xe

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const/16 v2, 0xd

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const/16 v2, 0xc

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v3, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static add(Ljava/util/Date;II)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .prologue
    .line 413
    if-nez p0, :cond_0

    .line 414
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 417
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 418
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 419
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 341
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 355
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 397
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 369
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 313
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 383
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 327
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getFragment(Ljava/util/Calendar;II)J
    .locals 8
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 1484
    if-nez p0, :cond_0

    .line 1485
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1487
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang/time/DateUtils;->getMillisPerUnit(I)J

    move-result-wide v0

    .line 1488
    .local v0, "millisPerUnit":J
    const-wide/16 v2, 0x0

    .line 1491
    .local v2, "result":J
    packed-switch p1, :pswitch_data_0

    .line 1500
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 1517
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "The fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1493
    :pswitch_1
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1494
    goto :goto_0

    .line 1496
    :pswitch_2
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_0

    .line 1508
    :pswitch_3
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1510
    :pswitch_4
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1512
    :pswitch_5
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1514
    :pswitch_6
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1519
    :pswitch_7
    return-wide v2

    .line 1491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1500
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;II)J
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .prologue
    .line 1464
    if-nez p0, :cond_0

    .line 1465
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1467
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1468
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1469
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1449
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1248
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1407
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1208
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1288
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1088
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1367
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1168
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .prologue
    .line 1327
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .prologue
    .line 1128
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillisPerUnit(I)J
    .locals 5
    .param p0, "unit"    # I

    .prologue
    .line 1531
    const-wide v0, 0x7fffffffffffffffL

    .line 1532
    .local v0, "result":J
    packed-switch p0, :pswitch_data_0

    .line 1549
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "The unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " cannot be represented is milleseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1535
    :pswitch_1
    const-wide/32 v0, 0x5265c00

    .line 1551
    :goto_0
    return-wide v0

    .line 1538
    :pswitch_2
    const-wide/32 v0, 0x36ee80

    .line 1539
    goto :goto_0

    .line 1541
    :pswitch_3
    const-wide/32 v0, 0xea60

    .line 1542
    goto :goto_0

    .line 1544
    :pswitch_4
    const-wide/16 v0, 0x3e8

    .line 1545
    goto :goto_0

    .line 1547
    :pswitch_5
    const-wide/16 v0, 0x1

    .line 1548
    goto :goto_0

    .line 1532
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The date must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 162
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 163
    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    .line 219
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 7
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "focus"    # Ljava/lang/Object;
    .param p1, "rangeStyle"    # I

    .prologue
    .line 1042
    if-nez p0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 1046
    check-cast p0, Ljava/util/Date;

    .end local p0    # "focus":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    .line 1048
    :goto_0
    return-object v0

    .line 1047
    .restart local p0    # "focus":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 1048
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "focus":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1050
    .restart local p0    # "focus":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .locals 9
    .param p0, "focus"    # Ljava/util/Calendar;
    .param p1, "rangeStyle"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x7

    .line 951
    if-nez p0, :cond_0

    .line 952
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 954
    :cond_0
    const/4 v2, 0x0

    .line 955
    .local v2, "start":Ljava/util/Calendar;
    const/4 v0, 0x0

    .line 956
    .local v0, "end":Ljava/util/Calendar;
    const/4 v3, 0x1

    .line 957
    .local v3, "startCutoff":I
    const/4 v1, 0x7

    .line 958
    .local v1, "endCutoff":I
    packed-switch p1, :pswitch_data_0

    .line 999
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "The range style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 962
    :pswitch_0
    invoke-static {p0, v4}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "end":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 965
    .restart local v0    # "end":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 966
    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 968
    const/4 v4, 0x6

    if-ne p1, v4, :cond_1

    .line 969
    const/4 v3, 0x2

    .line 970
    const/4 v1, 0x1

    .line 1001
    :cond_1
    :goto_0
    :pswitch_1
    if-ge v3, v7, :cond_2

    .line 1002
    add-int/lit8 v3, v3, 0x7

    .line 1004
    :cond_2
    if-le v3, v5, :cond_3

    .line 1005
    add-int/lit8 v3, v3, -0x7

    .line 1007
    :cond_3
    if-ge v1, v7, :cond_4

    .line 1008
    add-int/lit8 v1, v1, 0x7

    .line 1010
    :cond_4
    if-le v1, v5, :cond_5

    .line 1011
    add-int/lit8 v1, v1, -0x7

    .line 1013
    :cond_5
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 1014
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 978
    :pswitch_2
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 979
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 980
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 985
    :pswitch_3
    const/4 v3, 0x2

    .line 986
    const/4 v1, 0x1

    .line 987
    goto :goto_0

    .line 989
    :pswitch_4
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 990
    add-int/lit8 v1, v3, -0x1

    .line 991
    goto :goto_0

    .line 993
    :pswitch_5
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x3

    .line 994
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x3

    goto :goto_0

    .line 1016
    :cond_6
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_7

    .line 1017
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1019
    :cond_7
    new-instance v4, Lorg/apache/commons/lang/time/DateUtils$DateIterator;

    invoke-direct {v4, v2, v0}, Lorg/apache/commons/lang/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v4

    .line 958
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 980
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "focus"    # Ljava/util/Date;
    .param p1, "rangeStyle"    # I

    .prologue
    .line 918
    if-nez p0, :cond_0

    .line 919
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 922
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 923
    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private static modify(Ljava/util/Calendar;IZ)V
    .locals 22
    .param p0, "val"    # Ljava/util/Calendar;
    .param p1, "field"    # I
    .param p2, "round"    # Z

    .prologue
    .line 767
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const v19, 0x10b07600

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 768
    new-instance v18, Ljava/lang/ArithmeticException;

    const-string/jumbo v19, "Calendar value too large for accurate calculations"

    invoke-direct/range {v18 .. v19}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 771
    :cond_0
    const/16 v18, 0xe

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 781
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 782
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 783
    .local v16, "time":J
    const/4 v5, 0x0

    .line 786
    .local v5, "done":Z
    const/16 v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 787
    .local v9, "millisecs":I
    if-eqz p2, :cond_3

    const/16 v18, 0x1f4

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 788
    :cond_3
    int-to-long v0, v9

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 790
    :cond_4
    const/16 v18, 0xd

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 791
    const/4 v5, 0x1

    .line 795
    :cond_5
    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 796
    .local v15, "seconds":I
    if-nez v5, :cond_7

    if-eqz p2, :cond_6

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 797
    :cond_6
    int-to-long v0, v15

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    .line 799
    :cond_7
    const/16 v18, 0xc

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 800
    const/4 v5, 0x1

    .line 804
    :cond_8
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 805
    .local v11, "minutes":I
    if-nez v5, :cond_a

    if-eqz p2, :cond_9

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 806
    :cond_9
    int-to-long v0, v11

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    .line 810
    :cond_a
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v18, v18, v16

    if-eqz v18, :cond_b

    .line 811
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 812
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 816
    :cond_b
    const/4 v14, 0x0

    .line 817
    .local v14, "roundUp":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_18

    .line 818
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_f

    .line 819
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    aget v18, v18, v7

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_e

    .line 821
    if-eqz p2, :cond_1

    if-eqz v14, :cond_1

    .line 822
    const/16 v18, 0x3e9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 826
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 827
    const/16 v18, 0x5

    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 829
    :cond_c
    const/16 v18, 0x5

    const/16 v19, -0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 830
    const/16 v18, 0x2

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 835
    :cond_d
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 818
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 842
    :cond_f
    const/4 v12, 0x0

    .line 843
    .local v12, "offset":I
    const/4 v13, 0x0

    .line 845
    .local v13, "offsetSet":Z
    sparse-switch p1, :sswitch_data_0

    .line 875
    :cond_10
    :goto_3
    if-nez v13, :cond_11

    .line 876
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v10

    .line 877
    .local v10, "min":I
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 879
    .local v8, "max":I
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    sub-int v12, v18, v10

    .line 881
    sub-int v18, v8, v10

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    if-le v12, v0, :cond_17

    const/4 v14, 0x1

    .line 884
    .end local v8    # "max":I
    .end local v10    # "min":I
    :cond_11
    :goto_4
    if-eqz v12, :cond_12

    .line 885
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    sget-object v19, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v19, v19, v6

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 817
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 847
    :sswitch_0
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 851
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    .line 854
    const/16 v18, 0xf

    move/from16 v0, v18

    if-lt v12, v0, :cond_13

    .line 855
    add-int/lit8 v12, v12, -0xf

    .line 858
    :cond_13
    const/16 v18, 0x7

    move/from16 v0, v18

    if-le v12, v0, :cond_14

    const/4 v14, 0x1

    .line 859
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 858
    :cond_14
    const/4 v14, 0x0

    goto :goto_5

    .line 863
    :sswitch_1
    sget-object v18, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v18, v18, v6

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 866
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 867
    const/16 v18, 0xc

    move/from16 v0, v18

    if-lt v12, v0, :cond_15

    .line 868
    add-int/lit8 v12, v12, -0xc

    .line 870
    :cond_15
    const/16 v18, 0x6

    move/from16 v0, v18

    if-le v12, v0, :cond_16

    const/4 v14, 0x1

    .line 871
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 870
    :cond_16
    const/4 v14, 0x0

    goto :goto_6

    .line 881
    .restart local v8    # "max":I
    .restart local v10    # "min":I
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 888
    .end local v7    # "j":I
    .end local v8    # "max":I
    .end local v10    # "min":I
    .end local v12    # "offset":I
    .end local v13    # "offsetSet":Z
    :cond_18
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v20, "The field "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string/jumbo v20, " is not supported"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 845
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 267
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 268
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Date and Patterns must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 271
    :cond_1
    const/4 v2, 0x0

    .line 272
    .local v2, "parser":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 273
    .local v3, "pos":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 274
    if-nez v1, :cond_2

    .line 275
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "parser":Ljava/text/SimpleDateFormat;
    aget-object v4, p1, v6

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v2    # "parser":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 280
    invoke-virtual {v2, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 281
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 282
    return-object v0

    .line 277
    .end local v0    # "date":Ljava/util/Date;
    :cond_2
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    .restart local v0    # "date":Ljava/util/Date;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "date":Ljava/util/Date;
    :cond_4
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Unable to parse the date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 622
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 625
    .local v0, "rounded":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 626
    return-object v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 660
    if-nez p0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 664
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    .line 665
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 666
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 668
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 587
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 588
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 589
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .prologue
    .line 542
    if-nez p0, :cond_0

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 547
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 548
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 549
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 550
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 464
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 480
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 525
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 495
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 449
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 510
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .prologue
    .line 434
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .prologue
    .line 716
    if-nez p0, :cond_0

    .line 717
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 719
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 720
    .local v0, "truncated":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 721
    return-object v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .prologue
    .line 745
    if-nez p0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 749
    check-cast p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    .line 750
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 751
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "date":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 753
    .restart local p0    # "date":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 690
    if-nez p0, :cond_0

    .line 691
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 694
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 695
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 696
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method
