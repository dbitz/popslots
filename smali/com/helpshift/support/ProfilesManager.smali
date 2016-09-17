.class public Lcom/helpshift/support/ProfilesManager;
.super Ljava/lang/Object;
.source "ProfilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/ProfilesManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private storage:Lcom/helpshift/support/storage/ProfilesDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/helpshift/support/storage/ProfilesDataSource;

    invoke-direct {v0, p1}, Lcom/helpshift/support/storage/ProfilesDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/ProfilesManager;->storage:Lcom/helpshift/support/storage/ProfilesDataSource;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/helpshift/support/ProfilesManager;
    .locals 1

    .prologue
    .line 21
    # getter for: Lcom/helpshift/support/ProfilesManager$Holder;->INSTANCE:Lcom/helpshift/support/ProfilesManager;
    invoke-static {}, Lcom/helpshift/support/ProfilesManager$Holder;->access$000()Lcom/helpshift/support/ProfilesManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/model/Profile;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/model/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/helpshift/support/ProfilesManager;->storage:Lcom/helpshift/support/storage/ProfilesDataSource;

    invoke-virtual {v1, p1}, Lcom/helpshift/support/storage/ProfilesDataSource;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    .line 26
    .local v0, "profile":Lcom/helpshift/support/model/Profile;
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/helpshift/support/model/Profile;

    .end local v0    # "profile":Lcom/helpshift/support/model/Profile;
    invoke-direct {v0, p1}, Lcom/helpshift/support/model/Profile;-><init>(Ljava/lang/String;)V

    .line 28
    .restart local v0    # "profile":Lcom/helpshift/support/model/Profile;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/model/Profile;->setSalt(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-object v0
.end method

.method public getProfileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/model/Profile;->getProfileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    .line 55
    .local v0, "profile":Lcom/helpshift/support/model/Profile;
    invoke-virtual {v0, p2}, Lcom/helpshift/support/model/Profile;->setEmail(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/helpshift/support/ProfilesManager;->storage:Lcom/helpshift/support/storage/ProfilesDataSource;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/storage/ProfilesDataSource;->addProfile(Lcom/helpshift/support/model/Profile;)V

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    .line 45
    .local v0, "profile":Lcom/helpshift/support/model/Profile;
    invoke-virtual {v0, p2}, Lcom/helpshift/support/model/Profile;->setName(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/helpshift/support/ProfilesManager;->storage:Lcom/helpshift/support/storage/ProfilesDataSource;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/storage/ProfilesDataSource;->addProfile(Lcom/helpshift/support/model/Profile;)V

    .line 47
    return-void
.end method

.method public setProfileId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/helpshift/support/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/support/model/Profile;

    move-result-object v0

    .line 39
    .local v0, "profile":Lcom/helpshift/support/model/Profile;
    invoke-virtual {v0, p2}, Lcom/helpshift/support/model/Profile;->setProfileId(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/helpshift/support/ProfilesManager;->storage:Lcom/helpshift/support/storage/ProfilesDataSource;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/storage/ProfilesDataSource;->addProfile(Lcom/helpshift/support/model/Profile;)V

    .line 41
    return-void
.end method
