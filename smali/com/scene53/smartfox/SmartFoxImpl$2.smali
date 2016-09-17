.class final Lcom/scene53/smartfox/SmartFoxImpl$2;
.super Ljava/lang/Object;
.source "SmartFoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/smartfox/SmartFoxImpl;->connectSmartFox(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/scene53/smartfox/SmartFoxImpl;->getInstance()Lcom/scene53/smartfox/SmartFoxImpl;

    move-result-object v0

    sget-object v1, Lcom/scene53/smartfox/SmartFoxImpl;->s_serverIP:Ljava/lang/String;

    sget v2, Lcom/scene53/smartfox/SmartFoxImpl;->s_serverPort:I

    invoke-virtual {v0, v1, v2}, Lcom/scene53/smartfox/SmartFoxImpl;->connectInstance(Ljava/lang/String;I)V

    .line 89
    return-void
.end method
