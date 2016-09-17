.class final Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;
.super Ljava/lang/Object;
.source "QueryStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/QueryStringEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Param"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;->value:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringEncoder$Param;->name:Ljava/lang/String;

    .line 147
    return-void
.end method
