.class Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
.super Ljava/lang/Object;
.source "ActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/ActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferrerClickTime"
.end annotation


# instance fields
.field clickTime:J

.field referrer:Ljava/lang/String;

.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V
    .locals 1
    .param p2, "referrer"    # Ljava/lang/String;
    .param p3, "clickTime"    # J

    .prologue
    .line 329
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->referrer:Ljava/lang/String;

    .line 331
    iput-wide p3, p0, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->clickTime:J

    .line 332
    return-void
.end method
