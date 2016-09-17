.class public Lsfs2x/client/requests/GenericMessageRequest;
.super Lsfs2x/client/requests/BaseRequest;
.source "GenericMessageRequest.java"


# static fields
.field public static final KEY_MESSAGE:Ljava/lang/String; = "m"

.field public static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "t"

.field public static final KEY_RECIPIENT:Ljava/lang/String; = "rc"

.field public static final KEY_RECIPIENT_MODE:Ljava/lang/String; = "rm"

.field public static final KEY_ROOM_ID:Ljava/lang/String; = "r"

.field public static final KEY_SENDER_DATA:Ljava/lang/String; = "sd"

.field public static final KEY_USER_ID:Ljava/lang/String; = "u"

.field public static final KEY_XTRA_PARAMS:Ljava/lang/String; = "p"


# instance fields
.field protected log:Lorg/slf4j/Logger;

.field protected message:Ljava/lang/String;

.field protected params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field protected recipient:Ljava/lang/Object;

.field protected room:Lsfs2x/client/entities/Room;

.field protected sendMode:I

.field protected type:I

.field protected user:Lsfs2x/client/entities/User;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 104
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsfs2x/client/requests/BaseRequest;-><init>(I)V

    .line 66
    iput v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->type:I

    .line 96
    iput v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->sendMode:I

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->log:Lorg/slf4j/Logger;

    .line 106
    return-void
.end method

