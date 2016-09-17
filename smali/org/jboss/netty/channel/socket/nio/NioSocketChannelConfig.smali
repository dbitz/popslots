.class public interface abstract Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;
.super Ljava/lang/Object;
.source "NioSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;


# virtual methods
.method public abstract getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
.end method

.method public abstract getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
.end method

.method public abstract getWriteBufferHighWaterMark()I
.end method

.method public abstract getWriteBufferLowWaterMark()I
.end method

.method public abstract getWriteSpinCount()I
.end method

.method public abstract setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
.end method

.method public abstract setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
.end method

.method public abstract setWriteBufferHighWaterMark(I)V
.end method

.method public abstract setWriteBufferLowWaterMark(I)V
.end method

.method public abstract setWriteSpinCount(I)V
.end method
