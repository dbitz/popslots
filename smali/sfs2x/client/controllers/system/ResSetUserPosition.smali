.class public Lsfs2x/client/controllers/system/ResSetUserPosition;
.super Ljava/lang/Object;
.source "ResSetUserPosition.java"

# interfaces
.implements Lsfs2x/client/controllers/IResHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lsfs2x/client/ISmartFox;Lsfs2x/client/controllers/SystemController;Lsfs2x/client/bitswarm/IMessage;)V
    .locals 30
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "systemController"    # Lsfs2x/client/controllers/SystemController;
    .param p3, "message"    # Lsfs2x/client/bitswarm/IMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-interface/range {p3 .. p3}, Lsfs2x/client/bitswarm/IMessage;->getContent()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v23

    .line 32
    .local v23, "sfso":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v7, "evtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v27, "r"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 36
    .local v22, "roomId":I
    const-string/jumbo v27, "m"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getIntArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v12

    .line 37
    .local v12, "minusUserList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const-string/jumbo v27, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v18

    .line 39
    .local v18, "plusUserList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const-string/jumbo v27, "n"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getIntArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v11

    .line 40
    .local v11, "minusItemList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const-string/jumbo v27, "q"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v17

    .line 42
    .local v17, "plusItemList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface/range {p1 .. p1}, Lsfs2x/client/ISmartFox;->getRoomManager()Lsfs2x/client/entities/managers/IRoomManager;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lsfs2x/client/entities/managers/IRoomManager;->getRoomById(I)Lsfs2x/client/entities/Room;

    move-result-object v24

    .line 48
    .local v24, "theRoom":Lsfs2x/client/entities/Room;
    if-nez v24, :cond_0

    .line 50
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, " >>> TARGET ROOM IS NULL: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v4, "addedUsers":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/User;>;"
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 58
    .local v21, "removedUsers":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/User;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .local v3, "addedItems":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 63
    .local v19, "removedItems":Ljava/util/List;, "Ljava/util/List<Lsfs2x/client/entities/IMMOItem;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v27

    if-lez v27, :cond_2

    .line 65
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_1
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_7

    .line 78
    :cond_2
    if-eqz v18, :cond_3

    .line 80
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface/range {v18 .. v18}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-lt v8, v0, :cond_8

    .end local v8    # "i":I
    :cond_3
    move-object/from16 v14, v24

    .line 100
    check-cast v14, Lsfs2x/client/entities/MMORoom;

    .line 103
    .local v14, "mmoRoom":Lsfs2x/client/entities/MMORoom;
    if-eqz v11, :cond_5

    .line 105
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_4
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_a

    .line 121
    :cond_5
    if-eqz v17, :cond_6

    .line 123
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    invoke-interface/range {v17 .. v17}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-lt v8, v0, :cond_b

    .line 150
    .end local v8    # "i":I
    :cond_6
    const-string/jumbo v27, "addedItems"

    move-object/from16 v0, v27

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v27, "removedItems"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v27, "removedUsers"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v27, "addedUsers"

    move-object/from16 v0, v27

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v27, "room"

    move-object/from16 v0, v27

    invoke-interface {v7, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v27, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v28, "proximityListUpdate"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lsfs2x/client/ISmartFox;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    goto/16 :goto_0

    .line 65
    .end local v14    # "mmoRoom":Lsfs2x/client/entities/MMORoom;
    :cond_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 67
    .local v25, "uid":Ljava/lang/Integer;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lsfs2x/client/entities/Room;->getUserById(I)Lsfs2x/client/entities/User;

    move-result-object v20

    .line 69
    .local v20, "removedUser":Lsfs2x/client/entities/User;
    if-eqz v20, :cond_1

    .line 71
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lsfs2x/client/entities/Room;->removeUser(Lsfs2x/client/entities/User;)V

    .line 72
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 82
    .end local v20    # "removedUser":Lsfs2x/client/entities/User;
    .end local v25    # "uid":Ljava/lang/Integer;
    .restart local v8    # "i":I
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    .line 84
    .local v6, "encodedUser":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const/16 v27, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Lsfs2x/client/controllers/SystemController;->getOrCreateUser(Lcom/smartfoxserver/v2/entities/data/ISFSArray;ZLsfs2x/client/entities/Room;)Lsfs2x/client/entities/User;

    move-result-object v16

    .line 85
    .local v16, "newUser":Lsfs2x/client/entities/User;
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lsfs2x/client/entities/Room;->addUser(Lsfs2x/client/entities/User;)V

    .line 92
    invoke-interface {v6}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v27

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_9

    .line 94
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-interface {v6, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v26

    .line 95
    .local v26, "userEntryPos":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-static/range {v26 .. v26}, Lsfs2x/client/entities/data/Vec3D;->fromArray(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lsfs2x/client/entities/User;->setAOIEntryPoint(Lsfs2x/client/entities/data/Vec3D;)V

    .line 80
    .end local v26    # "userEntryPos":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 105
    .end local v6    # "encodedUser":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .end local v8    # "i":I
    .end local v16    # "newUser":Lsfs2x/client/entities/User;
    .restart local v14    # "mmoRoom":Lsfs2x/client/entities/MMORoom;
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 107
    .local v10, "itemId":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lsfs2x/client/entities/MMORoom;->getMMOItem(I)Lsfs2x/client/entities/IMMOItem;

    move-result-object v13

    .line 109
    .local v13, "mmoItem":Lsfs2x/client/entities/IMMOItem;
    if-eqz v13, :cond_4

    .line 112
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lsfs2x/client/entities/MMORoom;->RemoveItem(I)V

    .line 115
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 125
    .end local v10    # "itemId":Ljava/lang/Integer;
    .end local v13    # "mmoItem":Lsfs2x/client/entities/IMMOItem;
    .restart local v8    # "i":I
    :cond_b
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSArray(I)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v5

    .line 128
    .local v5, "encodedItem":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-static {v5}, Lsfs2x/client/entities/MMOItem;->fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/IMMOItem;

    move-result-object v15

    .line 131
    .local v15, "newItem":Lsfs2x/client/entities/IMMOItem;
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v14, v15}, Lsfs2x/client/entities/MMORoom;->addMMOItem(Lsfs2x/client/entities/IMMOItem;)V

    .line 141
    invoke-interface {v5}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 143
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-interface {v5, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->get(I)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v9

    .line 144
    .local v9, "itemEntryPos":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    check-cast v15, Lsfs2x/client/entities/MMOItem;

    .end local v15    # "newItem":Lsfs2x/client/entities/IMMOItem;
    invoke-static {v9}, Lsfs2x/client/entities/data/Vec3D;->fromArray(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Lsfs2x/client/entities/data/Vec3D;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lsfs2x/client/entities/MMOItem;->setAOIEntryPoint(Lsfs2x/client/entities/data/Vec3D;)V

    .line 123
    .end local v9    # "itemEntryPos":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4
.end method
