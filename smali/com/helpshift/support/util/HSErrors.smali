.class public final Lcom/helpshift/support/util/HSErrors;
.super Ljava/lang/Object;
.source "HSErrors.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static cooldown:Ljava/lang/Long;

.field private static cooldowns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static errors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static previousTimestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSErrors;->errors:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    .line 21
    sget-object v0, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V
    .locals 6
    .param p0, "status"    # I
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 32
    :cond_0
    if-nez p0, :cond_2

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__network_unavailable_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    sget-object v1, Lcom/helpshift/support/util/HSErrors;->errors:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lcom/helpshift/support/util/HSErrors;->previousTimestamp:Ljava/lang/Long;

    .line 49
    sget-object v1, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50
    sget-object v1, Lcom/helpshift/support/util/HSErrors;->cooldowns:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lcom/helpshift/support/util/HSErrors;->cooldown:Ljava/lang/Long;

    .line 56
    :goto_1
    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 57
    sget-object v1, Lcom/helpshift/support/util/HSErrors;->previousTimestamp:Ljava/lang/Long;

    if-nez v1, :cond_9

    .line 58
    invoke-static {p2, v0}, Lcom/helpshift/support/util/HSErrors;->showFailToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    :goto_2
    sget-object v1, Lcom/helpshift/support/util/HSErrors;->errors:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void

    .line 34
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    const/16 v1, 0x194

    if-ne p0, v1, :cond_3

    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__data_not_found_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 36
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__screenshot_upload_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 38
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__could_not_reach_support_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 40
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_5
    const/4 v1, 0x4

    if-ne p0, v1, :cond_6

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__could_not_open_attachment_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 42
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_6
    const/4 v1, 0x5

    if-ne p0, v1, :cond_7

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__file_not_found_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 45
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/support/D$string;->hs__network_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 52
    :cond_8
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/helpshift/support/util/HSErrors;->cooldown:Ljava/lang/Long;

    goto :goto_1

    .line 59
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lcom/helpshift/support/util/HSErrors;->previousTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/helpshift/support/util/HSErrors;->cooldown:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 60
    invoke-static {p2, v0}, Lcom/helpshift/support/util/HSErrors;->showFailToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private static showFailToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "duration":I
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 70
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 71
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    return-void
.end method
