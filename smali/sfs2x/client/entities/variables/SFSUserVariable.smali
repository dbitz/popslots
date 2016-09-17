.class public Lsfs2x/client/entities/variables/SFSUserVariable;
.super Ljava/lang/Object;
.source "SFSUserVariable.java"

# interfaces
.implements Lsfs2x/client/entities/variables/UserVariable;


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
    .line 40
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lsfs2x/client/entities/variables/SFSUserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->name:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    .line 56
    iput-object p2, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    .line 57
    iput p3, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p2}, Lsfs2x/client/entities/variables/SFSUserVariable;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static fromSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Lsfs2x/client/entities/variables/UserVariable;
    .locals 4
    .param p0, "sfsa"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 29
    new-instance v0, Lsfs2x/client/entities/variables/SFSUserVariable;

    .line 30
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getUtfString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getElementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 32
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getByte(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 29
    invoke-direct {v0, v1, v2, v3}, Lsfs2x/client/entities/variables/SFSUserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method private populateArrayWithValue(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V
    .locals 2
    .param p1, "arr"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 163
    iget v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addNull()V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->getBoolValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addBool(Z)V

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->getIntValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addInt(I)V

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->getDoubleValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addDouble(D)V

    goto :goto_0

    .line 181
    :pswitch_4
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->getSFSObjectValue()Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0

    .line 189
    :pswitch_6
    invoke-virtual {p0}, Lsfs2x/client/entities/variables/SFSUserVariable;->getSFSArrayValue()Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    goto :goto_0

    .line 163
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
    .line 195
    iput-object p1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    .line 236
    :goto_0
    return-void

    .line 203
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x1

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    goto :goto_0

    .line 208
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 209
    const/4 v1, 0x2

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    goto :goto_0

    .line 212
    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 213
    const/4 v1, 0x3

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    goto :goto_0

    .line 215
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 216
    const/4 v1, 0x4

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "SFSObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    const/4 v1, 0x5

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    goto :goto_0

    .line 227
    :cond_5
    const-string/jumbo v1, "SFSArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 228
    const/4 v1, 0x6

    iput v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    goto :goto_0

    .line 232
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
    .line 90
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDoubleValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getIntValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSFSArrayValue()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    return-object v0
.end method

.method public getSFSObjectValue()Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toSFSArray()Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v0

    .line 142
    .local v0, "sfsa":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addUtfString(Ljava/lang/String;)V

    .line 145
    iget v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addByte(B)V

    .line 148
    invoke-direct {p0, v0}, Lsfs2x/client/entities/variables/SFSUserVariable;->populateArrayWithValue(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 150
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[UVar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsfs2x/client/entities/variables/SFSUserVariable;->val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
