.class public Lcom/scene53/gcm/GCMUtils;
.super Ljava/lang/Object;
.source "GCMUtils.java"


# static fields
.field public static final NOTIFICATION_TYPE_PUSH:Ljava/lang/String; = "pushNotif"

.field private static final PROJECT_NUMBER:Ljava/lang/String; = "119254686464"

.field private static gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private static regid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/scene53/gcm/GCMUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .prologue
    .line 11
    sput-object p0, Lcom/scene53/gcm/GCMUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/scene53/gcm/GCMUtils;->regid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    sput-object p0, Lcom/scene53/gcm/GCMUtils;->regid:Ljava/lang/String;

    return-object p0
.end method

.method public static getRegId()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/scene53/gcm/GCMUtils$1;

    invoke-direct {v0}, Lcom/scene53/gcm/GCMUtils$1;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/scene53/gcm/GCMUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method public static native setDeviceToken(Ljava/lang/String;)V
.end method
