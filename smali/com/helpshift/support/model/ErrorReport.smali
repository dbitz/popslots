.class public Lcom/helpshift/support/model/ErrorReport;
.super Ljava/lang/Object;
.source "ErrorReport.java"


# static fields
.field public static final BATCH_TIME:J = 0x5265c00L

.field public static final KEY_ACTIVE_CONVERSATION_ID:Ljava/lang/String; = "active_conversation_id"

.field public static final KEY_ACTIVE_MESSAGE_IDS:Ljava/lang/String; = "active_message_ids"

.field public static final KEY_BREAD_CRUMBS:Ljava/lang/String; = "bread_crumbs"

.field public static final KEY_CAUSE:Ljava/lang/String; = "cause"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final KEY_CONVERSATION_CONTEXT:Ljava/lang/String; = "conversation_context"

.field public static final KEY_DEVICE_INFO:Ljava/lang/String; = "device_info"

.field public static final KEY_ERROR_DATA:Ljava/lang/String; = "error_data"

.field public static final KEY_EXCEPTION_DETAIL:Ljava/lang/String; = "exception_detail"

.field public static final KEY_FUNNEL:Ljava/lang/String; = "funnel"

.field public static final KEY_HELPSHIFT_CONTEXT:Ljava/lang/String; = "helpshift_context"

.field public static final KEY_LINE_NO:Ljava/lang/String; = "line_no"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_METHOD_NAME:Ljava/lang/String; = "method_name"

.field public static final KEY_PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final KEY_REPORT_TYPE:Ljava/lang/String; = "report_type"

.field public static final KEY_THREAD_INFO:Ljava/lang/String; = "thread_info"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TRACE:Ljava/lang/String; = "trace"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private conversationContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceInfo:Lorg/json/JSONObject;

.field private errorData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private helpshiftContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reportId:Ljava/lang/String;