.method private executeBuddyMessage(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 286
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "rc"

    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 289
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 295
    :cond_0
    return-void
.end method

.method private executeObjectMessage(Lsfs2x/client/ISmartFox;)V
    .locals 7
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 328
    iget-object v3, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v3, :cond_0

    .line 329
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v3

    iput-object v3, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    .line 333
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 336
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    .line 339
    .local v1, "potentialRecipients":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v4}, Lsfs2x/client/entities/Room;->getCapacity()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 340
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The number of recipients is bigger than the target Room capacity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 355
    .end local v1    # "potentialRecipients":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    iget-object v3, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v4, "r"

    iget-object v5, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v5}, Lsfs2x/client/entities/Room;->getId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 356
    iget-object v3, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v4, "p"

    iget-object v5, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v3, v4, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 359
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 360
    iget-object v3, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v4, "rc"

    invoke-interface {v3, v4, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    .line 362
    :cond_3
    return-void

    .line 344
    .restart local v1    # "potentialRecipients":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, "item":Ljava/lang/Object;
    instance-of v4, v0, Lsfs2x/client/entities/User;

    if-eqz v4, :cond_5

    .line 346
    check-cast v0, Lsfs2x/client/entities/User;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-interface {v0}, Lsfs2x/client/entities/User;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lsfs2x/client/requests/GenericMessageRequest;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Bad recipient in ObjectMessage recipient list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", expected type: User"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private executePrivateMessage(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 276
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "rc"

    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 282
    :cond_0
    return-void
.end method

.method private executePublicMessage(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v0, :cond_0

    .line 258
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getLastJoinedRoom()Lsfs2x/client/entities/Room;

    move-result-object v0

    iput-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    .line 262
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lcom/smartfoxserver/v2/exceptions/SFSException;

    const-string/jumbo v1, "User should be joined in a room in order to send a public message"

    invoke-direct {v0, v1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "r"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v2}, Lsfs2x/client/entities/Room;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "u"

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getMySelf()Lsfs2x/client/entities/User;

    move-result-object v2

    invoke-interface {v2}, Lsfs2x/client/entities/User;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 273
    :cond_2
    return-void
.end method

.method private executeSuperUserMessage(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 298
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSObject(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "rm"

    iget v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->sendMode:I

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    .line 306
    iget v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sendMode:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "rc"

    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v0, Lsfs2x/client/entities/User;

    invoke-interface {v0}, Lsfs2x/client/entities/User;->getId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "rc"

    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v0, Lsfs2x/client/entities/Room;

    invoke-interface {v0}, Lsfs2x/client/entities/Room;->getId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v2, "rc"

    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validateBuddyMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V
    .locals 2
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/ISmartFox;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const-string/jumbo v1, "BuddyList is not inited. Please send an InitBuddyRequest first."

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getBuddyManager()Lsfs2x/client/entities/managers/IBuddyManager;

    move-result-object v1

    invoke-interface {v1}, Lsfs2x/client/entities/managers/IBuddyManager;->getMyOnlineState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    const-string/jumbo v1, "Can\'t send messages while off-line"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-static {v1}, Lsfs2x/client/util/SFSStringUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const-string/jumbo v1, "Buddy message is empty!"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_2
    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 221
    .local v0, "recipientId":I
    if-gez v0, :cond_3

    .line 222
    const-string/jumbo v1, "Recipient is not online or not in your buddy list"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_3
    return-void
.end method

.method private validateObjectMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/ISmartFox;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->params:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "Object message is null!"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    return-void
.end method

.method private validatePrivateMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V
    .locals 2
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/ISmartFox;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-static {v0}, Lsfs2x/client/util/SFSStringUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "Private message is empty!"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid recipient id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    return-void
.end method

.method private validatePublicMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V
    .locals 2
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/ISmartFox;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-static {v0}, Lsfs2x/client/util/SFSStringUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "Public message is empty!"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->getJoinedRooms()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "You are not joined in the target Room: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->room:Lsfs2x/client/entities/Room;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    return-void
.end method

.method private validateSuperUserMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsfs2x/client/ISmartFox;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->message:Ljava/lang/String;

    invoke-static {v0}, Lsfs2x/client/util/SFSStringUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "Moderator message is empty!"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    iget v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sendMode:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    instance-of v0, v0, Lsfs2x/client/entities/User;

    if-nez v0, :cond_1

    .line 234
    const-string/jumbo v0, "TO_USER expects a User object as recipient"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    instance-of v0, v0, Lsfs2x/client/entities/Room;

    if-nez v0, :cond_1

    .line 240
    const-string/jumbo v0, "TO_ROOM expects a Room object as recipient"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->recipient:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 246
    const-string/jumbo v0, "TO_GROUP expects a String object (the groupId) as recipient"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute(Lsfs2x/client/ISmartFox;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->sfso:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    const-string/jumbo v1, "t"

    iget v2, p0, Lsfs2x/client/requests/GenericMessageRequest;->type:I

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putByte(Ljava/lang/String;B)V

    .line 157
    iget v0, p0, Lsfs2x/client/requests/GenericMessageRequest;->type:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :pswitch_0
    invoke-direct {p0, p1}, Lsfs2x/client/requests/GenericMessageRequest;->executeSuperUserMessage(Lsfs2x/client/ISmartFox;)V

    .line 177
    :goto_0
    return-void

    .line 159
    :pswitch_1
    invoke-direct {p0, p1}, Lsfs2x/client/requests/GenericMessageRequest;->executePublicMessage(Lsfs2x/client/ISmartFox;)V

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-direct {p0, p1}, Lsfs2x/client/requests/GenericMessageRequest;->executePrivateMessage(Lsfs2x/client/ISmartFox;)V

    goto :goto_0

    .line 167
    :pswitch_3
    invoke-direct {p0, p1}, Lsfs2x/client/requests/GenericMessageRequest;->executeObjectMessage(Lsfs2x/client/ISmartFox;)V

    goto :goto_0

    .line 171
    :pswitch_4
    invoke-direct {p0, p1}, Lsfs2x/client/requests/GenericMessageRequest;->executeBuddyMessage(Lsfs2x/client/ISmartFox;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public validate(Lsfs2x/client/ISmartFox;)V
    .locals 5
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsfs2x/client/exceptions/SFSValidationException;
        }
    .end annotation

    .prologue
    .line 118
    iget v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->type:I

    if-gez v1, :cond_0

    .line 119
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "PublicMessage request error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported message type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lsfs2x/client/requests/GenericMessageRequest;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p0, Lsfs2x/client/requests/GenericMessageRequest;->type:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lsfs2x/client/requests/GenericMessageRequest;->validateSuperUserMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V

    .line 145
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Lsfs2x/client/exceptions/SFSValidationException;

    const-string/jumbo v2, "Request error - "

    invoke-direct {v1, v2, v0}, Lsfs2x/client/exceptions/SFSValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 126
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lsfs2x/client/requests/GenericMessageRequest;->validatePublicMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lsfs2x/client/requests/GenericMessageRequest;->validatePrivateMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lsfs2x/client/requests/GenericMessageRequest;->validateObjectMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V

    goto :goto_0

    .line 138
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lsfs2x/client/requests/GenericMessageRequest;->validateBuddyMessage(Lsfs2x/client/ISmartFox;Ljava/util/List;)V

    goto :goto_0

    .line 148
    :cond_1
    return-void

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
