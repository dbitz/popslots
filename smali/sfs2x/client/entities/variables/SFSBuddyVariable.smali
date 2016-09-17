.class public Lsfs2x/client/entities/variables/SFSBuddyVariable;
.super Ljava/lang/Object;
.source "SFSBuddyVariable.java"

# interfaces
.implements Lsfs2x/client/entities/variables/BuddyVariable;


# static fields
.field public static final OFFLINE_PREFIX:Ljava/lang/String; = "$"


# instance fields
.field protected name:Ljava/lang/String;

.field protected type:I

.field protected val:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->name:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    .line 73
    iput-object p2, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    .line 74
    iput p3, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p2}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/BuddyVariable;
    .locals 4
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 46
    new-instance v0, Lsfs2x/client/entities/variables/SFSBuddyVariable;

    .line 47
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getElementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 49
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getByte(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 46
    invoke-direct {v0, v1, v2, v3}, Lsfs2x/client/entities/variables/SFSBuddyVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method private populateArrayWithValue(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
    .locals 2
    .param p1, "arr"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 188
    iget v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addNull()V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->getBoolValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addBool(Z)V

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->getIntValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addInt(I)V

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->getDoubleValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addDouble(D)V

    goto :goto_0

    .line 206
    :pswitch_4
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_5
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->getSFSObjectValue()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0

    .line 214
    :pswitch_6
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->getSFSArrayValue()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 220
    iput-object p1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    .line 261
    :goto_0
    return-void

    .line 228
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 229
    const/4 v1, 0x1

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    goto :goto_0

    .line 233
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 234
    const/4 v1, 0x2

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    goto :goto_0

    .line 237
    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 238
    const/4 v1, 0x3

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    goto :goto_0

    .line 240
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 241
    const/4 v1, 0x4

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "SFSObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    const/4 v1, 0x5

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    goto :goto_0

    .line 252
    :cond_5
    const-string/jumbo v1, "SFSArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    const/4 v1, 0x6

    iput v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    goto :goto_0

    .line 257
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unsupport SFS Variable type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBoolValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDoubleValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getIntValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSFSArrayValue()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    return-object v0
.end method

.method public getSFSObjectValue()Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffline()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->name:Ljava/lang/String;

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v0

    .line 167
    .local v0, "sfsa":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    .line 170
    iget v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addByte(B)V

    .line 173
    invoke-direct {p0, v0}, Lsfs2x/client/entities/variables/SFSBuddyVariable;->populateArrayWithValue(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 175
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[BuddyVar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSBuddyVariable;->val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
