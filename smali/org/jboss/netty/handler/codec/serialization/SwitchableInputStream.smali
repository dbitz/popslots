.class final Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;
.super Ljava/io/FilterInputStream;
.source "SwitchableInputStream.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method switchStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;->in:Ljava/io/InputStream;

    .line 47
    return-void
.end method
