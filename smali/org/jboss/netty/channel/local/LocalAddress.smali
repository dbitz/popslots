.class public final Lorg/jboss/netty/channel/local/LocalAddress;
.super Ljava/net/SocketAddress;
.source "LocalAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/channel/local/LocalAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPHEMERAL:Ljava/lang/String; = "ephemeral"

.field private static final serialVersionUID:J = -0x31fcbd20210f4ec5L


# instance fields
.field private final ephemeral:Z

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ephemeral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    .line 67
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lorg/jboss/netty/channel/local/LocalAddress;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/local/LocalAddress;->compareTo(Lorg/jboss/netty/channel/local/LocalAddress;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/channel/local/LocalAddress;)I
    .locals 5
    .param p1, "o"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 110
    iget-boolean v4, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v4, :cond_4

    .line 111
    iget-boolean v4, p1, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v4, :cond_3

    .line 112
    if-ne p0, p1, :cond_1

    .line 113
    const/4 v2, 0x0

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 116
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 117
    .local v0, "a":I
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 118
    .local v1, "b":I
    if-lt v0, v1, :cond_0

    .line 120
    if-le v0, v1, :cond_2

    move v2, v3

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Two different ephemeral addresses have same identityHashCode."

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_3
    move v2, v3

    .line 128
    goto :goto_0

    .line 131
    :cond_4
    iget-boolean v3, p1, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-nez v3, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 94
    instance-of v1, p1, Lorg/jboss/netty/channel/local/LocalAddress;

    if-nez v1, :cond_1

    .line 101
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 98
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-boolean v1, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v1, :cond_2

    .line 99
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jboss/netty/channel/local/LocalAddress;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEphemeral()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/jboss/netty/channel/local/LocalAddress;->ephemeral:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/LocalAddress;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
