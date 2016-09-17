.class public Lsfs2x/client/bitswarm/BitSwarmEvent;
.super Lsfs2x/client/core/BaseEvent;
.source "BitSwarmEvent.java"


# static fields
.field public static final CONNECT:Ljava/lang/String; = "connect"

.field public static final DATA_ERROR:Ljava/lang/String; = "dataError"

.field public static final DISCONNECT:Ljava/lang/String; = "disconnect"

.field public static final IO_ERROR:Ljava/lang/String; = "ioError"

.field public static final RECONNECTION_TRY:Ljava/lang/String; = "reconnectionTry"

.field public static final SECURITY_ERROR:Ljava/lang/String; = "securityError"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    return-void
.end method
