.class final Lcom/scene53/smartfox/SmartFoxImpl$6;
.super Ljava/lang/Object;
.source "SmartFoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/smartfox/SmartFoxImpl;->sendRequestSmartFox(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$innerParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

.field final synthetic val$innerReqName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/scene53/smartfox/SmartFoxImpl$6;->val$innerReqName:Ljava/lang/String;

    iput-object p2, p0, Lcom/scene53/smartfox/SmartFoxImpl$6;->val$innerParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/scene53/smartfox/SmartFoxImpl;->getInstance()Lcom/scene53/smartfox/SmartFoxImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$6;->val$innerReqName:Ljava/lang/String;

    iget-object v2, p0, Lcom/scene53/smartfox/SmartFoxImpl$6;->val$innerParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-virtual {v0, v1, v2}, Lcom/scene53/smartfox/SmartFoxImpl;->sendRequest(Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 132
    return-void
.end method
