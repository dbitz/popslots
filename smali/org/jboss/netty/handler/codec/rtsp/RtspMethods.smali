.class public final Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;
.super Ljava/lang/Object;
.source "RtspMethods.java"


# static fields
.field public static final ANNOUNCE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final DESCRIBE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final GET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final OPTIONS:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final PAUSE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final PLAY:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final RECORD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final SETUP:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final SET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field public static final TEARDOWN:Lorg/jboss/netty/handler/codec/http/HttpMethod;

.field private static final methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;->OPTIONS:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->OPTIONS:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 47
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "DESCRIBE"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->DESCRIBE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 54
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "ANNOUNCE"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->ANNOUNCE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 60
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "SETUP"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->SETUP:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 66
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "PLAY"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->PLAY:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 72
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->PAUSE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 78
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "TEARDOWN"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->TEARDOWN:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 84
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "GET_PARAMETER"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->GET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 90
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "SET_PARAMETER"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->SET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 96
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "REDIRECT"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 102
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    const-string/jumbo v1, "RECORD"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->RECORD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    .line 107
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->DESCRIBE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->DESCRIBE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->ANNOUNCE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->ANNOUNCE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->GET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->GET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->OPTIONS:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->OPTIONS:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->PAUSE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->PAUSE:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->PLAY:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->PLAY:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->RECORD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->RECORD:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->SETUP:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->SETUP:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->SET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->SET_PARAMETER:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->TEARDOWN:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->TEARDOWN:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "empty name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_1
    sget-object v1, Lorg/jboss/netty/handler/codec/rtsp/RtspMethods;->methodMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 136
    .local v0, "result":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    if-eqz v0, :cond_2

    .line 139
    .end local v0    # "result":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    :cond_2
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .end local v0    # "result":Lorg/jboss/netty/handler/codec/http/HttpMethod;
    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
