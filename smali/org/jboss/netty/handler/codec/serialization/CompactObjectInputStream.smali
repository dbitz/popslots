.class Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "CompactObjectInputStream.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    .line 43
    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->classLoader:Ljava/lang/ClassLoader;

    .line 88
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 95
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->read()I

    move-result v2

    .line 59
    .local v2, "type":I
    if-gez v2, :cond_0

    .line 60
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 62
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 70
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected class descriptor type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :pswitch_0
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 68
    :goto_0
    return-object v3

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readStreamHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readByte()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 49
    .local v0, "version":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method
