.class Lcom/helpshift/support/HSApiData$2;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSApiData;->sendErrorReportsBatch(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$2;->this$0:Lcom/helpshift/support/HSApiData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/helpshift/support/HSApiData$2;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v2, v2, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/TimeUtil;->getAdjustedTimeInMillis(Ljava/lang/Float;)J

    move-result-wide v0

    .line 142
    .local v0, "currentElapsedTime":J
    iget-object v2, p0, Lcom/helpshift/support/HSApiData$2;->this$0:Lcom/helpshift/support/HSApiData;

    iget-object v2, v2, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/helpshift/support/HSStorage;->setLastErrorReportedTime(J)V

    .line 143
    const/4 v2, 0x1

    return v2
.end method
