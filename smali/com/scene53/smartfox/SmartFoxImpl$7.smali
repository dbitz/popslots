.class Lcom/scene53/smartfox/SmartFoxImpl$7;
.super Ljava/lang/Object;
.source "SmartFoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/smartfox/SmartFoxImpl;->dispatch(Lsfs2x/client/core/BaseEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/smartfox/SmartFoxImpl;

.field final synthetic val$event:Lsfs2x/client/core/BaseEvent;


# direct methods
.method constructor <init>(Lcom/scene53/smartfox/SmartFoxImpl;Lsfs2x/client/core/BaseEvent;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    iput-object p2, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "connection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string/jumbo v1, "SFSImpl"

    const-string/jumbo v2, "SFS connected!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-virtual {v1}, Lcom/scene53/smartfox/SmartFoxImpl;->onSFSClientConnected()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-virtual {v1}, Lcom/scene53/smartfox/SmartFoxImpl;->onSFSClientConnectionError()V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "connectionLost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-virtual {v1}, Lcom/scene53/smartfox/SmartFoxImpl;->onSFSClientConnectionLost()V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "loginError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-virtual {v1}, Lcom/scene53/smartfox/SmartFoxImpl;->onSFSClientLoginError()V

    goto :goto_0

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "roomJoin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-virtual {v1}, Lcom/scene53/smartfox/SmartFoxImpl;->onSFSClientRoomJoined()V

    goto :goto_0

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "extensionResponse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v0, Lcom/smartfoxserver/v2/entities/data/SFSObject;

    invoke-direct {v0}, Lcom/smartfoxserver/v2/entities/data/SFSObject;-><init>()V

    .line 225
    .local v0, "resObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->val$event:Lsfs2x/client/core/BaseEvent;

    invoke-virtual {v1}, Lsfs2x/client/core/BaseEvent;->getArguments()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "params"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "resObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    check-cast v0, Lcom/smartfoxserver/v2/entities/data/ISFSObject;

    .line 247
    .restart local v0    # "resObj":Lcom/smartfoxserver/v2/entities/data/ISFSObject;
    iget-object v1, p0, Lcom/scene53/smartfox/SmartFoxImpl$7;->this$0:Lcom/scene53/smartfox/SmartFoxImpl;

    invoke-virtual {v1, v0}, Lcom/scene53/smartfox/SmartFoxImpl;->onSFSClientExtensionResponse(Lcom/smartfoxserver/v2/entities/data/ISFSObject;)V

    goto :goto_0
.end method
