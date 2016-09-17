.class Lcom/helpshift/support/HSApiData$1;
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

.field final synthetic val$reportIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSApiData;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSApiData;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/helpshift/support/HSApiData$1;->this$0:Lcom/helpshift/support/HSApiData;

    iput-object p2, p0, Lcom/helpshift/support/HSApiData$1;->val$reportIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/helpshift/support/HSApiData$1;->val$reportIds:Ljava/util/List;

    invoke-static {v0}, Lcom/helpshift/support/storage/ErrorReportsDataSource;->deleteErrorReports(Ljava/util/List;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method
