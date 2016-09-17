.class public final enum Lcom/smartfoxserver/v2/entities/data/SFSDataType;
.super Ljava/lang/Enum;
.source "SFSDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartfoxserver/v2/entities/data/SFSDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field private static final synthetic ENUM$VALUES:[Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

.field public static final enum UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;


# instance fields
.field private typeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "NULL"

    invoke-direct {v0, v1, v4, v4}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 6
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "BOOL"

    invoke-direct {v0, v1, v5, v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 7
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "BYTE"

    invoke-direct {v0, v1, v6, v6}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 8
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "SHORT"

    invoke-direct {v0, v1, v7, v7}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 9
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "INT"

    invoke-direct {v0, v1, v8, v8}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 10
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "LONG"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 11
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "FLOAT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 12
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "DOUBLE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 13
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "UTF_STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 14
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "BOOL_ARRAY"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 15
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "BYTE_ARRAY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 16
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "SHORT_ARRAY"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 17
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "INT_ARRAY"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 18
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "LONG_ARRAY"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 19
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "FLOAT_ARRAY"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 20
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "DOUBLE_ARRAY"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 21
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "UTF_STRING_ARRAY"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 22
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "SFS_ARRAY"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 23
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "SFS_OBJECT"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 24
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const-string/jumbo v1, "CLASS"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 3
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ENUM$VALUES:[Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "typeID"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->typeID:I

    .line 32
    return-void
.end method

.method public static fromClass(Ljava/lang/Class;)Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromTypeId(I)Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .locals 5
    .param p0, "typeId"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->values()[Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown typeId for SFSDataType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    aget-object v0, v2, v1

    .line 44
    .local v0, "item":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    invoke-virtual {v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 46
    return-object v0

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    return-object v0
.end method

.method public static values()[Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ENUM$VALUES:[Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    array-length v1, v0

    new-array v2, v1, [Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTypeID()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->typeID:I

    return v0
.end method
