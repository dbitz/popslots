.class public Lsfs2x/client/util/CryptoInitializer;
.super Ljava/lang/Object;
.source "CryptoInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;,
        Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;
    }
.end annotation


# static fields
.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "SessToken"

.field private static final TARGET_SERVLET:Ljava/lang/String; = "/BlueBox/CryptoManager"


# instance fields
.field private final sfs:Lsfs2x/client/ISmartFox;

.field private storage:Lsfs2x/client/util/ICryptoStorage;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lsfs2x/client/ISmartFox;)V
    .locals 1
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/util/CryptoInitializer;-><init>(Lsfs2x/client/ISmartFox;Lsfs2x/client/util/ICryptoStorage;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lsfs2x/client/ISmartFox;Lsfs2x/client/util/ICryptoStorage;)V
    .locals 3
    .param p1, "sfs"    # Lsfs2x/client/ISmartFox;
    .param p2, "wrapper"    # Lsfs2x/client/util/ICryptoStorage;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;

    invoke-direct {v0, p0, v2}, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;-><init>(Lsfs2x/client/util/CryptoInitializer;Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;)V

    iput-object v0, p0, Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;

    .line 37
    iput-object p1, p0, Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;

    .line 39
    invoke-interface {p1}, Lsfs2x/client/ISmartFox;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cryptography cannot be initialized before connecting to SmartFoxServer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-eqz p2, :cond_1

    .line 43
    iput-object p2, p0, Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;

    .line 45
    :cond_1
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;

    invoke-interface {v0}, Lsfs2x/client/util/ICryptoStorage;->getKey()Lsfs2x/client/util/CryptoKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cryptography is already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;

    invoke-direct {v1, p0, v2}, Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;-><init>(Lsfs2x/client/util/CryptoInitializer;Lsfs2x/client/util/CryptoInitializer$CryptoInitRunner;)V

    const-string/jumbo v2, "CryptoInitThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lsfs2x/client/util/CryptoInitializer;->thread:Ljava/lang/Thread;

    .line 49
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/util/ICryptoStorage;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;

    return-object v0
.end method

.method static synthetic access$1(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/ISmartFox;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;

    return-object v0
.end method

.method static synthetic access$2(Lsfs2x/client/util/CryptoInitializer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lsfs2x/client/util/CryptoInitializer;->onHttpResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lsfs2x/client/util/CryptoInitializer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lsfs2x/client/util/CryptoInitializer;->onHttpError(Ljava/lang/String;)V

    return-void
.end method

.method private onHttpError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v1}, Lsfs2x/client/ISmartFox;->getLogger()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cryptography Init Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v1}, Lsfs2x/client/ISmartFox;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v1

    new-instance v2, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v3, "cryptoInit"

    invoke-direct {v2, v3, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 144
    return-void
.end method

.method private onHttpResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    invoke-static {p1}, Lsfs2x/client/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    .local v0, "byteStream":[B
    new-instance v1, Lsfs2x/client/util/CryptoKey;

    invoke-direct {v1, v0}, Lsfs2x/client/util/CryptoKey;-><init>([B)V

    .line 120
    .local v1, "ck":Lsfs2x/client/util/CryptoKey;
    iget-object v4, p0, Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;

    invoke-interface {v4, v1}, Lsfs2x/client/util/ICryptoStorage;->setKey(Lsfs2x/client/util/CryptoKey;)V

    .line 123
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "success"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v4, p0, Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;

    invoke-interface {v4}, Lsfs2x/client/ISmartFox;->getDispatcher()Lsfs2x/client/core/EventDispatcher;

    move-result-object v4

    new-instance v5, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v6, "cryptoInit"

    invoke-direct {v5, v6, v3}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "byteStream":[B
    .end local v1    # "ck":Lsfs2x/client/util/CryptoKey;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsfs2x/client/util/CryptoInitializer;->onHttpError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method setCryptoStorageWrapper(Lsfs2x/client/util/ICryptoStorage;)V
    .locals 0
    .param p1, "wrapper"    # Lsfs2x/client/util/ICryptoStorage;

    .prologue
    .line 57
    iput-object p1, p0, Lsfs2x/client/util/CryptoInitializer;->storage:Lsfs2x/client/util/ICryptoStorage;

    .line 58
    return-void
.end method
