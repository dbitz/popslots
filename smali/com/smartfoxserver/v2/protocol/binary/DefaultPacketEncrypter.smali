.class public Lcom/smartfoxserver/v2/protocol/binary/DefaultPacketEncrypter;
.super Ljava/lang/Object;
.source "DefaultPacketEncrypter.java"

# interfaces
.implements Lcom/smartfoxserver/v2/protocol/binary/IPacketEncrypter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/smartfoxserver/bitswarm/sessions/ISession;[B)[B
    .locals 1
    .param p1, "session"    # Lcom/smartfoxserver/bitswarm/sessions/ISession;
    .param p2, "data"    # [B

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public encrypt(Lcom/smartfoxserver/bitswarm/sessions/ISession;[B)[B
    .locals 1
    .param p1, "session"    # Lcom/smartfoxserver/bitswarm/sessions/ISession;
    .param p2, "data"    # [B

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
