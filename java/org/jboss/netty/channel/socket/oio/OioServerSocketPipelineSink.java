package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.IoWorkerRunnable;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class OioServerSocketPipelineSink extends AbstractChannelSink {
    static final InternalLogger logger = InternalLoggerFactory.getInstance(OioServerSocketPipelineSink.class);
    final Executor workerExecutor;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];

        static {
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private final class Boss implements Runnable {
        private final OioServerSocketChannel channel;

        Boss(OioServerSocketChannel channel) {
            this.channel = channel;
        }

        public void run() {
            this.channel.shutdownLock.lock();
            while (this.channel.isBound()) {
                try {
                    Socket acceptedSocket = this.channel.socket.accept();
                    try {
                        OioServerSocketPipelineSink.this.workerExecutor.execute(new IoWorkerRunnable(new ThreadRenamingRunnable(new OioWorker(new OioAcceptedSocketChannel(this.channel, this.channel.getFactory(), this.channel.getConfig().getPipelineFactory().getPipeline(), OioServerSocketPipelineSink.this, acceptedSocket)), "Old I/O server worker (parentId: " + this.channel.getId() + ", " + this.channel + ')')));
                    } catch (Exception e) {
                        OioServerSocketPipelineSink.logger.warn("Failed to initialize an accepted socket.", e);
                        try {
                            acceptedSocket.close();
                        } catch (IOException e2) {
                            OioServerSocketPipelineSink.logger.warn("Failed to close a partially accepted socket.", e2);
                        }
                    }
                } catch (SocketTimeoutException e3) {
                } catch (Throwable th) {
                    this.channel.shutdownLock.unlock();
                }
            }
            this.channel.shutdownLock.unlock();
        }
    }

    private void bind(org.jboss.netty.channel.socket.oio.OioServerSocketChannel r10, org.jboss.netty.channel.ChannelFuture r11, java.net.SocketAddress r12) {
        /* JADX: method processing error */
/*
Error: java.util.NoSuchElementException
	at java.util.HashMap$HashIterator.nextEntry(HashMap.java:790)
	at java.util.HashMap$KeyIterator.next(HashMap.java:815)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.applyRemove(BlockFinallyExtract.java:535)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.extractFinally(BlockFinallyExtract.java:175)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.processExceptionHandler(BlockFinallyExtract.java:79)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.visit(BlockFinallyExtract.java:51)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:286)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:173)
*/
        /*
        r9 = this;
        r2 = 0;
        r1 = 0;
        r4 = r10.socket;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r5 = r10.getConfig();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r5 = r5.getBacklog();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r4.bind(r12, r5);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r2 = 1;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r11.setSuccess();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r12 = r10.getLocalAddress();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        org.jboss.netty.channel.Channels.fireChannelBound(r10, r12);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r4 = r10.getFactory();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r4 = (org.jboss.netty.channel.socket.oio.OioServerSocketChannelFactory) r4;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r0 = r4.bossExecutor;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r4 = new org.jboss.netty.util.internal.IoWorkerRunnable;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r5 = new org.jboss.netty.util.ThreadRenamingRunnable;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r6 = new org.jboss.netty.channel.socket.oio.OioServerSocketPipelineSink$Boss;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r6.<init>(r10);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r7.<init>();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r8 = "Old I/O server boss (";	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r7 = r7.append(r10);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r8 = 41;	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r5.<init>(r6, r7);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r4.<init>(r5);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r0.execute(r4);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        r1 = 1;
        if (r1 != 0) goto L_0x0056;
    L_0x0051:
        if (r2 == 0) goto L_0x0056;
    L_0x0053:
        r9.close(r10, r11);
    L_0x0056:
        return;
    L_0x0057:
        r3 = move-exception;
        r11.setFailure(r3);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        org.jboss.netty.channel.Channels.fireExceptionCaught(r10, r3);	 Catch:{ Throwable -> 0x0057, all -> 0x0066 }
        if (r1 != 0) goto L_0x0056;
    L_0x0060:
        if (r2 == 0) goto L_0x0056;
    L_0x0062:
        r9.close(r10, r11);
        goto L_0x0056;
    L_0x0066:
        r4 = move-exception;
        if (r1 != 0) goto L_0x006e;
    L_0x0069:
        if (r2 == 0) goto L_0x006e;
    L_0x006b:
        r9.close(r10, r11);
    L_0x006e:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.oio.OioServerSocketPipelineSink.bind(org.jboss.netty.channel.socket.oio.OioServerSocketChannel, org.jboss.netty.channel.ChannelFuture, java.net.SocketAddress):void");
    }

    OioServerSocketPipelineSink(Executor workerExecutor) {
        this.workerExecutor = workerExecutor;
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        Channel channel = e.getChannel();
        if (channel instanceof OioServerSocketChannel) {
            handleServerSocket(e);
        } else if (channel instanceof OioAcceptedSocketChannel) {
            handleAcceptedSocket(e);
        }
    }

    private void handleServerSocket(ChannelEvent e) {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            OioServerSocketChannel channel = (OioServerSocketChannel) event.getChannel();
            ChannelFuture future = event.getFuture();
            ChannelState state = event.getState();
            Object value = event.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        bind(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        close(channel, future);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    private void handleAcceptedSocket(ChannelEvent e) {
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent event = (ChannelStateEvent) e;
            OioAcceptedSocketChannel channel = (OioAcceptedSocketChannel) event.getChannel();
            ChannelFuture future = event.getFuture();
            ChannelState state = event.getState();
            Object value = event.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        OioWorker.close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value == null) {
                        OioWorker.close(channel, future);
                        return;
                    }
                    return;
                case Base64.DONT_GUNZIP /*4*/:
                    OioWorker.setInterestOps(channel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            MessageEvent event2 = (MessageEvent) e;
            OioWorker.write((OioSocketChannel) event2.getChannel(), event2.getFuture(), event2.getMessage());
        }
    }

    private void close(OioServerSocketChannel channel, ChannelFuture future) {
        boolean bound = channel.isBound();
        try {
            channel.socket.close();
            channel.shutdownLock.lock();
            if (channel.setClosed()) {
                future.setSuccess();
                if (bound) {
                    Channels.fireChannelUnbound((Channel) channel);
                }
                Channels.fireChannelClosed((Channel) channel);
            } else {
                future.setSuccess();
            }
            channel.shutdownLock.unlock();
        } catch (Throwable t) {
            future.setFailure(t);
            Channels.fireExceptionCaught((Channel) channel, t);
        }
    }
}
