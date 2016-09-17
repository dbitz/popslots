.class public Lsfs2x/client/core/SFSEvent;
.super Lsfs2x/client/core/BaseEvent;
.source "SFSEvent.java"


# static fields
.field public static final ADMIN_MESSAGE:Ljava/lang/String; = "adminMessage"

.field public static final CONFIG_LOAD_FAILURE:Ljava/lang/String; = "configLoadFailure"

.field public static final CONFIG_LOAD_SUCCESS:Ljava/lang/String; = "configLoadSuccess"

.field public static final CONNECTION:Ljava/lang/String; = "connection"

.field public static final CONNECTION_ATTEMPT_HTTP:Ljava/lang/String; = "connectionAttemptHttp"

.field public static final CONNECTION_LOST:Ljava/lang/String; = "connectionLost"

.field public static final CONNECTION_RESUME:Ljava/lang/String; = "connectionResume"

.field public static final CONNECTION_RETRY:Ljava/lang/String; = "connectionRetry"

.field public static final CRYPTO_INIT:Ljava/lang/String; = "cryptoInit"

.field public static final EXTENSION_RESPONSE:Ljava/lang/String; = "extensionResponse"

.field public static final HANDSHAKE:Ljava/lang/String; = "handshake"

.field public static final INVITATION:Ljava/lang/String; = "invitation"

.field public static final INVITATION_REPLY:Ljava/lang/String; = "invitationReply"

.field public static final INVITATION_REPLY_ERROR:Ljava/lang/String; = "invitationReplyError"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final LOGIN_ERROR:Ljava/lang/String; = "loginError"

.field public static final LOGOUT:Ljava/lang/String; = "logout"

.field public static final MMOITEM_VARIABLES_UPDATE:Ljava/lang/String; = "mmoItemVariablesUpdate"

.field public static final MODERATOR_MESSAGE:Ljava/lang/String; = "moderatorMessage"

.field public static final OBJECT_MESSAGE:Ljava/lang/String; = "objectMessage"

.field public static final PING_PONG:Ljava/lang/String; = "pingPong"

.field public static final PLAYER_TO_SPECTATOR:Ljava/lang/String; = "playerToSpectator"

.field public static final PLAYER_TO_SPECTATOR_ERROR:Ljava/lang/String; = "playerToSpectatorError"

.field public static final PRIVATE_MESSAGE:Ljava/lang/String; = "privateMessage"

.field public static final PROXIMITY_LIST_UPDATE:Ljava/lang/String; = "proximityListUpdate"

.field public static final PUBLIC_MESSAGE:Ljava/lang/String; = "publicMessage"

.field public static final ROOM_ADD:Ljava/lang/String; = "roomAdd"

.field public static final ROOM_CAPACITY_CHANGE:Ljava/lang/String; = "roomCapacityChange"

.field public static final ROOM_CAPACITY_CHANGE_ERROR:Ljava/lang/String; = "roomCapacityChangeError"

.field public static final ROOM_CREATION_ERROR:Ljava/lang/String; = "roomCreationError"

.field public static final ROOM_FIND_RESULT:Ljava/lang/String; = "roomFindResult"

.field public static final ROOM_GROUP_SUBSCRIBE:Ljava/lang/String; = "roomGroupSubscribe"

.field public static final ROOM_GROUP_SUBSCRIBE_ERROR:Ljava/lang/String; = "roomGroupSubscribeError"

.field public static final ROOM_GROUP_UNSUBSCRIBE:Ljava/lang/String; = "roomGroupUnsubscribe"

.field public static final ROOM_GROUP_UNSUBSCRIBE_ERROR:Ljava/lang/String; = "roomGroupUnsubscribeError"

.field public static final ROOM_JOIN:Ljava/lang/String; = "roomJoin"

.field public static final ROOM_JOIN_ERROR:Ljava/lang/String; = "roomJoinError"

.field public static final ROOM_NAME_CHANGE:Ljava/lang/String; = "roomNameChange"

.field public static final ROOM_NAME_CHANGE_ERROR:Ljava/lang/String; = "roomNameChangeError"

.field public static final ROOM_PASSWORD_STATE_CHANGE:Ljava/lang/String; = "roomPasswordStateChange"

.field public static final ROOM_PASSWORD_STATE_CHANGE_ERROR:Ljava/lang/String; = "roomPasswordStateChangeError"

.field public static final ROOM_REMOVE:Ljava/lang/String; = "roomRemove"

.field public static final ROOM_VARIABLES_UPDATE:Ljava/lang/String; = "roomVariablesUpdate"

.field public static final SOCKET_ERROR:Ljava/lang/String; = "socketError"

.field public static final SPECTATOR_TO_PLAYER:Ljava/lang/String; = "spectatorToPlayer"

.field public static final SPECTATOR_TO_PLAYER_ERROR:Ljava/lang/String; = "spectatorToPlayerError"

.field public static final UDP_INIT:Ljava/lang/String; = "udpInit"

.field public static final USER_COUNT_CHANGE:Ljava/lang/String; = "userCountChange"

.field public static final USER_ENTER_ROOM:Ljava/lang/String; = "userEnterRoom"

.field public static final USER_EXIT_ROOM:Ljava/lang/String; = "userExitRoom"

.field public static final USER_FIND_RESULT:Ljava/lang/String; = "userFindResult"

.field public static final USER_VARIABLES_UPDATE:Ljava/lang/String; = "userVariablesUpdate"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1742
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1743
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1738
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1739
    return-void
.end method
