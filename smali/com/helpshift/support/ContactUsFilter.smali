.class public final Lcom/helpshift/support/ContactUsFilter;
.super Ljava/lang/Object;
.source "ContactUsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/ContactUsFilter$LOCATION;
    }
.end annotation


# static fields
.field private static data:Lcom/helpshift/support/HSApiData;

.field private static enableContactUs:Ljava/lang/Integer;

.field private static storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/helpshift/support/SupportInternal$EnableContactUs;->ALWAYS:Ljava/lang/Integer;

    sput-object v0, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    .line 28
    sget-object v0, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    iget-object v0, v0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    sput-object v0, Lcom/helpshift/support/ContactUsFilter;->storage:Lcom/helpshift/support/HSStorage;

    .line 30
    :cond_0
    return-void
.end method

.method protected static setConfig(Ljava/util/HashMap;)V
    .locals 2
    .param p0, "configMap"    # Ljava/util/HashMap;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "configMap":Ljava/util/HashMap;
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .restart local p0    # "configMap":Ljava/util/HashMap;
    :cond_0
    const-string/jumbo v1, "enableContactUs"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "enableContactUsObj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 40
    const-string/jumbo v1, "enableContactUs"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sput-object v1, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    .line 48
    .end local v0    # "enableContactUsObj":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 41
    .restart local v0    # "enableContactUsObj":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "enableContactUsObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    sget-object v1, Lcom/helpshift/support/SupportInternal$EnableContactUs;->ALWAYS:Ljava/lang/Integer;

    sput-object v1, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    goto :goto_0

    .line 45
    :cond_3
    sget-object v1, Lcom/helpshift/support/SupportInternal$EnableContactUs;->NEVER:Ljava/lang/Integer;

    sput-object v1, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z
    .locals 6
    .param p0, "location"    # Lcom/helpshift/support/ContactUsFilter$LOCATION;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 51
    sget-object v4, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    invoke-virtual {p0}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 56
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    sget-object v5, Lcom/helpshift/support/SupportInternal$EnableContactUs;->ALWAYS:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    move v3, v2

    .line 53
    goto :goto_0

    .line 58
    :cond_1
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    sget-object v5, Lcom/helpshift/support/SupportInternal$EnableContactUs;->NEVER:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    sget-object v5, Lcom/helpshift/support/SupportInternal$EnableContactUs;->AFTER_VIEWING_FAQS:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    sget-object v4, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    invoke-virtual {p0}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->storage:Lcom/helpshift/support/HSStorage;

    sget-object v5, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "activeConversation":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->storage:Lcom/helpshift/support/HSStorage;

    sget-object v5, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "archivedConversation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    move v3, v2

    goto :goto_0

    .line 76
    .end local v0    # "activeConversation":Ljava/lang/String;
    .end local v1    # "archivedConversation":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->enableContactUs:Ljava/lang/Integer;

    sget-object v5, Lcom/helpshift/support/SupportInternal$EnableContactUs;->AFTER_MARKING_ANSWER_UNHELPFUL:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    sget-object v4, Lcom/helpshift/support/ContactUsFilter$1;->$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION:[I

    invoke-virtual {p0}, Lcom/helpshift/support/ContactUsFilter$LOCATION;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    move v3, v2

    .line 79
    goto :goto_0

    .line 84
    :pswitch_4
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->storage:Lcom/helpshift/support/HSStorage;

    sget-object v5, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "activeConversation":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/support/ContactUsFilter;->storage:Lcom/helpshift/support/HSStorage;

    sget-object v5, Lcom/helpshift/support/ContactUsFilter;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/support/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/support/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "archivedConversation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    move v3, v2

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 61
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 77
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
