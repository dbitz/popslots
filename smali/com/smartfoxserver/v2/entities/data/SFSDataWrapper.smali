.class public Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;
.super Ljava/lang/Object;
.source "SFSDataWrapper.java"


# instance fields
.field private object:Ljava/lang/Object;

.field private typeId:Lcom/smartfoxserver/v2/entities/data/SFSDataType;


# direct methods
.method public constructor <init>(Lcom/smartfoxserver/v2/entities/data/SFSDataType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "typeId"    # Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->typeId:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    .line 11
    iput-object p2, p0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->object:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeId()Lcom/smartfoxserver/v2/entities/data/SFSDataType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/smartfoxserver/v2/entities/data/SFSDataWrapper;->typeId:Lcom/smartfoxserver/v2/entities/data/SFSDataType;

    return-object v0
.end method
