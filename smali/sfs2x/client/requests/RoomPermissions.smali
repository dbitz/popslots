.class public Lsfs2x/client/requests/RoomPermissions;
.super Ljava/lang/Object;
.source "RoomPermissions.java"


# instance fields
.field private allowNameChange:Z

.field private allowPasswordStateChange:Z

.field private allowPublicMessages:Z

.field private allowResizing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getAllowNameChange()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomPermissions;->allowNameChange:Z

    return v0
.end method

.method public getAllowPasswordStateChange()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomPermissions;->allowPasswordStateChange:Z

    return v0
.end method

.method public getAllowPublicMessages()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomPermissions;->allowPublicMessages:Z

    return v0
.end method

.method public getAllowResizing()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomPermissions;->allowResizing:Z

    return v0
.end method

.method public setAllowNameChange(Z)V
    .locals 0
    .param p1, "allowNameChange"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomPermissions;->allowNameChange:Z

    .line 45
    return-void
.end method

.method public setAllowPasswordStateChange(Z)V
    .locals 0
    .param p1, "allowPasswordStateChange"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomPermissions;->allowPasswordStateChange:Z

    .line 65
    return-void
.end method

.method public setAllowPublicMessages(Z)V
    .locals 0
    .param p1, "allowPublicMessages"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomPermissions;->allowPublicMessages:Z

    .line 85
    return-void
.end method

.method public setAllowResizing(Z)V
    .locals 0
    .param p1, "allowResizing"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomPermissions;->allowResizing:Z

    .line 106
    return-void
.end method
