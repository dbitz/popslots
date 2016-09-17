package org.jboss.netty.handler.ssl;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLEngineResult.HandshakeStatus;
import javax.net.ssl.SSLEngineResult.Status;
import javax.net.ssl.SSLException;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DownstreamMessageEvent;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.handler.codec.frame.FrameDecoder;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.LinkedTransferQueue;
import org.jboss.netty.util.internal.NonReentrantLock;
import org.jdom.filter.ContentFilter;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SslHandler extends FrameDecoder implements ChannelDownstreamHandler, LifeCycleAwareChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!SslHandler.class.desiredAssertionStatus());
    private static final ByteBuffer EMPTY_BUFFER = ByteBuffer.allocate(0);
    private static final Pattern IGNORABLE_ERROR_MESSAGE = Pattern.compile("^.*(?:connection.*reset|connection.*closed|broken.*pipe).*$", 2);
    private static SslBufferPool defaultBufferPool;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SslHandler.class);
    private final SslBufferPool bufferPool;
    private volatile ChannelHandlerContext ctx;
    private final Executor delegatedTaskExecutor;
    private volatile boolean enableRenegotiation;
    private final SSLEngine engine;
    private volatile ChannelFuture handshakeFuture;
    final Object handshakeLock;
    private volatile boolean handshaken;
    private boolean handshaking;
    int ignoreClosedChannelException;
    final Object ignoreClosedChannelExceptionLock;
    private final Queue<MessageEvent> pendingEncryptedWrites;
    private final NonReentrantLock pendingEncryptedWritesLock;
    private final Queue<PendingWrite> pendingUnencryptedWrites;
    private final AtomicBoolean sentCloseNotify;
    private final AtomicBoolean sentFirstMessage;
    private final boolean startTls;

    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus = new int[HandshakeStatus.values().length];
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];

        static {
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NEED_WRAP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NEED_UNWRAP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NEED_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.BOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    private static final class ClosingChannelFutureListener implements ChannelFutureListener {
        private final ChannelHandlerContext context;
        private final ChannelStateEvent e;

        ClosingChannelFutureListener(ChannelHandlerContext context, ChannelStateEvent e) {
            this.context = context;
            this.e = e;
        }

        public void operationComplete(ChannelFuture closeNotifyFuture) throws Exception {
            if (!(closeNotifyFuture.getCause() instanceof ClosedChannelException)) {
                Channels.close(this.context, this.e.getFuture());
            }
        }
    }

    private static final class PendingWrite {
        final ChannelFuture future;
        final ByteBuffer outAppBuf;

        PendingWrite(ChannelFuture future, ByteBuffer outAppBuf) {
            this.future = future;
            this.outAppBuf = outAppBuf;
        }
    }

    public static synchronized SslBufferPool getDefaultBufferPool() {
        SslBufferPool sslBufferPool;
        synchronized (SslHandler.class) {
            if (defaultBufferPool == null) {
                defaultBufferPool = new SslBufferPool();
            }
            sslBufferPool = defaultBufferPool;
        }
        return sslBufferPool;
    }

    public SslHandler(SSLEngine engine) {
        this(engine, getDefaultBufferPool(), ImmediateExecutor.INSTANCE);
    }

    public SslHandler(SSLEngine engine, SslBufferPool bufferPool) {
        this(engine, bufferPool, ImmediateExecutor.INSTANCE);
    }

    public SslHandler(SSLEngine engine, boolean startTls) {
        this(engine, getDefaultBufferPool(), startTls);
    }

    public SslHandler(SSLEngine engine, SslBufferPool bufferPool, boolean startTls) {
        this(engine, bufferPool, startTls, ImmediateExecutor.INSTANCE);
    }

    public SslHandler(SSLEngine engine, Executor delegatedTaskExecutor) {
        this(engine, getDefaultBufferPool(), delegatedTaskExecutor);
    }

    public SslHandler(SSLEngine engine, SslBufferPool bufferPool, Executor delegatedTaskExecutor) {
        this(engine, bufferPool, false, delegatedTaskExecutor);
    }

    public SslHandler(SSLEngine engine, boolean startTls, Executor delegatedTaskExecutor) {
        this(engine, getDefaultBufferPool(), startTls, delegatedTaskExecutor);
    }

    public SslHandler(SSLEngine engine, SslBufferPool bufferPool, boolean startTls, Executor delegatedTaskExecutor) {
        this.handshakeLock = new Object();
        this.sentFirstMessage = new AtomicBoolean();
        this.sentCloseNotify = new AtomicBoolean();
        this.ignoreClosedChannelExceptionLock = new Object();
        this.pendingUnencryptedWrites = new LinkedList();
        this.pendingEncryptedWrites = new LinkedTransferQueue();
        this.pendingEncryptedWritesLock = new NonReentrantLock();
        if (engine == null) {
            throw new NullPointerException("engine");
        } else if (bufferPool == null) {
            throw new NullPointerException("bufferPool");
        } else if (delegatedTaskExecutor == null) {
            throw new NullPointerException("delegatedTaskExecutor");
        } else {
            this.engine = engine;
            this.bufferPool = bufferPool;
            this.delegatedTaskExecutor = delegatedTaskExecutor;
            this.startTls = startTls;
        }
    }

    public SSLEngine getEngine() {
        return this.engine;
    }

    public ChannelFuture handshake() {
        if (!this.handshaken || isEnableRenegotiation()) {
            ChannelFuture channelFuture;
            ChannelHandlerContext ctx = this.ctx;
            Channel channel = ctx.getChannel();
            synchronized (this.handshakeLock) {
                if (this.handshaking) {
                    channelFuture = this.handshakeFuture;
                } else {
                    this.handshaking = true;
                    try {
                        this.engine.beginHandshake();
                        runDelegatedTasks();
                        channelFuture = Channels.future(channel);
                        this.handshakeFuture = channelFuture;
                    } catch (SSLException e) {
                        channelFuture = Channels.failedFuture(channel, e);
                        this.handshakeFuture = channelFuture;
                    }
                    try {
                        wrapNonAppData(ctx, channel);
                    } catch (SSLException e2) {
                        channelFuture.setFailure(e2);
                    }
                }
            }
            return channelFuture;
        }
        throw new IllegalStateException("renegotiation disabled");
    }

    @Deprecated
    public ChannelFuture handshake(Channel channel) {
        return handshake();
    }

    public ChannelFuture close() {
        ChannelHandlerContext ctx = this.ctx;
        Channel channel = ctx.getChannel();
        try {
            this.engine.closeOutbound();
            return wrapNonAppData(ctx, channel);
        } catch (SSLException e) {
            return Channels.failedFuture(channel, e);
        }
    }

    @Deprecated
    public ChannelFuture close(Channel channel) {
        return close();
    }

    public boolean isEnableRenegotiation() {
        return this.enableRenegotiation;
    }

    public void setEnableRenegotiation(boolean enableRenegotiation) {
        this.enableRenegotiation = enableRenegotiation;
    }

    public void handleDownstream(ChannelHandlerContext context, ChannelEvent evt) throws Exception {
        if (evt instanceof ChannelStateEvent) {
            ChannelStateEvent e = (ChannelStateEvent) evt;
            switch (AnonymousClass3.$SwitchMap$org$jboss$netty$channel$ChannelState[e.getState().ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (Boolean.FALSE.equals(e.getValue()) || e.getValue() == null) {
                        closeOutboundAndChannel(context, e);
                        return;
                    }
            }
        }
        if (evt instanceof MessageEvent) {
            MessageEvent e2 = (MessageEvent) evt;
            if (!(e2.getMessage() instanceof ChannelBuffer)) {
                context.sendDownstream(evt);
                return;
            } else if (this.startTls && this.sentFirstMessage.compareAndSet(false, true)) {
                context.sendDownstream(evt);
                return;
            } else {
                PendingWrite pendingWrite;
                ChannelBuffer msg = (ChannelBuffer) e2.getMessage();
                if (msg.readable()) {
                    pendingWrite = new PendingWrite(evt.getFuture(), msg.toByteBuffer(msg.readerIndex(), msg.readableBytes()));
                } else {
                    pendingWrite = new PendingWrite(evt.getFuture(), null);
                }
                synchronized (this.pendingUnencryptedWrites) {
                    boolean offered = this.pendingUnencryptedWrites.offer(pendingWrite);
                    if ($assertionsDisabled || offered) {
                    } else {
                        throw new AssertionError();
                    }
                }
                wrap(context, evt.getChannel());
                return;
            }
        }
        context.sendDownstream(evt);
    }

    public void channelDisconnected(ChannelHandlerContext ctx, ChannelStateEvent e) throws Exception {
        synchronized (this.handshakeLock) {
            if (this.handshaking) {
                this.handshakeFuture.setFailure(new ClosedChannelException());
            }
        }
        try {
            super.channelDisconnected(ctx, e);
            unwrap(ctx, e.getChannel(), ChannelBuffers.EMPTY_BUFFER, 0, 0);
            this.engine.closeOutbound();
            if (!this.sentCloseNotify.get() && this.handshaken) {
                try {
                    this.engine.closeInbound();
                } catch (SSLException ex) {
                    logger.debug("Failed to clean up SSLEngine.", ex);
                }
            }
        } catch (Throwable th) {
            unwrap(ctx, e.getChannel(), ChannelBuffers.EMPTY_BUFFER, 0, 0);
            this.engine.closeOutbound();
            if (!this.sentCloseNotify.get() && this.handshaken) {
                try {
                    this.engine.closeInbound();
                } catch (SSLException ex2) {
                    logger.debug("Failed to clean up SSLEngine.", ex2);
                }
            }
        }
    }

    public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) throws Exception {
        Throwable cause = e.getCause();
        if (cause instanceof IOException) {
            if (cause instanceof ClosedChannelException) {
                synchronized (this.ignoreClosedChannelExceptionLock) {
                    if (this.ignoreClosedChannelException > 0) {
                        this.ignoreClosedChannelException--;
                        logger.debug("Swallowing an exception raised while writing non-app data", cause);
                        return;
                    }
                }
            } else if (this.engine.isOutboundDone()) {
                if (IGNORABLE_ERROR_MESSAGE.matcher(String.valueOf(cause.getMessage()).toLowerCase()).matches()) {
                    logger.debug("Swallowing a 'connection reset by peer / broken pipe' error occurred while writing 'closure_notify'", cause);
                    Channels.close(ctx, Channels.succeededFuture(e.getChannel()));
                    return;
                }
            }
        }
        ctx.sendUpstream(e);
    }

    protected Object decode(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer) throws Exception {
        if (buffer.readableBytes() < 5) {
            return null;
        }
        boolean tls;
        int majorVersion;
        int packetLength = 0;
        switch (buffer.getUnsignedByte(buffer.readerIndex())) {
            case BaseRequest.PublicMessage /*20*/:
            case BaseRequest.PrivateMessage /*21*/:
            case BaseRequest.ModeratorMessage /*22*/:
            case BaseRequest.AdminMessage /*23*/:
                tls = true;
                break;
            default:
                tls = false;
                break;
        }
        if (tls) {
            majorVersion = buffer.getUnsignedByte(buffer.readerIndex() + 1);
            if (majorVersion < 3 || majorVersion >= 10) {
                tls = false;
            } else {
                packetLength = (buffer.getShort(buffer.readerIndex() + 3) & 65535) + 5;
                if (packetLength <= 5) {
                    tls = false;
                }
            }
        }
        if (!tls) {
            boolean sslv2 = true;
            int headerLength = (buffer.getUnsignedByte(buffer.readerIndex()) & ContentFilter.DOCTYPE) != 0 ? 2 : 3;
            majorVersion = buffer.getUnsignedByte((buffer.readerIndex() + headerLength) + 1);
            if (majorVersion < 2 || majorVersion >= 10) {
                sslv2 = false;
            } else {
                if (headerLength == 2) {
                    packetLength = (buffer.getShort(buffer.readerIndex()) & 32767) + 2;
                } else {
                    packetLength = (buffer.getShort(buffer.readerIndex()) & 16383) + 3;
                }
                if (packetLength <= headerLength) {
                    sslv2 = false;
                }
            }
            if (!sslv2) {
                SSLException e = new SSLException("not an SSL/TLS record: " + ChannelBuffers.hexDump(buffer));
                buffer.skipBytes(buffer.readableBytes());
                throw e;
            }
        }
        if (!$assertionsDisabled && packetLength <= 0) {
            throw new AssertionError();
        } else if (buffer.readableBytes() < packetLength) {
            return null;
        } else {
            int packetOffset = buffer.readerIndex();
            buffer.skipBytes(packetLength);
            return unwrap(ctx, channel, buffer, packetOffset, packetLength);
        }
    }

    private ChannelFuture wrap(ChannelHandlerContext context, Channel channel) throws SSLException {
        PendingWrite pendingWrite;
        ChannelFuture future = null;
        ByteBuffer outNetBuf = this.bufferPool.acquire();
        boolean success = true;
        boolean offered = false;
        boolean needsUnwrap = false;
        while (true) {
            IllegalStateException cause;
            try {
                synchronized (this.pendingUnencryptedWrites) {
                    pendingWrite = (PendingWrite) this.pendingUnencryptedWrites.peek();
                    if (pendingWrite != null) {
                        ByteBuffer outAppBuf = pendingWrite.outAppBuf;
                        if (outAppBuf == null) {
                            this.pendingUnencryptedWrites.remove();
                            offerEncryptedWriteRequest(new DownstreamMessageEvent(channel, pendingWrite.future, ChannelBuffers.EMPTY_BUFFER, channel.getRemoteAddress()));
                            offered = true;
                        } else {
                            try {
                                SSLEngineResult result;
                                synchronized (this.handshakeLock) {
                                    result = this.engine.wrap(outAppBuf, outNetBuf);
                                }
                                if (!outAppBuf.hasRemaining()) {
                                    this.pendingUnencryptedWrites.remove();
                                }
                                if (result.bytesProduced() > 0) {
                                    outNetBuf.flip();
                                    ChannelBuffer msg = ChannelBuffers.buffer(outNetBuf.remaining());
                                    msg.writeBytes(outNetBuf.array(), 0, msg.capacity());
                                    outNetBuf.clear();
                                    if (pendingWrite.outAppBuf.hasRemaining()) {
                                        future = Channels.succeededFuture(channel);
                                    } else {
                                        future = pendingWrite.future;
                                    }
                                    offerEncryptedWriteRequest(new DownstreamMessageEvent(channel, future, msg, channel.getRemoteAddress()));
                                    offered = true;
                                } else {
                                    HandshakeStatus handshakeStatus = result.getHandshakeStatus();
                                    handleRenegotiation(handshakeStatus);
                                    switch (AnonymousClass3.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[handshakeStatus.ordinal()]) {
                                        case BuddyOnlineState.OFFLINE /*1*/:
                                            if (!outAppBuf.hasRemaining()) {
                                                break;
                                            }
                                            break;
                                        case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                                            needsUnwrap = true;
                                            break;
                                        case MessageRecipientMode.TO_ZONE /*3*/:
                                            runDelegatedTasks();
                                            break;
                                        case Base64.DONT_GUNZIP /*4*/:
                                        case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                                            if (handshakeStatus == HandshakeStatus.FINISHED) {
                                                setHandshakeSuccess(channel);
                                            }
                                            if (result.getStatus() == Status.CLOSED) {
                                                success = false;
                                                break;
                                            }
                                            break;
                                        default:
                                            throw new IllegalStateException("Unknown handshake status: " + handshakeStatus);
                                    }
                                }
                            } catch (Throwable th) {
                                if (!outAppBuf.hasRemaining()) {
                                    this.pendingUnencryptedWrites.remove();
                                }
                            }
                        }
                    }
                    this.bufferPool.release(outNetBuf);
                    if (offered) {
                        flushPendingEncryptedWrites(context);
                    }
                    if (!success) {
                        cause = new IllegalStateException("SSLEngine already closed");
                        while (true) {
                            synchronized (this.pendingUnencryptedWrites) {
                                pendingWrite = (PendingWrite) this.pendingUnencryptedWrites.poll();
                                if (pendingWrite == null) {
                                }
                            }
                            pendingWrite.future.setFailure(cause);
                        }
                    }
                    if (needsUnwrap) {
                        unwrap(context, channel, ChannelBuffers.EMPTY_BUFFER, 0, 0);
                    }
                    if (future == null) {
                        return Channels.succeededFuture(channel);
                    }
                    return future;
                }
            } catch (SSLException e) {
                try {
                    setHandshakeFailure(channel, e);
                    throw e;
                } catch (Throwable th2) {
                    this.bufferPool.release(outNetBuf);
                    if (offered) {
                        flushPendingEncryptedWrites(context);
                    }
                    if (!false) {
                        cause = new IllegalStateException("SSLEngine already closed");
                        while (true) {
                            synchronized (this.pendingUnencryptedWrites) {
                                pendingWrite = (PendingWrite) this.pendingUnencryptedWrites.poll();
                                if (pendingWrite != null) {
                                    pendingWrite.future.setFailure(cause);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void offerEncryptedWriteRequest(MessageEvent encryptedWrite) {
        boolean locked = this.pendingEncryptedWritesLock.tryLock();
        try {
            this.pendingEncryptedWrites.offer(encryptedWrite);
        } finally {
            if (locked) {
                this.pendingEncryptedWritesLock.unlock();
            }
        }
    }

    private void flushPendingEncryptedWrites(ChannelHandlerContext ctx) {
        if (this.pendingEncryptedWritesLock.tryLock()) {
            while (true) {
                try {
                    MessageEvent e = (MessageEvent) this.pendingEncryptedWrites.poll();
                    if (e == null) {
                        break;
                    }
                    ctx.sendDownstream(e);
                } finally {
                    this.pendingEncryptedWritesLock.unlock();
                }
            }
        }
    }

    private ChannelFuture wrapNonAppData(ChannelHandlerContext ctx, Channel channel) throws SSLException {
        ChannelFuture future = null;
        ByteBuffer outNetBuf = this.bufferPool.acquire();
        SSLEngineResult result;
        do {
            try {
                synchronized (this.handshakeLock) {
                    result = this.engine.wrap(EMPTY_BUFFER, outNetBuf);
                }
                if (result.bytesProduced() > 0) {
                    outNetBuf.flip();
                    Object msg = ChannelBuffers.buffer(outNetBuf.remaining());
                    msg.writeBytes(outNetBuf.array(), 0, msg.capacity());
                    outNetBuf.clear();
                    future = Channels.future(channel);
                    future.addListener(new ChannelFutureListener() {
                        public void operationComplete(ChannelFuture future) throws Exception {
                            if (future.getCause() instanceof ClosedChannelException) {
                                synchronized (SslHandler.this.ignoreClosedChannelExceptionLock) {
                                    SslHandler sslHandler = SslHandler.this;
                                    sslHandler.ignoreClosedChannelException++;
                                }
                            }
                        }
                    });
                    Channels.write(ctx, future, msg);
                }
                HandshakeStatus handshakeStatus = result.getHandshakeStatus();
                handleRenegotiation(handshakeStatus);
                switch (AnonymousClass3.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[handshakeStatus.ordinal()]) {
                    case BuddyOnlineState.OFFLINE /*1*/:
                    case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                        break;
                    case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                        if (!Thread.holdsLock(this.handshakeLock)) {
                            unwrap(ctx, channel, ChannelBuffers.EMPTY_BUFFER, 0, 0);
                            break;
                        }
                        break;
                    case MessageRecipientMode.TO_ZONE /*3*/:
                        runDelegatedTasks();
                        break;
                    case Base64.DONT_GUNZIP /*4*/:
                        setHandshakeSuccess(channel);
                        runDelegatedTasks();
                        break;
                    default:
                        throw new IllegalStateException("Unexpected handshake status: " + handshakeStatus);
                }
            } catch (SSLException e) {
                setHandshakeFailure(channel, e);
                throw e;
            } catch (Throwable th) {
                this.bufferPool.release(outNetBuf);
            }
        } while (result.bytesProduced() != 0);
        this.bufferPool.release(outNetBuf);
        if (future == null) {
            return Channels.succeededFuture(channel);
        }
        return future;
    }

    private ChannelBuffer unwrap(ChannelHandlerContext ctx, Channel channel, ChannelBuffer buffer, int offset, int length) throws SSLException {
        ByteBuffer inNetBuf = buffer.toByteBuffer(offset, length);
        ByteBuffer outAppBuf = this.bufferPool.acquire();
        boolean needsWrap = false;
        while (true) {
            try {
                synchronized (this.handshakeLock) {
                    if (!(this.handshaken || this.handshaking || this.engine.getUseClientMode() || this.engine.isInboundDone() || this.engine.isOutboundDone())) {
                        handshake();
                    }
                    HandshakeStatus handshakeStatus = this.engine.unwrap(inNetBuf, outAppBuf).getHandshakeStatus();
                    handleRenegotiation(handshakeStatus);
                    switch (AnonymousClass3.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[handshakeStatus.ordinal()]) {
                        case BuddyOnlineState.OFFLINE /*1*/:
                            wrapNonAppData(ctx, channel);
                            break;
                        case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                            if (!inNetBuf.hasRemaining() || this.engine.isInboundDone()) {
                            }
                        case MessageRecipientMode.TO_ZONE /*3*/:
                            runDelegatedTasks();
                            break;
                        case Base64.DONT_GUNZIP /*4*/:
                            setHandshakeSuccess(channel);
                            needsWrap = true;
                            break;
                        case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                            needsWrap = true;
                            break;
                        default:
                            throw new IllegalStateException("Unknown handshake status: " + handshakeStatus);
                    }
                    if (needsWrap) {
                        if (!(Thread.holdsLock(this.handshakeLock) || this.pendingEncryptedWritesLock.isHeldByCurrentThread())) {
                            wrap(ctx, channel);
                        }
                    }
                    outAppBuf.flip();
                    if (outAppBuf.hasRemaining()) {
                        ChannelBuffer frame = ChannelBuffers.buffer(outAppBuf.remaining());
                        frame.writeBytes(outAppBuf.array(), 0, frame.capacity());
                        this.bufferPool.release(outAppBuf);
                        return frame;
                    }
                    this.bufferPool.release(outAppBuf);
                    return null;
                }
            } catch (SSLException e) {
                throw e;
            } catch (SSLException e2) {
                try {
                    setHandshakeFailure(channel, e2);
                    throw e2;
                } catch (Throwable th) {
                    this.bufferPool.release(outAppBuf);
                }
            }
        }
    }

    private void handleRenegotiation(HandshakeStatus handshakeStatus) {
        if (handshakeStatus != HandshakeStatus.NOT_HANDSHAKING && handshakeStatus != HandshakeStatus.FINISHED && this.handshaken && !this.handshaking && !this.engine.isInboundDone() && !this.engine.isOutboundDone()) {
            if (isEnableRenegotiation()) {
                handshake();
                return;
            }
            this.handshaking = true;
            Channels.fireExceptionCaught(this.ctx, new SSLException("renegotiation attempted by peer; closing the connection"));
            Channels.close(this.ctx, Channels.succeededFuture(this.ctx.getChannel()));
        }
    }

    private void runDelegatedTasks() {
        while (true) {
            synchronized (this.handshakeLock) {
                final Runnable task = this.engine.getDelegatedTask();
            }
            if (task != null) {
                this.delegatedTaskExecutor.execute(new Runnable() {
                    public void run() {
                        synchronized (SslHandler.this.handshakeLock) {
                            task.run();
                        }
                    }
                });
            } else {
                return;
            }
        }
    }

    private void setHandshakeSuccess(Channel channel) {
        synchronized (this.handshakeLock) {
            this.handshaking = false;
            this.handshaken = true;
            if (this.handshakeFuture == null) {
                this.handshakeFuture = Channels.future(channel);
            }
        }
        this.handshakeFuture.setSuccess();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void setHandshakeFailure(org.jboss.netty.channel.Channel r3, javax.net.ssl.SSLException r4) {
        /*
        r2 = this;
        r1 = r2.handshakeLock;
        monitor-enter(r1);
        r0 = r2.handshaking;	 Catch:{ all -> 0x0020 }
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = 0;
        r2.handshaking = r0;	 Catch:{ all -> 0x0020 }
        r0 = 0;
        r2.handshaken = r0;	 Catch:{ all -> 0x0020 }
        r0 = r2.handshakeFuture;	 Catch:{ all -> 0x0020 }
        if (r0 != 0) goto L_0x0019;
    L_0x0013:
        r0 = org.jboss.netty.channel.Channels.future(r3);	 Catch:{ all -> 0x0020 }
        r2.handshakeFuture = r0;	 Catch:{ all -> 0x0020 }
    L_0x0019:
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        r0 = r2.handshakeFuture;
        r0.setFailure(r4);
        goto L_0x0008;
    L_0x0020:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.setHandshakeFailure(org.jboss.netty.channel.Channel, javax.net.ssl.SSLException):void");
    }

    private void closeOutboundAndChannel(ChannelHandlerContext context, ChannelStateEvent e) throws SSLException {
        if (e.getChannel().isConnected()) {
            unwrap(context, e.getChannel(), ChannelBuffers.EMPTY_BUFFER, 0, 0);
            if (this.engine.isInboundDone() || !this.sentCloseNotify.compareAndSet(false, true)) {
                context.sendDownstream(e);
                return;
            }
            this.engine.closeOutbound();
            wrapNonAppData(context, e.getChannel()).addListener(new ClosingChannelFutureListener(context, e));
            return;
        }
        context.sendDownstream(e);
    }

    public void beforeAdd(ChannelHandlerContext ctx) throws Exception {
        this.ctx = ctx;
    }

    public void afterAdd(ChannelHandlerContext ctx) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext ctx) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext ctx) throws Exception {
    }
}
