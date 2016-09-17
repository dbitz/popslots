.class public Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectEncoderOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# instance fields
.field private final estimatedLength:I

.field private final out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 53
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "estimatedLength"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-gez p2, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "estimatedLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Ljava/io/DataOutputStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    .line 84
    :goto_0
    iput p2, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->estimatedLength:I

    .line 85
    return-void

    .line 82
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_2
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 109
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 114
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 104
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 123
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 132
    return-void
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 136
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final writeChar(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 144
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final writeDouble(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 152
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 156
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    return-void
.end method

.method public final writeLong(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 164
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    iget v4, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->estimatedLength:I

    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 90
    .local v0, "bout":Lorg/jboss/netty/buffer/ChannelBufferOutputStream;
    new-instance v3, Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .local v3, "oout":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 93
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 96
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    .line 97
    .local v2, "objectSize":I
    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->writeInt(I)V

    .line 98
    const/4 v4, 0x0

    invoke-interface {v1, v4, p0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 99
    return-void
.end method

.method public final writeShort(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 168
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectEncoderOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    return-void
.end method
