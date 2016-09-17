.class public Lsfs2x/client/util/SFSErrorCodes;
.super Ljava/lang/Object;
.source "SFSErrorCodes.java"


# static fields
.field private static errorsByCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2b

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 19
    const-string/jumbo v3, "Client API version is obsolete: %s; required version: %s"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 20
    const-string/jumbo v3, "Requested Zone %s does not exist"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 21
    const-string/jumbo v3, "User name %s is not recognized"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 22
    const-string/jumbo v3, "Wrong password for user %s"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 23
    const-string/jumbo v3, "User %s is banned"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 24
    const-string/jumbo v3, "Zone %s is full"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 25
    const-string/jumbo v3, "User %s is already logged in Zone %s"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 26
    const-string/jumbo v3, "The server is full"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 27
    const-string/jumbo v3, "Zone %s is currently inactive"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 28
    const-string/jumbo v3, "User name %s contains bad words; filtered: %s"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 29
    const-string/jumbo v3, "Guest users not allowed in Zone %s"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 30
    const-string/jumbo v3, "IP address %s is banned"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 31
    const-string/jumbo v3, "A Room with the same name already exists: %s"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 32
    const-string/jumbo v3, "Requested Group is not available - Room: %s; Group: %s"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 33
    const-string/jumbo v3, "Bad Room name length -  Min: %s; max: %s; passed name length: %s"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 34
    const-string/jumbo v3, "Room name contains bad words: %s"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 35
    const-string/jumbo v3, "Zone is full; can\'t add Rooms anymore"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 36
    const-string/jumbo v3, "You have exceeded the number of Rooms that you can create per session: %s"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 37
    const-string/jumbo v3, "Room creation failed, wrong parameter: %s"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 38
    const-string/jumbo v3, "User %s already joined in Room"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 39
    const-string/jumbo v3, "Room %s is full"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 40
    const-string/jumbo v3, "Wrong password for Room %s"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 41
    const-string/jumbo v3, "Requested Room does not exist"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 42
    const-string/jumbo v3, "Room %s is locked"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 43
    const-string/jumbo v3, "Group %s is already subscribed"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 44
    const-string/jumbo v3, "Group %s does not exist"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    .line 45
    const-string/jumbo v3, "Group %s is not subscribed"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    .line 46
    const-string/jumbo v3, "Group %s does not exist"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    .line 47
    const-string/jumbo v3, "%s"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 48
    const-string/jumbo v3, "Room permission error; Room %s cannot be renamed"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 49
    const-string/jumbo v3, "Room permission error; Room %s cannot change password state"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    .line 50
    const-string/jumbo v3, "Room permission error; Room %s cannot change capacity"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    .line 51
    const-string/jumbo v3, "Switch user error; no player slots available in Room %s"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 52
    const-string/jumbo v3, "Switch user error; no spectator slots available in Room %s"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    .line 53
    const-string/jumbo v3, "Switch user error; Room %s is not a Game Room"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    .line 54
    const-string/jumbo v3, "Switch user error; you are not joined in Room %s"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    .line 55
    const-string/jumbo v3, "Buddy Manager initialization error, could not load buddy list: %s"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 56
    const-string/jumbo v3, "Buddy Manager error, your buddy list is full; size is %s"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    .line 57
    const-string/jumbo v3, "Buddy Manager error, was not able to block buddy %s because offline"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    .line 58
    const-string/jumbo v3, "Buddy Manager error, you are attempting to set too many Buddy Variables; limit is %s"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    .line 59
    const-string/jumbo v3, "Game %s access denied, user does not match access criteria"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    .line 60
    const-string/jumbo v3, "QuickJoinGame action failed: no matching Rooms were found"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    .line 61
    const-string/jumbo v3, "Your previous invitation reply was invalid or arrived too late"

    aput-object v3, v1, v2

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsfs2x/client/util/SFSErrorCodes;->errorsByCode:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(S[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # S
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lsfs2x/client/util/SFSErrorCodes;->errorsByCode:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error in converting error code to text for code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setErrorMessage(SLjava/lang/String;)V
    .locals 1
    .param p0, "code"    # S
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lsfs2x/client/util/SFSErrorCodes;->errorsByCode:Ljava/util/List;

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
