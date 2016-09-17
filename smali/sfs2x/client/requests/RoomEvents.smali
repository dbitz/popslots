.class public Lsfs2x/client/requests/RoomEvents;
.super Ljava/lang/Object;
.source "RoomEvents.java"


# instance fields
.field private allowUserCountChange:Z

.field private allowUserEnter:Z

.field private allowUserExit:Z

.field private allowUserVariablesUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserEnter:Z

    .line 24
    iput-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserExit:Z

    .line 25
    iput-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserCountChange:Z

    .line 26
    iput-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserVariablesUpdate:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getAllowUserCountChange()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserCountChange:Z

    return v0
.end method

.method public getAllowUserEnter()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserEnter:Z

    return v0
.end method

.method public getAllowUserExit()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserExit:Z

    return v0
.end method

.method public getAllowUserVariablesUpdate()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lsfs2x/client/requests/RoomEvents;->allowUserVariablesUpdate:Z

    return v0
.end method

.method public setAllowUserCountChange(Z)V
    .locals 0
    .param p1, "allowUserCountChange"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomEvents;->allowUserCountChange:Z

    .line 81
    return-void
.end method

.method public setAllowUserEnter(Z)V
    .locals 0
    .param p1, "allowUserEnter"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomEvents;->allowUserEnter:Z

    .line 45
    return-void
.end method

.method public setAllowUserExit(Z)V
    .locals 0
    .param p1, "allowUserExit"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomEvents;->allowUserExit:Z

    .line 63
    return-void
.end method

.method public setAllowUserVariablesUpdate(Z)V
    .locals 0
    .param p1, "allowUserVariablesUpdate"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lsfs2x/client/requests/RoomEvents;->allowUserVariablesUpdate:Z

    .line 99
    return-void
.end method
