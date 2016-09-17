.class public Lsfs2x/client/requests/RoomSettings;
.super Ljava/lang/Object;
.source "RoomSettings.java"


# instance fields
.field private events:Lsfs2x/client/requests/RoomEvents;

.field private extension:Lsfs2x/client/requests/RoomExtension;

.field private groupId:Ljava/lang/String;

.field private isGame:Z

.field private maxSpectators:I

.field private maxUsers:I

.field private maxVariables:I

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private permissions:Lsfs2x/client/requests/RoomPermissions;

.field private variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->name:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsfs2x/client/requests/RoomSettings;->password:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lsfs2x/client/requests/RoomSettings;->isGame:Z

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lsfs2x/client/requests/RoomSettings;->maxUsers:I

    .line 43
    iput v1, p0, Lsfs2x/client/requests/RoomSettings;->maxSpectators:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lsfs2x/client/requests/RoomSettings;->maxVariables:I

    .line 45
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lsfs2x/client/requests/RoomSettings;->groupId:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsfs2x/client/requests/RoomSettings;->variables:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getEvents()Lsfs2x/client/requests/RoomEvents;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->events:Lsfs2x/client/requests/RoomEvents;

    return-object v0
.end method

.method public getExtension()Lsfs2x/client/requests/RoomExtension;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->extension:Lsfs2x/client/requests/RoomExtension;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSpectators()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lsfs2x/client/requests/RoomSettings;->maxSpectators:I

    return v0
.end method

.method public getMaxUsers()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lsfs2x/client/requests/RoomSettings;->maxUsers:I

    return v0
.end method

.method public getMaxVariables()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lsfs2x/client/requests/RoomSettings;->maxVariables:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Lsfs2x/client/requests/RoomPermissions;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->permissions:Lsfs2x/client/requests/RoomPermissions;

    return-object v0
.end method

.method public getVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lsfs2x/client/requests/RoomSettings;->variables:Ljava/util/List;

    return-object v0
.end method

.method public isGame()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomSettings;->isGame:Z

    return v0
.end method

.method public setEvents(Lsfs2x/client/requests/RoomEvents;)V
    .locals 0
    .param p1, "events"    # Lsfs2x/client/requests/RoomEvents;

    .prologue
    .line 203
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->events:Lsfs2x/client/requests/RoomEvents;

    .line 204
    return-void
.end method

.method public setExtension(Lsfs2x/client/requests/RoomExtension;)V
    .locals 0
    .param p1, "extension"    # Lsfs2x/client/requests/RoomExtension;

    .prologue
    .line 217
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->extension:Lsfs2x/client/requests/RoomExtension;

    .line 218
    return-void
.end method

.method public setGame(Z)V
    .locals 0
    .param p1, "game"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomSettings;->isGame:Z

    .line 95
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->groupId:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setMaxSpectators(I)V
    .locals 0
    .param p1, "maxSpectators"    # I

    .prologue
    .line 147
    iput p1, p0, Lsfs2x/client/requests/RoomSettings;->maxSpectators:I

    .line 148
    return-void
.end method

.method public setMaxUsers(I)V
    .locals 0
    .param p1, "maxUsers"    # I

    .prologue
    .line 113
    iput p1, p0, Lsfs2x/client/requests/RoomSettings;->maxUsers:I

    .line 114
    return-void
.end method

.method public setMaxVariables(I)V
    .locals 0
    .param p1, "maxVariables"    # I

    .prologue
    .line 129
    iput p1, p0, Lsfs2x/client/requests/RoomSettings;->maxVariables:I

    .line 130
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->password:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPermissions(Lsfs2x/client/requests/RoomPermissions;)V
    .locals 0
    .param p1, "permissions"    # Lsfs2x/client/requests/RoomPermissions;

    .prologue
    .line 184
    iput-object p1, p0, Lsfs2x/client/requests/RoomSettings;->permissions:Lsfs2x/client/requests/RoomPermissions;

    .line 185
    return-void
.end method

.method public setVariables(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsfs2x/client/entities/variables/RoomVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "variables":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/variables/RoomVariable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/RoomSettings;->variables:Ljava/util/List;

    .line 166
    return-void
.end method
