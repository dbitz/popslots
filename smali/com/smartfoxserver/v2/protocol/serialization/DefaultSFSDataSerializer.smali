.class public Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;
.super Ljava/lang/Object;
.source "DefaultSFSDataSerializer.java"

# interfaces
.implements Lcom/smartfoxserver/v2/protocol/serialization/ISFSDataSerializer;


# static fields
.field private static synthetic $SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType:[I = null

.field private static BUFFER_CHUNK_SIZE:I = 0x0

.field private static final CLASS_FIELDS_KEY:Ljava/lang/String; = "$F"

.field private static final CLASS_MARKER_KEY:Ljava/lang/String; = "$C"

.field private static final FIELD_NAME_KEY:Ljava/lang/String; = "N"

.field private static final FIELD_VALUE_KEY:Ljava/lang/String; = "V"

.field private static instance:Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method static synthetic $SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType()[I
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->$SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->values()[Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_13

    :goto_1
    :try_start_1
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_12

    :goto_2
    :try_start_2
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_11

    :goto_3
    :try_start_3
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_10

    :goto_4
    :try_start_4
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_f

    :goto_5
    :try_start_5
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_e

    :goto_6
    :try_start_6
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_d

    :goto_7
    :try_start_7
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_c

    :goto_8
    :try_start_8
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_b

    :goto_9
    :try_start_9
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_a

    :goto_a
    :try_start_a
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_9

    :goto_b
    :try_start_b
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_8

    :goto_c
    :try_start_c
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_7

    :goto_d
    :try_start_d
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_6

    :goto_e
    :try_start_e
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_5

    :goto_f
    :try_start_f
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4

    :goto_10
    :try_start_10
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_3

    :goto_11
    :try_start_11
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2

    :goto_12
    :try_start_12
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1

    :goto_13
    :try_start_13
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_0

    :goto_14
    sput-object v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->$SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;-><init>()V

    sput-object v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->instance:Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    .line 64
    const/16 v0, 0x200

    sput v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->BUFFER_CHUNK_SIZE:I

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->logger:Lorg/slf4j/Logger;

    .line 76
    return-void
.end method

.method private addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "newData"    # [B

    .prologue
    .line 1329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 1331
    sget v1, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->BUFFER_CHUNK_SIZE:I

    .line 1334
    .local v1, "newSize":I
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1335
    array-length v1, p2

    .line 1337
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1338
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1339
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1342
    move-object p1, v0

    .line 1349
    .end local v0    # "newBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "newSize":I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1351
    return-object p1
.end method

.method private arr2bin(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Ljava/nio/ByteBuffer;)[B
    .locals 6
    .param p1, "array"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 541
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 554
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 557
    .local v2, "pos":I
    new-array v3, v2, [B

    .line 558
    .local v3, "result":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 561
    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 564
    return-object v3

    .line 546
    .end local v2    # "pos":I
    .end local v3    # "result":[B
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 547
    .local v4, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-virtual {v4}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 550
    .local v0, "dataObj":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v5

    invoke-direct {p0, p2, v5, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->encodeObject(Ljava/nio/ByteBuffer;Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0
.end method

.method private binDecode_BOOL(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 858
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 859
    .local v1, "boolByte":B
    const/4 v0, 0x0

    .line 861
    .local v0, "bool":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 862
    new-instance v0, Ljava/lang/Boolean;

    .end local v0    # "bool":Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 868
    .restart local v0    # "bool":Ljava/lang/Boolean;
    :goto_0
    new-instance v2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v2, v3, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v2

    .line 863
    :cond_0
    if-ne v1, v2, :cond_1

    .line 864
    new-instance v0, Ljava/lang/Boolean;

    .end local v0    # "bool":Ljava/lang/Boolean;
    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v0    # "bool":Ljava/lang/Boolean;
    goto :goto_0

    .line 866
    :cond_1
    new-instance v2, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error decoding Bool type. Illegal value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private binDecode_BOOL_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 943
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 944
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 961
    new-instance v4, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v4, v5, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v4

    .line 948
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 950
    .local v2, "boolData":B
    if-nez v2, :cond_1

    .line 951
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 952
    :cond_1
    if-ne v2, v5, :cond_2

    .line 953
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 957
    :cond_2
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error decoding BoolArray. Invalid bool value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private binDecode_BYTE(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 873
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 875
    .local v0, "boolByte":B
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v1
.end method

.method private binDecode_BYTE_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 975
    .local v0, "arraySize":I
    if-gez v0, :cond_0

    .line 976
    new-instance v2, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error decoding typed array size. Negative size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 978
    :cond_0
    new-array v1, v0, [B

    .line 981
    .local v1, "byteData":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 983
    new-instance v2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v2, v3, v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v2
.end method

.method private binDecode_DOUBLE(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 908
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    .line 910
    .local v0, "doubleValue":D
    new-instance v2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v2
.end method

.method private binDecode_DOUBLE_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 1045
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 1053
    new-instance v5, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v6, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v5, v6, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v5

    .line 1049
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    .line 1050
    .local v2, "doubleValue":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private binDecode_FLOAT(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 901
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    .line 903
    .local v0, "floatValue":F
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v1
.end method

.method private binDecode_FLOAT_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 1031
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1039
    new-instance v4, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v4, v5, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v4

    .line 1035
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    .line 1036
    .local v2, "floatValue":F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private binDecode_INT(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 887
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 889
    .local v0, "intValue":I
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v1
.end method

.method private binDecode_INT_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 1003
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1011
    new-instance v4, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v4, v5, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v4

    .line 1007
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1008
    .local v2, "intValue":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private binDecode_LONG(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 894
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 896
    .local v0, "longValue":J
    new-instance v2, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v2
.end method

.method private binDecode_LONG_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 1017
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1025
    new-instance v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v6, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v3, v6, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v3

    .line 1021
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 1022
    .local v4, "longValue":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private binDecode_NULL(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 853
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v0
.end method

.method private binDecode_SHORT(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 880
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 882
    .local v0, "shortValue":S
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v1
.end method

.method private binDecode_SHORT_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 989
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 997
    new-instance v4, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v4, v5, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v4

    .line 993
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 994
    .local v3, "shortValue":S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private binDecode_UTF_STRING(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 918
    .local v2, "strLen":S
    if-gez v2, :cond_0

    .line 919
    new-instance v3, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error decoding UtfString. Negative size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    :cond_0
    new-array v1, v2, [B

    .line 923
    .local v1, "strData":[B
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 937
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 938
    .local v0, "decodedString":Ljava/lang/String;
    new-instance v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v4, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v3, v4, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v3
.end method

.method private binDecode_UTF_STRING_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getTypeArraySize(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 1059
    .local v1, "arraySize":S
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1075
    new-instance v5, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v6, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v5, v6, v0}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    return-object v5

    .line 1063
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 1065
    .local v4, "strLen":S
    if-gez v4, :cond_1

    .line 1066
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Error decoding UtfStringArray element. Element has negative size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1069
    :cond_1
    new-array v3, v4, [B

    .line 1070
    .local v3, "strData":[B
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1072
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private binEncode_BOOL(Ljava/nio/ByteBuffer;Ljava/lang/Boolean;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1103
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 1104
    .local v0, "data":[B
    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    aput-byte v1, v0, v2

    .line 1107
    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_BOOL_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1177
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1178
    .local v1, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1179
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1181
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1186
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 1181
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1183
    .local v0, "b":Z
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private binEncode_BYTE(Ljava/nio/ByteBuffer;Ljava/lang/Byte;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Byte;

    .prologue
    .line 1112
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 1113
    .local v0, "data":[B
    const/4 v1, 0x0

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1114
    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1116
    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_BYTE_ARRAY(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # [B

    .prologue
    .line 1198
    array-length v1, p2

    add-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1199
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1200
    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1203
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1205
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_DOUBLE(Ljava/nio/ByteBuffer;Ljava/lang/Double;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 1157
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1158
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1159
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 1161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_DOUBLE_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1266
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1267
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1268
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1270
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 1270
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 1272
    .local v2, "item":D
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private binEncode_FLOAT(Ljava/nio/ByteBuffer;Ljava/lang/Float;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 1148
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1149
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1150
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_FLOAT_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1253
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1254
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1256
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 1256
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1258
    .local v1, "item":F
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private binEncode_INT(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 1130
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1131
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1132
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_INT_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1225
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1226
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1228
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 1228
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1230
    .local v1, "item":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private binEncode_LONG(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 1139
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1140
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1141
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_LONG_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1238
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1239
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1240
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1242
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1247
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 1242
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1244
    .local v2, "item":J
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private binEncode_NULL(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1098
    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private binEncode_SHORT(Ljava/nio/ByteBuffer;Ljava/lang/Short;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/Short;

    .prologue
    .line 1121
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1122
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1123
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private binEncode_SHORT_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1210
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Short;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1211
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1212
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1214
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 1214
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 1216
    .local v1, "item":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private binEncode_UTF_STRING(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1166
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1167
    .local v1, "stringBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1168
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1169
    array-length v2, v1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1170
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method private binEncode_UTF_STRING_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1285
    .local v7, "stringDataLen":I
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v2, v8, [[B

    .line 1286
    .local v2, "binStrings":[[B
    const/4 v4, 0x0

    .line 1289
    .local v4, "count":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1297
    add-int/lit8 v8, v7, 0x3

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1298
    .local v3, "buf":Ljava/nio/ByteBuffer;
    sget-object v8, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v8}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1299
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1301
    array-length v9, v2

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    .line 1307
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8

    .line 1289
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1291
    .local v6, "item":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1292
    .local v1, "binStr":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .local v5, "count":I
    aput-object v1, v2, v4

    .line 1293
    array-length v9, v1

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    goto :goto_0

    .line 1301
    .end local v1    # "binStr":[B
    .end local v6    # "item":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    aget-object v0, v2, v8

    .line 1303
    .local v0, "binItem":[B
    array-length v10, v0

    int-to-short v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1304
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1301
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private convertPojo(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 17
    .param p1, "pojo"    # Ljava/lang/Object;
    .param p2, "sfsObj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1406
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1407
    .local v10, "pojoClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 1409
    .local v2, "classFullName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1410
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Anonymous classes cannot be serialized!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1412
    :cond_0
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/smartfoxserver/v2/protocol/serialization/SerializableSFSType;

    if-nez v11, :cond_1

    .line 1413
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Cannot serialize object: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " -- It doesn\'t implement the SerializableSFSType interface"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1415
    :cond_1
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v6

    .line 1418
    .local v6, "fieldList":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    const-string/jumbo v11, "$C"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v2}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string/jumbo v11, "$F"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v6}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putSFSArray(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSArray;)V

    .line 1422
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v13, :cond_2

    .line 1469
    return-void

    .line 1422
    :cond_2
    aget-object v4, v12, v11

    .line 1427
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    .line 1430
    .local v9, "modifiers":I
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1422
    .end local v9    # "modifiers":I
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1433
    .restart local v9    # "modifiers":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1434
    .local v7, "fieldName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1437
    .local v8, "fieldValue":Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1438
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1452
    :goto_2
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v5

    .line 1455
    .local v5, "fieldDescriptor":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v14, "N"

    invoke-interface {v5, v14, v7}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v14, "V"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->wrapPojoField(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->put(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    .line 1461
    invoke-interface {v6, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->addSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1463
    .end local v5    # "fieldDescriptor":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v8    # "fieldValue":Ljava/lang/Object;
    .end local v9    # "modifiers":I
    :catch_0
    move-exception v3

    .line 1465
    .local v3, "err":Ljava/lang/NoSuchMethodException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->logger:Lorg/slf4j/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "-- No public getter -- Serializer skipping private field: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", from class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 1448
    .end local v3    # "err":Ljava/lang/NoSuchMethodException;
    .restart local v7    # "fieldName":Ljava/lang/String;
    .restart local v8    # "fieldValue":Ljava/lang/Object;
    .restart local v9    # "modifiers":I
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v14, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->readValueFromGetter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_2
.end method

.method private convertSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Ljava/lang/Object;)V
    .locals 5
    .param p1, "fieldList"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .param p2, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1653
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1661
    return-void

    .line 1655
    :cond_0
    invoke-interface {p1, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->getSFSObject(I)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    .line 1656
    .local v0, "fieldDescriptor":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v4, "N"

    invoke-interface {v0, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "fieldName":Ljava/lang/String;
    const-string/jumbo v4, "V"

    invoke-interface {v0, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->unwrapPojoField(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Ljava/lang/Object;

    move-result-object v2

    .line 1659
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-direct {p0, p2, v1, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1653
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private decodeJsonObject(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 310
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v1, v2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .line 345
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 314
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 315
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v1, v2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 319
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v1, v2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    :cond_2
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 323
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v1, v2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 327
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v1, v2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_4
    instance-of v1, p1, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 332
    check-cast v0, Lnet/sf/json/JSONObject;

    .line 334
    .local v0, "jso":Lnet/sf/json/JSONObject;
    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v1, v2, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_5
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSObject(Lnet/sf/json/JSONObject;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    .end local v0    # "jso":Lnet/sf/json/JSONObject;
    :cond_6
    instance-of v1, p1, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_7

    .line 345
    new-instance v1, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    check-cast p1, Lnet/sf/json/JSONArray;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSArray(Lnet/sf/json/JSONArray;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 355
    const-string/jumbo v3, "Unrecognized DataType while converting JSONObject 2 SFSObject. Object: %s, Type: %s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 356
    aput-object p1, v4, v1

    const/4 v5, 0x1

    .line 357
    if-nez p1, :cond_8

    const-string/jumbo v1, "null"

    :goto_1
    aput-object v1, v4, v5

    .line 353
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1
.end method

.method private decodeObject(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 658
    .local v0, "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 660
    .local v2, "headerByte":B
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 661
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_NULL(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    .line 663
    :cond_0
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 664
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_BOOL(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 666
    :cond_1
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 667
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_BOOL_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 669
    :cond_2
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 670
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_BYTE(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 672
    :cond_3
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 673
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_BYTE_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 675
    :cond_4
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 676
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_SHORT(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 678
    :cond_5
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 679
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_SHORT_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 681
    :cond_6
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_7

    .line 682
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_INT(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 684
    :cond_7
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_8

    .line 685
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_INT_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_8
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_9

    .line 688
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_LONG(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto :goto_0

    .line 690
    :cond_9
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_a

    .line 691
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_LONG_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 693
    :cond_a
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_b

    .line 694
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_FLOAT(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 696
    :cond_b
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_c

    .line 697
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_FLOAT_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 699
    :cond_c
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_d

    .line 700
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_DOUBLE(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 702
    :cond_d
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_e

    .line 703
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_DOUBLE_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 705
    :cond_e
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_f

    .line 706
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_UTF_STRING(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 708
    :cond_f
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_10

    .line 709
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binDecode_UTF_STRING_ARRAY(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    goto/16 :goto_0

    .line 711
    :cond_10
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_11

    .line 714
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 716
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSArray(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto/16 :goto_0

    .line 719
    :cond_11
    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v5

    if-ne v2, v5, :cond_13

    .line 722
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 727
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSObject(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v3

    .line 728
    .local v3, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    sget-object v4, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 729
    .local v4, "type":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    move-object v1, v3

    .line 731
    .local v1, "finalSfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    const-string/jumbo v5, "$C"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "$F"

    invoke-interface {v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 733
    sget-object v4, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 734
    invoke-virtual {p0, v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->sfs2pojo(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)Ljava/lang/Object;

    move-result-object v1

    .line 737
    .end local v1    # "finalSfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    :cond_12
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-direct {v0, v4, v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto/16 :goto_0

    .line 742
    .end local v3    # "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .end local v4    # "type":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    :cond_13
    new-instance v5, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknow SFSDataType ID: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decodeSFSArray(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 107
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v4

    .line 110
    .local v4, "sfsArray":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 113
    .local v2, "headerBuffer":B
    sget-object v6, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v6}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v6

    if-eq v2, v6, :cond_0

    .line 114
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Invalid SFSDataType. Expected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v8}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 120
    .local v5, "size":S
    if-gez v5, :cond_1

    .line 121
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Can\'t decode SFSArray. Size is negative = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 149
    return-object v4

    .line 133
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeObject(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v1

    .line 136
    .local v1, "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v4, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->add(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Could not decode SFSArray item at index: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/smartfoxserver/v2/exceptions/SFSCodecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "codecError":Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private decodeSFSArray(Lnet/sf/json/JSONArray;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 7
    .param p1, "jsa"    # Lnet/sf/json/JSONArray;

    .prologue
    .line 248
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v2

    .line 250
    .local v2, "sfsArray":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    return-object v2

    .line 252
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 253
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeJsonObject(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    .line 256
    .local v0, "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v2, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->add(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    goto :goto_0

    .line 259
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "(json2sfarray) Could not decode value for object: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private decodeSFSObject(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v7

    .line 176
    .local v7, "sfsObject":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 179
    .local v2, "headerBuffer":B
    sget-object v9, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v9}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v9

    if-eq v2, v9, :cond_0

    .line 180
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Invalid SFSDataType. Expected: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v11}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 186
    .local v8, "size":S
    if-gez v8, :cond_1

    .line 187
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Can\'t decode SFSObject. Size is negative = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 196
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v8, :cond_2

    .line 228
    return-object v7

    .line 199
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 202
    .local v6, "keySize":S
    if-ltz v6, :cond_3

    const/16 v9, 0xff

    if-le v6, v9, :cond_4

    .line 203
    :cond_3
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Invalid SFSObject key length. Found = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/smartfoxserver/v2/exceptions/SFSCodecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v6    # "keySize":S
    :catch_0
    move-exception v0

    .line 223
    .local v0, "codecError":Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 205
    .end local v0    # "codecError":Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
    .restart local v6    # "keySize":S
    :cond_4
    :try_start_1
    new-array v5, v6, [B

    .line 206
    .local v5, "keyData":[B
    const/4 v9, 0x0

    array-length v10, v5

    invoke-virtual {p1, v5, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 207
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeObject(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v1

    .line 213
    .local v1, "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v1, :cond_5

    .line 214
    invoke-interface {v7, v4, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->put(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_5
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Could not decode value for key: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/smartfoxserver/v2/exceptions/SFSCodecException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private decodeSFSObject(Lnet/sf/json/JSONObject;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 7
    .param p1, "jso"    # Lnet/sf/json/JSONObject;

    .prologue
    .line 286
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v2

    .line 288
    .local v2, "sfsObject":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    return-object v2

    .line 288
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 290
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 292
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeJsonObject(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v0

    .line 295
    .local v0, "decodedObject":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    if-eqz v0, :cond_1

    .line 296
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    invoke-interface {v2, v1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->put(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    goto :goto_0

    .line 298
    .restart local v1    # "key":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "(json2sfsobj) Could not decode value for key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private encodeObject(Ljava/nio/ByteBuffer;Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "typeId"    # Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 751
    invoke-static {}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->$SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unrecognized type in SFSObject serialization: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_NULL(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 839
    .end local p3    # "object":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 758
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_BOOL(Ljava/nio/ByteBuffer;Ljava/lang/Boolean;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 759
    goto :goto_0

    .line 762
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p3, Ljava/lang/Byte;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_BYTE(Ljava/nio/ByteBuffer;Ljava/lang/Byte;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 763
    goto :goto_0

    .line 766
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p3, Ljava/lang/Short;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_SHORT(Ljava/nio/ByteBuffer;Ljava/lang/Short;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 767
    goto :goto_0

    .line 770
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_INT(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 771
    goto :goto_0

    .line 774
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_LONG(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 775
    goto :goto_0

    .line 778
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_6
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_FLOAT(Ljava/nio/ByteBuffer;Ljava/lang/Float;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 779
    goto :goto_0

    .line 782
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_7
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_DOUBLE(Ljava/nio/ByteBuffer;Ljava/lang/Double;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 783
    goto :goto_0

    .line 786
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_8
    check-cast p3, Ljava/lang/String;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_UTF_STRING(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 787
    goto :goto_0

    .line 790
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_9
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_BOOL_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 791
    goto :goto_0

    .line 794
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_a
    check-cast p3, [B

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_BYTE_ARRAY(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 795
    goto :goto_0

    .line 798
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_b
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_SHORT_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 799
    goto :goto_0

    .line 802
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_c
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_INT_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 803
    goto :goto_0

    .line 806
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_d
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_LONG_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 807
    goto :goto_0

    .line 810
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_e
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_FLOAT_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 811
    goto :goto_0

    .line 814
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_f
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_DOUBLE_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 815
    goto :goto_0

    .line 818
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_10
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->binEncode_UTF_STRING_ARRAY(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 819
    goto :goto_0

    .line 823
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_11
    check-cast p3, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->array2binary(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 824
    goto :goto_0

    .line 828
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_12
    check-cast p3, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->object2binary(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 829
    goto/16 :goto_0

    .line 832
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_13
    invoke-virtual {p0, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->pojo2sfs(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->object2binary(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 833
    goto/16 :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private encodeSFSObjectKey(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1316
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1317
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1318
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1320
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->addData(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private getBlobData(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "colName"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 440
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 441
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    check-cast v1, [B

    .line 445
    .local v1, "bytes":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    new-array v1, v3, [B

    .line 446
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 459
    :goto_0
    return-object v1

    .line 449
    :catch_0
    move-exception v2

    .line 451
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SFSObject serialize error. Failed reading BLOB data for column: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 455
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 456
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 457
    throw v3
.end method

.method public static getInstance()Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->instance:Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;

    return-object v0
.end method

.method private getTypeArraySize(Ljava/nio/ByteBuffer;)S
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1082
    .local v0, "arraySize":S
    if-gez v0, :cond_0

    .line 1083
    new-instance v1, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error decoding typed array size. Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartfoxserver/v2/exceptions/SFSCodecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    :cond_0
    return v0
.end method

.method private obj2bin(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/nio/ByteBuffer;)[B
    .locals 8
    .param p1, "object"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 494
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getKeys()Ljava/util/Set;

    move-result-object v2

    .line 497
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 511
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 514
    .local v3, "pos":I
    new-array v4, v3, [B

    .line 515
    .local v4, "result":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 518
    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 521
    return-object v4

    .line 497
    .end local v3    # "pos":I
    .end local v4    # "result":[B
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v5

    .line 500
    .local v5, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "dataObj":Ljava/lang/Object;
    invoke-direct {p0, p2, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->encodeSFSObjectKey(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 506
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v7

    invoke-direct {p0, p2, v7, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->encodeObject(Ljava/nio/ByteBuffer;Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0
.end method

.method private readValueFromGetter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1473
    const/4 v3, 0x0

    .line 1474
    .local v3, "value":Ljava/lang/Object;
    const-string/jumbo v4, "boolean"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1479
    .local v2, "isBool":Z
    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1482
    .local v1, "getterName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1483
    .local v0, "getterMethod":Ljava/lang/reflect/Method;
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1486
    return-object v3

    .line 1479
    .end local v0    # "getterMethod":Ljava/lang/reflect/Method;
    .end local v1    # "getterName":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private rebuildArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Ljava/lang/Object;
    .locals 4
    .param p1, "sfsArray"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1842
    return-object v0

    .line 1838
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    invoke-direct {p0, v3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->unwrapPojoField(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Ljava/lang/Object;

    move-result-object v1

    .line 1839
    .local v1, "item":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private rebuildMap(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "sfsObj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 1847
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1849
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1855
    return-object v1

    .line 1849
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1851
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->get(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v2

    .line 1852
    .local v2, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-direct {p0, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->unwrapPojoField(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "pojo"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1670
    .local v6, "pojoClass":Ljava/lang/Class;
    invoke-virtual {v6, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1671
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 1674
    .local v4, "fieldModifier":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1764
    .end local p3    # "fieldValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1678
    .restart local p3    # "fieldValue":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 1679
    .local v5, "isArray":Z
    if-eqz v5, :cond_3

    .line 1681
    instance-of v8, p3, Ljava/util/Collection;

    if-nez v8, :cond_1

    .line 1682
    new-instance v8, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Problem during SFSObject => POJO conversion. Found array field in POJO: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", but data is not a Collection!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    move-object v1, p3

    .line 1685
    check-cast v1, Ljava/util/Collection;

    .line 1686
    .local v1, "collection":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p3

    .line 1687
    .local p3, "fieldValue":[Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1694
    .local v0, "arraySize":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    .line 1695
    .local v7, "typedArray":Ljava/lang/Object;
    invoke-static {p3, v9, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1697
    move-object p3, v7

    .line 1760
    .end local v0    # "arraySize":I
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v7    # "typedArray":Ljava/lang/Object;
    .end local p3    # "fieldValue":[Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1761
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1701
    .local p3, "fieldValue":Ljava/lang/Object;
    :cond_3
    instance-of v8, p3, Ljava/util/Collection;

    if-eqz v8, :cond_2

    move-object v1, p3

    .line 1703
    check-cast v1, Ljava/util/Collection;

    .line 1704
    .restart local v1    # "collection":Ljava/util/Collection;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 1708
    .local v3, "fieldClass":Ljava/lang/String;
    const-string/jumbo v8, "ArrayList"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "List"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1709
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "fieldValue":Ljava/lang/Object;
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1711
    :cond_5
    const-string/jumbo v8, "CopyOnWriteArrayList"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1712
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/CopyOnWriteArrayList;
    goto :goto_1

    .line 1714
    .end local p3    # "fieldValue":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_6
    const-string/jumbo v8, "LinkedList"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1715
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/LinkedList;
    goto :goto_1

    .line 1717
    .end local p3    # "fieldValue":Ljava/util/LinkedList;
    :cond_7
    const-string/jumbo v8, "Vector"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1718
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/Vector;
    goto :goto_1

    .line 1721
    .end local p3    # "fieldValue":Ljava/util/Vector;
    :cond_8
    const-string/jumbo v8, "Set"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "HashSet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1722
    :cond_9
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/HashSet;
    goto :goto_1

    .line 1724
    .end local p3    # "fieldValue":Ljava/util/HashSet;
    :cond_a
    const-string/jumbo v8, "LinkedHashSet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1725
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/LinkedHashSet;
    goto/16 :goto_1

    .line 1727
    .end local p3    # "fieldValue":Ljava/util/LinkedHashSet;
    :cond_b
    const-string/jumbo v8, "TreeSet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1728
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/TreeSet;
    goto/16 :goto_1

    .line 1730
    .end local p3    # "fieldValue":Ljava/util/TreeSet;
    :cond_c
    const-string/jumbo v8, "CopyOnWriteArraySet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1731
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/CopyOnWriteArraySet;
    goto/16 :goto_1

    .line 1734
    .end local p3    # "fieldValue":Ljava/util/concurrent/CopyOnWriteArraySet;
    :cond_d
    const-string/jumbo v8, "Queue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "PriorityQueue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1735
    :cond_e
    new-instance p3, Ljava/util/PriorityQueue;

    invoke-direct {p3, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/PriorityQueue;
    goto/16 :goto_1

    .line 1737
    .end local p3    # "fieldValue":Ljava/util/PriorityQueue;
    :cond_f
    const-string/jumbo v8, "BlockingQueue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "LinkedBlockingQueue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1738
    :cond_10
    new-instance p3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/LinkedBlockingQueue;
    goto/16 :goto_1

    .line 1740
    .end local p3    # "fieldValue":Ljava/util/concurrent/LinkedBlockingQueue;
    :cond_11
    const-string/jumbo v8, "PriorityBlockingQueue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1741
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/PriorityBlockingQueue;
    goto/16 :goto_1

    .line 1743
    .end local p3    # "fieldValue":Ljava/util/concurrent/PriorityBlockingQueue;
    :cond_12
    const-string/jumbo v8, "ConcurrentLinkedQueue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1744
    new-instance p3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/ConcurrentLinkedQueue;
    goto/16 :goto_1

    .line 1746
    .end local p3    # "fieldValue":Ljava/util/concurrent/ConcurrentLinkedQueue;
    :cond_13
    const-string/jumbo v8, "DelayQueue"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1747
    new-instance p3, Ljava/util/concurrent/DelayQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/DelayQueue;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/DelayQueue;
    goto/16 :goto_1

    .line 1750
    .end local p3    # "fieldValue":Ljava/util/concurrent/DelayQueue;
    :cond_14
    const-string/jumbo v8, "Deque"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string/jumbo v8, "ArrayDeque"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1751
    :cond_15
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/ArrayDeque;
    goto/16 :goto_1

    .line 1753
    .end local p3    # "fieldValue":Ljava/util/ArrayDeque;
    :cond_16
    const-string/jumbo v8, "LinkedBlockingDeque"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1754
    new-instance p3, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(Ljava/util/Collection;)V

    .local p3, "fieldValue":Ljava/util/concurrent/LinkedBlockingDeque;
    goto/16 :goto_1

    .line 1763
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v3    # "fieldClass":Ljava/lang/String;
    .end local p3    # "fieldValue":Ljava/util/concurrent/LinkedBlockingDeque;
    :cond_17
    invoke-direct {p0, v2, p1, p3}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->writeValueFromSetter(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private unrollArray([Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 5
    .param p1, "arr"    # [Ljava/lang/Object;

    .prologue
    .line 1573
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v0

    .line 1575
    .local v0, "array":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 1580
    return-object v0

    .line 1575
    :cond_0
    aget-object v1, p1, v2

    .line 1577
    .local v1, "item":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->wrapPojoField(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->add(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    .line 1575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private unrollCollection(Ljava/util/Collection;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 4
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 1585
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSArray;

    move-result-object v0

    .line 1587
    .local v0, "array":Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1592
    return-object v0

    .line 1587
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    .local v1, "item":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->wrapPojoField(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->add(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    goto :goto_0
.end method

.method private unrollMap(Ljava/util/Map;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 6
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 1597
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v4

    .line 1598
    .local v4, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1600
    .local v0, "entries":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1611
    return-object v4

    .line 1602
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1603
    .local v1, "item":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1605
    .local v3, "key":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1607
    check-cast v3, Ljava/lang/String;

    .end local v3    # "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->wrapPojoField(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->put(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)V

    goto :goto_0
.end method

.method private unwrapPojoField(Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;)Ljava/lang/Object;
    .locals 4
    .param p1, "wrapper"    # Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .prologue
    .line 1787
    const/4 v0, 0x0

    .line 1789
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v1

    .line 1792
    .local v1, "type":Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v2

    sget-object v3, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1794
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1825
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 1797
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v1, v2, :cond_2

    .line 1799
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    invoke-direct {p0, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->rebuildArray(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1802
    :cond_2
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v1, v2, :cond_3

    .line 1817
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-direct {p0, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->rebuildMap(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1820
    :cond_3
    sget-object v2, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->CLASS:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v1, v2, :cond_0

    .line 1822
    invoke-virtual {p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private wrapPojoField(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1492
    if-nez p1, :cond_1

    .line 1494
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->NULL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .line 1568
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 1497
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 1501
    .local v0, "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1503
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BOOL:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1506
    :cond_2
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 1508
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->BYTE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1511
    :cond_3
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 1513
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SHORT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1516
    :cond_4
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 1518
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->INT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1521
    :cond_5
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 1523
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->LONG:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1526
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 1528
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->FLOAT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1531
    :cond_7
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 1533
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->DOUBLE:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1536
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1538
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->UTF_STRING:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-direct {v0, v1, p1}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1542
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1545
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->unrollArray([Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto :goto_0

    .line 1549
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_b

    .line 1552
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->unrollCollection(Ljava/util/Collection;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto/16 :goto_0

    .line 1556
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 1559
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    check-cast p1, Ljava/util/Map;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->unrollMap(Ljava/util/Map;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto/16 :goto_0

    .line 1562
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Lcom/smartfoxserver/v2/protocol/serialization/SerializableSFSType;

    if-eqz v1, :cond_0

    .line 1565
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .end local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->pojo2sfs(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;-><init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V

    .restart local v0    # "wrapper":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    goto/16 :goto_0
.end method

.method private writeValueFromSetter(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "pojo"    # Ljava/lang/Object;
    .param p3, "fieldValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1768
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1774
    .local v2, "setterName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1775
    .local v1, "setterMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    .end local v1    # "setterMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1778
    :catch_0
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v3, p0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-- No public setter -- Serializer skipping private field: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", from class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public array2binary(Lcom/smartfoxserver/v2/entities/data/ISFSArray;)[B
    .locals 2
    .param p1, "array"    # Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    .prologue
    .line 532
    sget v1, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->BUFFER_CHUNK_SIZE:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 533
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 534
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSArray;->size()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 536
    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->arr2bin(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public array2json(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public binary2array([B)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 95
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t decode an SFSArray. Byte data is insufficient. Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 102
    invoke-direct {p0, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSArray(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v1

    return-object v1
.end method

.method public binary2object([B)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 161
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t decode an SFSObject. Byte data is insufficient. Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 168
    invoke-direct {p0, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSObject(Ljava/nio/ByteBuffer;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v1

    return-object v1
.end method

.method public flattenArray(Ljava/util/List;Lcom/smartfoxserver/v2/entities/data/SFSArray;)V
    .locals 6
    .param p2, "sfsArray"    # Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/smartfoxserver/v2/entities/data/SFSArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 648
    return-void

    .line 619
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 622
    .local v3, "value":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v4

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v4, v5, :cond_1

    .line 625
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v2, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-virtual {p0, v2, v4}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->flattenObject(Ljava/util/Map;Lcom/smartfoxserver/v2/entities/data/SFSObject;)V

    goto :goto_0

    .line 635
    .end local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v4

    sget-object v5, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v4, v5, :cond_2

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-virtual {p0, v1, v4}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->flattenArray(Ljava/util/List;Lcom/smartfoxserver/v2/entities/data/SFSArray;)V

    goto :goto_0

    .line 645
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v3}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public flattenObject(Ljava/util/Map;Lcom/smartfoxserver/v2/entities/data/SFSObject;)V
    .locals 8
    .param p2, "sfsObj"    # Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/smartfoxserver/v2/entities/data/SFSObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 613
    return-void

    .line 581
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 583
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 584
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;

    .line 587
    .local v5, "value":Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v6

    sget-object v7, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v6, v7, :cond_1

    .line 590
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v4, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-virtual {p0, v4, v6}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->flattenObject(Ljava/util/Map;Lcom/smartfoxserver/v2/entities/data/SFSObject;)V

    goto :goto_0

    .line 600
    .end local v4    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    move-result-object v6

    sget-object v7, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_ARRAY:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    if-ne v6, v7, :cond_2

    .line 602
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-virtual {p0, v3, v6}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->flattenArray(Ljava/util/List;Lcom/smartfoxserver/v2/entities/data/SFSArray;)V

    goto :goto_0

    .line 610
    .end local v3    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v5}, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->getObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getUnsignedByte(B)I
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 80
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method public json2array(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 239
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t decode SFSObject. JSON String is too short. Len: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    .line 243
    .local v0, "jsa":Lnet/sf/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSArray(Lnet/sf/json/JSONArray;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v1

    return-object v1
.end method

.method public json2object(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 273
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t decode SFSObject. JSON String is too short. Len: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    .line 279
    .local v0, "jso":Lnet/sf/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->decodeSFSObject(Lnet/sf/json/JSONObject;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    move-result-object v1

    return-object v1
.end method

.method public object2binary(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)[B
    .locals 2
    .param p1, "object"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 485
    sget v1, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->BUFFER_CHUNK_SIZE:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 486
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->SFS_OBJECT:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    invoke-virtual {v1}, Lcom/smartfoxserver/v2/entities/data/SFSDataType;->getTypeID()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    invoke-interface {p1}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->size()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->obj2bin(Lcom/smartfoxserver/v2/entities/data/ISFSObject;Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public object2json(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pojo2sfs(Ljava/lang/Object;)Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    .locals 3
    .param p1, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 1389
    invoke-static {}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->newInstance()Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v1

    .line 1393
    .local v1, "sfsObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->convertPojo(Ljava/lang/Object;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    return-object v1

    .line 1395
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;

    invoke-direct {v2, v0}, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public resultSet2array(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSArray;
    .locals 2
    .param p1, "rset"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSArray;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSArray;-><init>()V

    .line 470
    .local v0, "sfsa":Lcom/smartfoxserver/v2/entities/data/SFSArray;
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    return-object v0

    .line 472
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->resultSet2object(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartfoxserver/v2/entities/data/SFSArray;->addSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0
.end method

.method public resultSet2object(Ljava/sql/ResultSet;)Lcom/smartfoxserver/v2/entities/data/SFSObject;
    .locals 12
    .param p1, "rset"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v4

    .line 371
    .local v4, "metaData":Ljava/sql/ResultSetMetaData;
    new-instance v6, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v6}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    .line 373
    .local v6, "sfso":Lcom/smartfoxserver/v2/entities/data/SFSObject;
    invoke-interface {p1}, Ljava/sql/ResultSet;->isBeforeFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 376
    :cond_0
    const/4 v2, 0x1

    .local v2, "col":I
    :goto_0
    invoke-interface {v4}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v8

    if-le v2, v8, :cond_1

    .line 435
    return-object v6

    .line 378
    :cond_1
    invoke-interface {v4, v2}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "colName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v7

    .line 382
    .local v7, "type":I
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 383
    .local v5, "rawDataObj":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 376
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_3
    if-nez v7, :cond_4

    .line 387
    invoke-virtual {v6, v3}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_4
    const/16 v8, 0x10

    if-ne v7, v8, :cond_5

    .line 390
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v8

    invoke-virtual {v6, v3, v8}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putBool(Ljava/lang/String;Z)V

    goto :goto_1

    .line 392
    :cond_5
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_6

    .line 393
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/sql/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v3, v8, v9}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 395
    :cond_6
    const/4 v8, 0x6

    if-eq v7, v8, :cond_7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_8

    .line 396
    :cond_7
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v6, v3, v8, v9}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 398
    :cond_8
    const/4 v8, 0x4

    if-eq v7, v8, :cond_9

    const/4 v8, -0x6

    if-eq v7, v8, :cond_9

    const/4 v8, 0x5

    if-ne v7, v8, :cond_a

    .line 399
    :cond_9
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v3, v8}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 401
    :cond_a
    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    const/16 v8, 0xc

    if-eq v7, v8, :cond_b

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 402
    :cond_b
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :cond_c
    const/16 v8, -0x9

    if-eq v7, v8, :cond_d

    const/16 v8, -0x10

    if-eq v7, v8, :cond_d

    const/16 v8, -0xf

    if-ne v7, v8, :cond_e

    .line 405
    :cond_d
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putUtfString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :cond_e
    const/16 v8, 0x5d

    if-ne v7, v8, :cond_f

    .line 408
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v8

    invoke-virtual {v8}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v3, v8, v9}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 411
    :cond_f
    const/4 v8, -0x5

    if-ne v7, v8, :cond_10

    .line 412
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v3, v8, v9}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 415
    :cond_10
    const/4 v8, -0x4

    if-ne v7, v8, :cond_11

    .line 417
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->getBlobData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 419
    .local v0, "binData":[B
    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v6, v3, v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 423
    .end local v0    # "binData":[B
    :cond_11
    const/16 v8, 0x7d4

    if-ne v7, v8, :cond_12

    .line 425
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object v1

    .line 426
    .local v1, "blob":Ljava/sql/Blob;
    const-wide/16 v8, 0x0

    invoke-interface {v1}, Ljava/sql/Blob;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v1, v8, v9, v10}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lcom/smartfoxserver/v2/entities/data/SFSObject;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 431
    .end local v1    # "blob":Ljava/sql/Blob;
    :cond_12
    iget-object v8, p0, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->logger:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Skipping Unsupported SQL TYPE: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", Column:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public sfs2pojo(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "sfsObj"    # Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .prologue
    .line 1624
    const/4 v2, 0x0

    .line 1626
    .local v2, "pojo":Ljava/lang/Object;
    const-string/jumbo v4, "$C"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "$F"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1627
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;

    const-string/jumbo v5, "The SFSObject passed does not represent any serialized class."

    invoke-direct {v4, v5}, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1631
    :cond_0
    :try_start_0
    const-string/jumbo v4, "$C"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1633
    .local v3, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    instance-of v4, v2, Lcom/smartfoxserver/v2/protocol/serialization/SerializableSFSType;

    if-nez v4, :cond_1

    .line 1636
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Cannot deserialize object: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- It doesn\'t implement the SerializableSFSType interface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "pojo":Ljava/lang/Object;
    .end local v3    # "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 1643
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;

    invoke-direct {v4, v1}, Lcom/smartfoxserver/v2/exceptions/SFSRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1638
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "pojo":Ljava/lang/Object;
    .restart local v3    # "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v4, "$F"

    invoke-interface {p1, v4}, Lcom/smartfoxserver/v2/entities/data/ISFSObject;->getSFSArray(Ljava/lang/String;)Lcom/smartfoxserver/v2/entities/data/ISFSArray;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/smartfoxserver/v2/protocol/serialization/DefaultSFSDataSerializer;->convertSFSObject(Lcom/smartfoxserver/v2/entities/data/ISFSArray;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1646
    return-object v2
.end method
