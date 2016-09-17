.class final Lcom/scene53/smartfox/SmartFoxImpl$5;
.super Ljava/lang/Object;
.source "SmartFoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/smartfox/SmartFoxImpl;->loginSmartFox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 119
    invoke-static {}, Lcom/scene53/smartfox/SmartFoxImpl;->getInstance()Lcom/scene53/smartfox/SmartFoxImpl;

    move-result-object v0

    sget-object v1, Lcom/scene53/smartfox/SmartFoxImpl;->s_userName:Ljava/lang/String;

    sget-object v2, Lcom/scene53/smartfox/SmartFoxImpl;->s_password:Ljava/lang/String;

    sget-object v3, Lcom/scene53/smartfox/SmartFoxImpl;->s_zoneName:Ljava/lang/String;

    sget-object v4, Lcom/scene53/smartfox/SmartFoxImpl;->s_loginParams:Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scene53/smartfox/SmartFoxImpl;->loginInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    .line 120
    return-void
.end method
