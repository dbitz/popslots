.class public Lsfs2x/client/bitswarm/bbox/BBEvent;
.super Lsfs2x/client/core/SFSEvent;
.source "BBEvent.java"


# static fields
.field public static final CONNECT:Ljava/lang/String; = "bb-connect"

.field public static final DATA:Ljava/lang/String; = "bb-data"

.field public static final DISCONNECT:Ljava/lang/String; = "bb-disconnect"

.field public static final IO_ERROR:Ljava/lang/String; = "bb-ioError"

.field public static final SECURITY_ERROR:Ljava/lang/String; = "bb-securityError"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;)V

    .line 18
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
    .line 22
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    return-void
.end method
