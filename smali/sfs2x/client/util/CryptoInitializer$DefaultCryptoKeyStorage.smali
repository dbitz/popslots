.class final Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;
.super Ljava/lang/Object;
.source "CryptoInitializer.java"

# interfaces
.implements Lsfs2x/client/util/ICryptoStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfs2x/client/util/CryptoInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultCryptoKeyStorage"
.end annotation


# instance fields
.field final synthetic this$0:Lsfs2x/client/util/CryptoInitializer;


# direct methods
.method private constructor <init>(Lsfs2x/client/util/CryptoInitializer;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;->this$0:Lsfs2x/client/util/CryptoInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsfs2x/client/util/CryptoInitializer;Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;-><init>(Lsfs2x/client/util/CryptoInitializer;)V

    return-void
.end method


# virtual methods
.method public getHttpHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;
    invoke-static {v0}, Lsfs2x/client/util/CryptoInitializer;->access$1(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/ISmartFox;

    move-result-object v0

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/util/ConfigData;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpPort()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;
    invoke-static {v0}, Lsfs2x/client/util/CryptoInitializer;->access$1(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/ISmartFox;

    move-result-object v0

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getConfig()Lsfs2x/client/util/ConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/util/ConfigData;->getHttpsPort()I

    move-result v0

    return v0
.end method

.method public getKey()Lsfs2x/client/util/CryptoKey;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;
    invoke-static {v0}, Lsfs2x/client/util/CryptoInitializer;->access$1(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/ISmartFox;

    move-result-object v0

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v0

    invoke-virtual {v0}, Lsfs2x/client/bitswarm/BitSwarmClient;->getCryptoKey()Lsfs2x/client/util/CryptoKey;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Lsfs2x/client/util/CryptoKey;)V
    .locals 1
    .param p1, "key"    # Lsfs2x/client/util/CryptoKey;

    .prologue
    .line 162
    iget-object v0, p0, Lsfs2x/client/util/CryptoInitializer$DefaultCryptoKeyStorage;->this$0:Lsfs2x/client/util/CryptoInitializer;

    # getter for: Lsfs2x/client/util/CryptoInitializer;->sfs:Lsfs2x/client/ISmartFox;
    invoke-static {v0}, Lsfs2x/client/util/CryptoInitializer;->access$1(Lsfs2x/client/util/CryptoInitializer;)Lsfs2x/client/ISmartFox;

    move-result-object v0

    invoke-interface {v0}, Lsfs2x/client/ISmartFox;->getSocketEngine()Lsfs2x/client/bitswarm/BitSwarmClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsfs2x/client/bitswarm/BitSwarmClient;->setCryptoKey(Lsfs2x/client/util/CryptoKey;)V

    .line 163
    return-void
.end method