.field private reportType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "HelpShiftDebug"

    sput-object v0, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->reportId:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->reportType:Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->deviceInfo:Lorg/json/JSONObject;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hsApiData"    # Lcom/helpshift/support/HSApiData;
    .param p3, "reportType"    # Ljava/lang/String;
    .param p4, "thread"    # Ljava/lang/Thread;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/helpshift/support/model/ErrorReport;-><init>()V

    .line 93
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->reportType:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    .line 95
    .local v4, "hsStorage":Lcom/helpshift/support/HSStorage;
    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v12

    invoke-static {v12}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimeInMillis(Ljava/lang/Float;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, "timestamp":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "hs_error_report_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->reportId:Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/util/Meta;->getMinimalDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v12

    iput-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->deviceInfo:Lorg/json/JSONObject;

    .line 103
    invoke-static {}, Lcom/helpshift/support/HSFunnel;->getActions()Lorg/json/JSONArray;

    move-result-object v6

    .line 104
    .local v6, "jsonArrayFunnel":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lcom/helpshift/support/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v5

    .line 106
    .local v5, "jsonArrayBreadCrumbs":Lorg/json/JSONArray;
    if-nez v6, :cond_2

    .line 107
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    const-string/jumbo v13, "funnel"

    const-string/jumbo v14, "[]"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    const-string/jumbo v13, "bread_crumbs"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "profileId":Ljava/lang/String;
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    const-string/jumbo v13, "profile_id"

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "activeConversationId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 118
    invoke-virtual {v4, v9}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_0
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    const-string/jumbo v13, "active_conversation_id"

    invoke-interface {v12, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v2}, Lcom/helpshift/support/storage/IssuesDataSource;->getMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 122
    .local v7, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "messageIdsJson":Ljava/lang/String;
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    const-string/jumbo v13, "active_message_ids"

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v10, "Unknown"

    .line 127
    .local v10, "threadInfo":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 128
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v10

    .line 130
    :cond_1
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    const-string/jumbo v13, "thread_info"

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    const-string/jumbo v13, "timestamp"

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    const-string/jumbo v13, "exception_detail"

    move-object/from16 v0, p5

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v2    # "activeConversationId":Ljava/lang/String;
    .end local v5    # "jsonArrayBreadCrumbs":Lorg/json/JSONArray;
    .end local v6    # "jsonArrayFunnel":Lorg/json/JSONArray;
    .end local v7    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "messageIdsJson":Ljava/lang/String;
    .end local v9    # "profileId":Ljava/lang/String;
    .end local v10    # "threadInfo":Ljava/lang/String;
    :goto_1
    return-void

    .line 109
    .restart local v5    # "jsonArrayBreadCrumbs":Lorg/json/JSONArray;
    .restart local v6    # "jsonArrayFunnel":Lorg/json/JSONArray;
    :cond_2
    iget-object v12, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    const-string/jumbo v13, "funnel"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v5    # "jsonArrayBreadCrumbs":Lorg/json/JSONArray;
    .end local v6    # "jsonArrayFunnel":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Lorg/json/JSONException;
    sget-object v12, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Error parsing JSON"

    invoke-static {v12, v13, v3}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static bytesToThrowable([B)Ljava/lang/Throwable;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 171
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    .line 172
    :cond_0
    const/4 v5, 0x0

    .line 198
    :cond_1
    :goto_0
    return-object v5

    .line 175
    :cond_2
    const/4 v5, 0x0

    .line 176
    .local v5, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 177
    .local v1, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 180
    .local v3, "objectInput":Ljava/io/ObjectInput;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .local v4, "objectInput":Ljava/io/ObjectInput;
    :try_start_1
    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Throwable;

    move-object v5, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    if-eqz v4, :cond_4

    .line 189
    :try_start_2
    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 194
    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_0

    .line 192
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error converting bytesToThrowable"

    invoke-static {v6, v7, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 194
    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_0

    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    :goto_1
    move-object v2, v6

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v6, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error converting bytesToThrowable"

    invoke-static {v6, v7, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    if-eqz v3, :cond_1

    .line 189
    :try_start_4
    invoke-interface {v3}, Ljava/io/ObjectInput;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 192
    :catch_2
    move-exception v2

    .line 193
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error converting bytesToThrowable"

    invoke-static {v6, v7, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    .line 189
    :try_start_5
    invoke-interface {v3}, Ljava/io/ObjectInput;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 194
    :cond_3
    :goto_4
    throw v6

    .line 192
    :catch_3
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error converting bytesToThrowable"

    invoke-static {v7, v8, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    :goto_5
    move-object v2, v6

    goto :goto_2

    .line 187
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_3

    .line 183
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_1

    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :catch_6
    move-exception v6

    move-object v3, v4

    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_5

    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :cond_4
    move-object v3, v4

    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_0
.end method

.method public static throwableToBytes(Ljava/lang/Throwable;)[B
    .locals 8
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    if-nez p0, :cond_1

    .line 140
    const/4 v1, 0x0

    .line 167
    :cond_0
    :goto_0
    return-object v1

    .line 143
    :cond_1
    const/4 v1, 0x0

    .line 144
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 148
    .local v3, "objectOutput":Ljava/io/ObjectOutput;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .local v4, "objectOutput":Ljava/io/ObjectOutput;
    :try_start_1
    invoke-interface {v4, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 156
    if-eqz v4, :cond_3

    .line 158
    :try_start_2
    invoke-interface {v4}, Ljava/io/ObjectOutput;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 163
    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_0

    .line 161
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error converting throwableToBytes"

    invoke-static {v5, v6, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 163
    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_0

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 153
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error converting throwableToBytes"

    invoke-static {v5, v6, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    if-eqz v3, :cond_0

    .line 158
    :try_start_4
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 161
    :catch_2
    move-exception v2

    .line 162
    sget-object v5, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error converting throwableToBytes"

    invoke-static {v5, v6, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 158
    :try_start_5
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    :cond_2
    :goto_3
    throw v5

    .line 161
    :catch_3
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error converting throwableToBytes"

    invoke-static {v6, v7, v2}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_2

    .line 152
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_1

    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :cond_3
    move-object v3, v4

    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_0
.end method

.method private throwableToJSON(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v2, 0x0

    .line 237
    :goto_0
    return-object v2

    .line 213
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v2, "jsonObjectException":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 221
    .local v1, "jsonArrayStackTrace":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 222
    .local v5, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 223
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 224
    .local v3, "jsonObjectTraceElement":Lorg/json/JSONObject;
    const-string/jumbo v8, "class_name"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v8, "method_name"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v8, "line_no"

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 222
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 229
    .end local v3    # "jsonObjectTraceElement":Lorg/json/JSONObject;
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    const-string/jumbo v6, "trace"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string/jumbo v6, "cause"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/helpshift/support/model/ErrorReport;->throwableToJSON(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1    # "jsonArrayStackTrace":Lorg/json/JSONArray;
    .end local v5    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error parsing JSON in throwableToJSON"

    invoke-static {v6, v7, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getConversationContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceInfo()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->deviceInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getErrorData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    return-object v0
.end method

.method public getHelpshiftContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    return-object v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 300
    .local v1, "errorReport":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "report_type"

    iget-object v6, p0, Lcom/helpshift/support/model/ErrorReport;->reportType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v5, "device_info"

    iget-object v6, p0, Lcom/helpshift/support/model/ErrorReport;->deviceInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 304
    .local v4, "jsonObjectHelpshiftContext":Lorg/json/JSONObject;
    const-string/jumbo v5, "helpshift_context"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 307
    .local v2, "jsonObjectConversationContext":Lorg/json/JSONObject;
    const-string/jumbo v5, "conversation_context"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v3, "jsonObjectErrorData":Lorg/json/JSONObject;
    const-string/jumbo v5, "thread_info"

    iget-object v6, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    const-string/jumbo v7, "thread_info"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string/jumbo v5, "timestamp"

    iget-object v6, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    const-string/jumbo v7, "timestamp"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string/jumbo v6, "exception_detail"

    iget-object v5, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    const-string/jumbo v7, "exception_detail"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {p0, v5}, Lcom/helpshift/support/model/ErrorReport;->throwableToJSON(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string/jumbo v5, "error_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v2    # "jsonObjectConversationContext":Lorg/json/JSONObject;
    .end local v3    # "jsonObjectErrorData":Lorg/json/JSONObject;
    .end local v4    # "jsonObjectHelpshiftContext":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error parsing JSON in getJSONObject"

    invoke-static {v5, v6, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getReportId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->reportId:Ljava/lang/String;

    return-object v0
.end method

.method public getReportType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/helpshift/support/model/ErrorReport;->reportType:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationContext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "conversationContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/helpshift/support/model/ErrorReport;->conversationContext:Ljava/util/Map;

    .line 282
    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceInfo"    # Ljava/lang/String;

    .prologue
    .line 262
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/helpshift/support/model/ErrorReport;->deviceInfo:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/helpshift/support/model/ErrorReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error parsing JSON in setDeviceInfo"

    invoke-static {v1, v2, v0}, Lcom/helpshift/support/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setErrorData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "errorData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/helpshift/support/model/ErrorReport;->errorData:Ljava/util/Map;

    .line 290
    return-void
.end method

.method public setHelpshiftContext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "helpshiftContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/helpshift/support/model/ErrorReport;->helpshiftContext:Ljava/util/Map;

    .line 274
    return-void
.end method

.method public setReportId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportId"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/helpshift/support/model/ErrorReport;->reportId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setReportType(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportType"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/helpshift/support/model/ErrorReport;->reportType:Ljava/lang/String;

    .line 254
    return-void
.end method
