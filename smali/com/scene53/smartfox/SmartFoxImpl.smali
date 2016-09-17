.class public Lcom/scene53/smartfox/SmartFoxImpl;
.super Ljava/lang/Object;
.source "SmartFoxImpl.java"

# interfaces
.implements Lsfs2x/client/core/IEventListener;


# static fields
.field public static s_activity:Landroid/app/Activity;

.field static s_instance:Lcom/scene53/smartfox/SmartFoxImpl;

.field static s_loginParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field static s_password:Ljava/lang/String;

.field static s_serverIP:Ljava/lang/String;

.field static s_serverPort:I

.field static s_userName:Ljava/lang/String;

.field static s_zoneName:Ljava/lang/String;


# instance fields
.field m_sfsClient:Lsfs2x/client/SmartFox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_instance:Lcom/scene53/smartfox/SmartFoxImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectSmartFox(Ljava/lang/String;I)V
    .locals 2
    .param p0, "serverIP"    # Ljava/lang/String;
    .param p1, "serverPort"    # I

    .prologue
    .line 83
    sput-object p0, Lcom/scene53/smartfox/SmartFoxImpl;->s_serverIP:Ljava/lang/String;

    .line 84
    sput p1, Lcom/scene53/smartfox/SmartFoxImpl;->s_serverPort:I

    .line 85
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v1, Lcom/scene53/smartfox/SmartFoxImpl$2;

    invoke-direct {v1}, Lcom/scene53/smartfox/SmartFoxImpl$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public static disconnectSmartFox()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v1, Lcom/scene53/smartfox/SmartFoxImpl$3;

    invoke-direct {v1}, Lcom/scene53/smartfox/SmartFoxImpl$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public static getArraySize(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)I
    .locals 1
    .param p0, "arr"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 291
    invoke-interface {p0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v0

    return v0
.end method

.method public static getBoolArrayFromSFSObject(Lcom/smartfoxserver/v2/entities/data/SFSObject;Ljava/lang/String;)[Z
    .locals 5
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->getBoolArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Boolean;

    .line 312
    .local v2, "objArr":[Ljava/lang/Boolean;
    array-length v3, v2

    new-array v0, v3, [Z

    .line 313
    .local v0, "arr":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 314
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-object v0
.end method

.method public static getDoubleArrayFromSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)[D
    .locals 6
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getDoubleArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Double;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Double;

    .line 320
    .local v2, "objArr":[Ljava/lang/Double;
    array-length v3, v2

    new-array v0, v3, [D

    .line 321
    .local v0, "arr":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 322
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-object v0
.end method

.method public static getDoubleFromArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;I)D
    .locals 2
    .param p0, "arr"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .param p1, "index"    # I

    .prologue
    .line 295
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getDouble(I)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/scene53/smartfox/SmartFoxImpl;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_instance:Lcom/scene53/smartfox/SmartFoxImpl;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-direct {v0}, Lcom/scene53/smartfox/SmartFoxImpl;-><init>()V

    sput-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_instance:Lcom/scene53/smartfox/SmartFoxImpl;

    .line 70
    :cond_0
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_instance:Lcom/scene53/smartfox/SmartFoxImpl;

    return-object v0
.end method

.method public static getIntArrayFromSFSObject(Lcom/smartfoxserver/v2/entities/data/SFSObject;Ljava/lang/String;)[I
    .locals 5
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->getIntArray(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 304
    .local v2, "objArr":[Ljava/lang/Integer;
    array-length v3, v2

    new-array v0, v3, [I

    .line 305
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 306
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-object v0
.end method

.method public static getSFSObjectBoolean(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)Z
    .locals 5
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v2

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v2, v3, :cond_0

    .line 261
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "strVal":Ljava/lang/String;
    const-string/jumbo v2, "Scene53"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSFSObjectBoolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 267
    .end local v1    # "strVal":Ljava/lang/String;
    :goto_0
    return v2

    .line 265
    :cond_0
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getBool(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 266
    .local v0, "bObj":Ljava/lang/Boolean;
    const-string/jumbo v2, "Scene53"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSFSObjectBoolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static getSFSObjectDouble(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)D
    .locals 2
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSFSObjectFloat(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)F
    .locals 1
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getSFSObjectFromArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;I)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 1
    .param p0, "arr"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .param p1, "index"    # I

    .prologue
    .line 287
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSObject(I)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    return-object v0
.end method

.method public static getSFSObjectInt(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)I
    .locals 1
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSFSObjectKeys(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)[Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 300
    invoke-interface {p0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getKeys()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSFSObjectLong(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)J
    .locals 2
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSFSObjectShort(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/lang/String;)S
    .locals 2
    .param p0, "obj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-interface {p0, p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 255
    .local v0, "s":Ljava/lang/Short;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public static initSmartFox()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v1, Lcom/scene53/smartfox/SmartFoxImpl$1;

    invoke-direct {v1}, Lcom/scene53/smartfox/SmartFoxImpl$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public static killConnectionSmartFox()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v1, Lcom/scene53/smartfox/SmartFoxImpl$4;

    invoke-direct {v1}, Lcom/scene53/smartfox/SmartFoxImpl$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public static loginSmartFox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 2
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "zoneName"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 112
    sput-object p0, Lcom/scene53/smartfox/SmartFoxImpl;->s_userName:Ljava/lang/String;

    .line 113
    sput-object p1, Lcom/scene53/smartfox/SmartFoxImpl;->s_password:Ljava/lang/String;

    .line 114
    sput-object p2, Lcom/scene53/smartfox/SmartFoxImpl;->s_zoneName:Ljava/lang/String;

    .line 115
    sput-object p3, Lcom/scene53/smartfox/SmartFoxImpl;->s_loginParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 116
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v1, Lcom/scene53/smartfox/SmartFoxImpl$5;

    invoke-direct {v1}, Lcom/scene53/smartfox/SmartFoxImpl$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public static sendRequestSmartFox(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 4
    .param p0, "reqName"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 126
    move-object v1, p0

    .line 127
    .local v1, "innerReqName":Ljava/lang/String;
    move-object v0, p1

    .line 128
    .local v0, "innerParams":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    sget-object v2, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v3, Lcom/scene53/smartfox/SmartFoxImpl$6;

    invoke-direct {v3, v1, v0}, Lcom/scene53/smartfox/SmartFoxImpl$6;-><init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public connectInstance(Ljava/lang/String;I)V
    .locals 2
    .param p1, "serverIP"    # Ljava/lang/String;
    .param p2, "serverPort"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v0, p1, p2}, Lsfs2x/client/SmartFox;->connect(Ljava/lang/String;I)V

    .line 162
    const-string/jumbo v0, "SFSImpl"

    const-string/jumbo v1, "SFS connecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public destroySmartFoxInstance()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/scene53/smartfox/SmartFoxImpl;->disconnect()V

    .line 185
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->removeAllEventListeners()V

    .line 186
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->disconnect()V

    .line 195
    :cond_0
    return-void
.end method

.method public disconnectInstance()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->disconnect()V

    .line 167
    const-string/jumbo v0, "SFSImpl"

    const-string/jumbo v1, "SFS disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public dispatch(Lsfs2x/client/core/BaseEvent;)V
    .locals 2
    .param p1, "event"    # Lsfs2x/client/core/BaseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/scene53/smartfox/SmartFoxImpl;->s_activity:Landroid/app/Activity;

    new-instance v1, Lcom/scene53/smartfox/SmartFoxImpl$7;

    invoke-direct {v1, p0, p1}, Lcom/scene53/smartfox/SmartFoxImpl$7;-><init>(Lcom/scene53/smartfox/SmartFoxImpl;Lsfs2x/client/core/BaseEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public initSmartFoxInstance()V
    .locals 6

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "isDebug":Z
    new-instance v3, Lsfs2x/client/SmartFox;

    invoke-direct {v3, v0}, Lsfs2x/client/SmartFox;-><init>(Z)V

    iput-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    .line 143
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "connection"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 144
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "connectionLost"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 145
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "login"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 146
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "loginError"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 147
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "roomJoin"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 148
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "handshake"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 149
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "socketError"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 150
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    const-string/jumbo v4, "extensionResponse"

    invoke-virtual {v3, v4, p0}, Lsfs2x/client/SmartFox;->addEventListener(Ljava/lang/String;Lsfs2x/client/core/IEventListener;)V

    .line 152
    iget-object v3, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v3}, Lsfs2x/client/SmartFox;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "version":Ljava/lang/String;
    const-string/jumbo v3, "SFSImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SFS initialized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string/jumbo v1, "initSmartFoxInstance threadId (UITHREAD): "

    .line 156
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string/jumbo v3, "SFSImpl"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public killConnectionInstance()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    invoke-virtual {v0}, Lsfs2x/client/SmartFox;->killConnection()V

    .line 171
    return-void
.end method

.method public loginInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "zoneName"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    new-instance v1, Lsfs2x/client/requests/LoginRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lsfs2x/client/requests/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    invoke-virtual {v0, v1}, Lsfs2x/client/SmartFox;->send(Lsfs2x/client/requests/IRequest;)V

    .line 175
    const-string/jumbo v0, "SFSImpl"

    const-string/jumbo v1, "SFS loggin start..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public native onSFSClientConnected()V
.end method

.method public native onSFSClientConnectionError()V
.end method

.method public native onSFSClientConnectionLost()V
.end method

.method public native onSFSClientExtensionResponse(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
.end method

.method public native onSFSClientLoggedIn()V
.end method

.method public native onSFSClientLoginError()V
.end method

.method public native onSFSClientRoomJoined()V
.end method

.method public sendRequest(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 2
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/scene53/smartfox/SmartFoxImpl;->m_sfsClient:Lsfs2x/client/SmartFox;

    new-instance v1, Lsfs2x/client/requests/ExtensionRequest;

    invoke-direct {v1, p1, p2}, Lsfs2x/client/requests/ExtensionRequest;-><init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    invoke-virtual {v0, v1}, Lsfs2x/client/SmartFox;->send(Lsfs2x/client/requests/IRequest;)V

    .line 181
    return-void
.end method
