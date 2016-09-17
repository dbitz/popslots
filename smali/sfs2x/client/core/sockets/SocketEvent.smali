.class public Lsfs2x/client/core/sockets/SocketEvent;
.super Lsfs2x/client/core/BaseEvent;
.source "SocketEvent.java"


# static fields
.field public static final OnConnect:Ljava/lang/String; = "OnConnect"

.field public static final OnData:Ljava/lang/String; = "OnData"

.field public static final OnDisconnect:Ljava/lang/String; = "OnDisconnect"

.field public static final OnError:Ljava/lang/String; = "OnError"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
