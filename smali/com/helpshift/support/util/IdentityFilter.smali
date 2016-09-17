.class public final Lcom/helpshift/support/util/IdentityFilter;
.super Ljava/lang/Object;
.source "IdentityFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requireEmailFromUI(Lcom/helpshift/support/HSStorage;)Z
    .locals 2
    .param p0, "hsStorage"    # Lcom/helpshift/support/HSStorage;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "rne"

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "pfe"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/helpshift/support/HSStorage;->getRequireEmail()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendNameEmail(Lcom/helpshift/support/HSStorage;)Z
    .locals 2
    .param p0, "hsStorage"    # Lcom/helpshift/support/HSStorage;

    .prologue
    .line 14
    sget-object v0, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "pfe"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showNameEmailForm(Lcom/helpshift/support/HSApiData;)Z
    .locals 7
    .param p0, "data"    # Lcom/helpshift/support/HSApiData;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 24
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getHideNameAndEmail()Ljava/lang/Boolean;

    move-result-object v1

    .line 34
    .local v1, "hideNameAndEmail":Ljava/lang/Boolean;
    sget-object v3, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "rne"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "hideNameAndEmail":Ljava/lang/Boolean;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 41
    .restart local v0    # "email":Ljava/lang/String;
    .restart local v1    # "hideNameAndEmail":Ljava/lang/Boolean;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .line 43
    :cond_3
    sget-object v3, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "pfe"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    move v4, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/support/HSStorage;->getRequireEmail()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v4, v5

    .line 51
    goto :goto_0

    .line 53
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "hideNameAndEmail":Ljava/lang/Boolean;
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/helpshift/support/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "pfe"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v4, v5

    .line 55
    goto :goto_0
.end method
