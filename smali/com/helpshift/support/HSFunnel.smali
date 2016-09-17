.class public final Lcom/helpshift/support/HSFunnel;
.super Ljava/lang/Object;
.source "HSFunnel.java"


# annotations
.annotation runtime Landroid/test/suitebuilder/annotation/MediumTest;
.end annotation


# static fields
.field public static final BROWSED_FAQ_LIST:Ljava/lang/String; = "b"

.field public static final CANCEL_CSAT_RATING:Ljava/lang/String; = "cr"

.field public static final CONVERSATION_POSTED:Ljava/lang/String; = "p"

.field public static final DYNAMIC_FORM_CLOSE:Ljava/lang/String; = "dfc"

.field public static final DYNAMIC_FORM_OPEN:Ljava/lang/String; = "dfo"

.field public static final LIBRARY_OPENED:Ljava/lang/String; = "o"

.field public static final LIBRARY_OPENED_DECOMP:Ljava/lang/String; = "d"

.field public static final LIBRARY_QUIT:Ljava/lang/String; = "q"

.field public static final LINK_VIA_FAQ:Ljava/lang/String; = "fl"

.field public static final MARKED_HELPFUL:Ljava/lang/String; = "h"

.field public static final MARKED_UNHELPFUL:Ljava/lang/String; = "u"

.field public static final MESSAGE_ADDED:Ljava/lang/String; = "m"

.field public static final OPEN_INBOX:Ljava/lang/String; = "x"

.field public static final OPEN_ISSUE:Ljava/lang/String; = "c"

.field public static final PERFORMED_SEARCH:Ljava/lang/String; = "s"

.field public static final READ_FAQ:Ljava/lang/String; = "f"

.field public static final REPORTED_ISSUE:Ljava/lang/String; = "i"

.field public static final RESOLUTION_ACCEPTED:Ljava/lang/String; = "y"

.field public static final RESOLUTION_REJECTED:Ljava/lang/String; = "n"

.field public static final REVIEWED_APP:Ljava/lang/String; = "r"

.field public static final START_CSAT_RATING:Ljava/lang/String; = "sr"

.field public static final SUPPORT_LAUNCH:Ljava/lang/String; = "l"

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final TICKET_AVOIDANCE_FAILED:Ljava/lang/String; = "taf"

.field public static final TICKET_AVOIDED:Ljava/lang/String; = "ta"

.field private static actionTrail:Lorg/json/JSONArray;

.field public static libraryStartedTs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSFunnel;->actionTrail:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSFunnel;->actionTrail:Lorg/json/JSONArray;

    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/HSFunnel;->libraryStartedTs:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static getActions()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/helpshift/support/HSFunnel;->actionTrail:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static pushAppReviewedEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "userAction"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "periodic"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "r"

    invoke-static {v2, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static pushEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method

.method public static pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ts"

    sget-object v3, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    sget-object v2, Lcom/helpshift/support/HSFunnel;->actionTrail:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static takeActions()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/helpshift/support/HSFunnel;->actionTrail:Lorg/json/JSONArray;

    .line 64
    .local v0, "actions":Lorg/json/JSONArray;
    invoke-static {}, Lcom/helpshift/support/HSFunnel;->flush()V

    .line 65
    return-object v0
.end method
