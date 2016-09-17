.class final Lcom/scene53/utils/HelpshiftWrapper$2;
.super Ljava/lang/Object;
.source "HelpshiftWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/HelpshiftWrapper;->registerDeviceToken(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/scene53/utils/HelpshiftWrapper$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/scene53/utils/HelpshiftWrapper$2;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/scene53/utils/HelpshiftWrapper$2;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/scene53/utils/HelpshiftWrapper$2;->val$token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/helpshift/Core;->registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method
