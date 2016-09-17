.class public final Lcom/helpshift/support/util/AttachmentUtil;
.super Ljava/lang/Object;
.source "AttachmentUtil.java"


# static fields
.field public static final ATTACH_SCR_ASK_PERMISSION_REQ_CODE:I = 0x59

.field public static final DOWNLOAD_ATTACHMENT_ASK_PERMSSION_REQ_CODE:I = 0x5a

.field private static final FILE_TYPE_AUDIO:Ljava/lang/String; = "audio/"

.field private static final FILE_TYPE_CSV:Ljava/lang/String; = "text/csv"

.field private static final FILE_TYPE_MS_OFFICE_SUBSCRIPT:Ljava/lang/String; = "vnd.openxmlformats-officedocument"

.field private static final FILE_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field private static final FILE_TYPE_RTF:Ljava/lang/String; = "text/rtf"

.field private static final FILE_TYPE_TEXT:Ljava/lang/String; = "text/"

.field private static final FILE_TYPE_VIDEO:Ljava/lang/String; = "video/"

.field public static final LOCAL_RSC_MSG_ID_PREFIX:Ljava/lang/String; = "localRscMessage_"

.field public static final SCREENSHOT_ATTACH_REQ_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAndGetLocalRscMsg(Lcom/helpshift/support/HSStorage;Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/support/viewstructs/HSMsg;
    .locals 1
    .param p0, "storage"    # Lcom/helpshift/support/HSStorage;
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "screenshot"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/util/AttachmentUtil;->addAndGetLocalRscMsg(Lcom/helpshift/support/HSStorage;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/support/viewstructs/HSMsg;

    move-result-object v0

    return-object v0
.end method

.method public static addAndGetLocalRscMsg(Lcom/helpshift/support/HSStorage;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/support/viewstructs/HSMsg;
    .locals 16
    .param p0, "storage"    # Lcom/helpshift/support/HSStorage;
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "screenshot"    # Ljava/lang/String;
    .param p3, "inProgress"    # Z

    .prologue
    .line 186
    const/4 v15, 0x0

    .line 188
    .local v15, "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "localRscMessage_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "messageId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/support/model/Issue;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/support/util/AttachmentUtil;->resolveTimestamp(Lcom/helpshift/support/model/Issue;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v5, "Attaching Screenshot..."

    .line 194
    .local v5, "body":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v13, "message":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    invoke-virtual {v13, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v3, "issue_id"

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "rsc"

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v3, "origin"

    const-string/jumbo v4, "admin"

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v3, "body"

    invoke-virtual {v13, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v3, "invisible"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v3, "screenshot"

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v3, "inProgress"

    move/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 204
    const-string/jumbo v3, "created_at"

    invoke-virtual {v13, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string/jumbo v3, "seen"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 206
    const-string/jumbo v3, "author"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v3, "meta"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 210
    .local v14, "messages":Lorg/json/JSONArray;
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 211
    invoke-static {v14}, Lcom/helpshift/support/util/IssuesUtil;->jsonArrayToMessageList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/support/storage/IssuesDataSource;->storeMessages(Ljava/util/List;)I

    .line 213
    new-instance v1, Lcom/helpshift/support/viewstructs/HSMsg;

    const-string/jumbo v3, "rsc"

    const-string/jumbo v4, "admin"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v11, ""

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v11}, Lcom/helpshift/support/viewstructs/HSMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v5    # "body":Ljava/lang/String;
    .end local v6    # "date":Ljava/lang/String;
    .end local v13    # "message":Lorg/json/JSONObject;
    .end local v14    # "messages":Lorg/json/JSONArray;
    .end local v15    # "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    .local v1, "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    :goto_0
    return-object v1

    .line 214
    .end local v1    # "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    .restart local v15    # "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    :catch_0
    move-exception v12

    .line 215
    .local v12, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "addAndGetLocalRscMessage"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v15

    .end local v15    # "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    .restart local v1    # "msg":Lcom/helpshift/support/viewstructs/HSMsg;
    goto :goto_0
.end method

.method public static copyAttachment(Landroid/content/Context;Lcom/helpshift/support/HSApiData;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hsApiData"    # Lcom/helpshift/support/HSApiData;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "attachId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 153
    .local v5, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-thumbnail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "outputName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v6, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v6, "outputFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "fname":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 157
    invoke-virtual {p1, v7}, Lcom/helpshift/support/HSApiData;->storeFile(Ljava/lang/String;)V

    .line 158
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 162
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 163
    .local v0, "data":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 168
    .end local v0    # "data":[B
    .end local v8    # "read":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 169
    .end local v2    # "fname":Ljava/lang/String;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v7    # "outputName":Ljava/lang/String;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "input":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v9, "HelpShiftDebug"

    const-string/jumbo v10, "NPE"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    const/4 v2, 0x0

    .line 172
    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_0
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_2
    return-object v2

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "fname":Ljava/lang/String;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v7    # "outputName":Ljava/lang/String;
    .restart local v8    # "read":I
    :cond_2
    move-object v3, v4

    .line 172
    .end local v0    # "data":[B
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v8    # "read":I
    .restart local v3    # "input":Ljava/io/InputStream;
    :cond_3
    if-eqz v5, :cond_4

    .line 173
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_4
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 172
    .end local v2    # "fname":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v7    # "outputName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_5

    .line 173
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_5
    if-eqz v3, :cond_6

    .line 175
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v9

    .line 172
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "fname":Ljava/lang/String;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v7    # "outputName":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 168
    .end local v2    # "fname":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v7    # "outputName":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "scale"    # I

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 121
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x4

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    .line 125
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 126
    .local v2, "ratio":F
    int-to-float v3, p1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v0, p1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string/jumbo v1, ""

    .line 296
    .local v1, "fileName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 300
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public static getFileSizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x400

    .line 304
    const-string/jumbo v1, ""

    .line 305
    .local v1, "fileSize":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 306
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 308
    .local v2, "size":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "size":J
    :cond_0
    :goto_0
    return-object v1

    .line 310
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "size":J
    :cond_1
    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 313
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-float v8, v2

    const/high16 v9, 0x49800000    # 1048576.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string/jumbo v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_audio:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    .line 267
    :cond_0
    const-string/jumbo v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 269
    :cond_1
    const-string/jumbo v1, "application/pdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_pdf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_2
    const-string/jumbo v1, "vnd.openxmlformats-officedocument"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_ms_office:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_3
    const-string/jumbo v1, "text/rtf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_rtf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 275
    :cond_4
    const-string/jumbo v1, "text/csv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_csv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_5
    const-string/jumbo v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 280
    :cond_6
    const-string/jumbo v1, "\\."

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_7

    .line 282
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 284
    :cond_7
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    array-length v1, v0

    if-lez v1, :cond_8

    .line 286
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 288
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_type_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getPath(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dataIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 86
    .local v5, "ssUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0, v5}, Lcom/helpshift/support/util/AttachmentUtil;->getPath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "screenshot":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v3, "screenshotFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 94
    invoke-static {p0}, Lcom/helpshift/support/util/AttachmentUtil;->showScreenshotErrorToast(Landroid/app/Activity;)V

    move-object v2, v6

    .line 108
    .end local v2    # "screenshot":Ljava/lang/String;
    .end local v3    # "screenshotFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {p0}, Lcom/helpshift/support/util/AttachmentUtil;->showScreenshotErrorToast(Landroid/app/Activity;)V

    move-object v2, v6

    .line 90
    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "screenshot":Ljava/lang/String;
    .restart local v3    # "screenshotFile":Ljava/io/File;
    :cond_1
    const-wide/32 v8, 0x500000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 99
    .local v4, "screenshotLimit":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/helpshift/support/D$string;->hs__screenshot_limit_error:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 101
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-float v10, v10

    const/high16 v11, 0x49800000    # 1048576.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    .line 100
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "errorString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v7, v1, v8}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;Ljava/lang/String;I)V

    move-object v2, v6

    .line 105
    goto :goto_0
.end method

.method private static getPath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "selectedImageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 75
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnscaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    .line 137
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 140
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static isImageUri(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dataIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 242
    .local v4, "ssUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 243
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "mimeType":Ljava/lang/String;
    const/4 v7, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v7, "image/jpeg"

    aput-object v7, v2, v6

    const-string/jumbo v7, "image/png"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string/jumbo v8, "image/gif"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "image/x-png"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "image/x-citrix-pjpeg"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "image/x-citrix-gif"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "image/pjpeg"

    aput-object v8, v2, v7

    .line 252
    .local v2, "includeExts":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 254
    .local v0, "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 258
    :goto_0
    return v5

    .line 257
    :cond_0
    invoke-static {p0}, Lcom/helpshift/support/util/AttachmentUtil;->showScreenshotNotOfImageTypeErrorToast(Landroid/app/Activity;)V

    move v5, v6

    .line 258
    goto :goto_0
.end method

.method private static resolveTimestamp(Lcom/helpshift/support/model/Issue;)Ljava/lang/String;
    .locals 10
    .param p0, "issue"    # Lcom/helpshift/support/model/Issue;

    .prologue
    .line 222
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 225
    .local v3, "localTs":Ljava/util/Date;
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/support/model/Issue;->getMessageList()Ljava/util/List;

    move-result-object v4

    .line 226
    .local v4, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/model/Message;

    .line 227
    .local v1, "lastMessage":Lcom/helpshift/support/model/Message;
    sget-object v5, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/helpshift/support/model/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 229
    .local v2, "lastMessageTs":Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/Date;->setTime(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "lastMessage":Lcom/helpshift/support/model/Message;
    .end local v2    # "lastMessageTs":Ljava/util/Date;
    .end local v4    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/model/Message;>;"
    :cond_0
    :goto_0
    sget-object v5, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "resolveDate"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static showScreenshotErrorToast(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/helpshift/R$string;->hs__screenshot_cloud_attach_error:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    .line 64
    return-void
.end method

.method private static showScreenshotNotOfImageTypeErrorToast(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/helpshift/R$string;->hs__screenshot_upload_error_msg:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    .line 70
    return-void
.end method
