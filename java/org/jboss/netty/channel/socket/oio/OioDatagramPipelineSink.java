package org.jboss.netty.channel.socket.oio;

import java.net.SocketAddress;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.MessageEvent;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class OioDatagramPipelineSink extends AbstractChannelSink {
    private final Executor workerExecutor;

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

    private void bind(org.jboss.netty.channel.socket.oio.OioDatagramChannel r10, org.jboss.netty.channel.ChannelFuture r11, java.net.SocketAddress r12) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:286)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:173)
*/
        /*
        r9 = this;
        r0 = 0;
        r2 = 0;
        r3 = r10.socket;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r3.bind(r12);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r0 = 1;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r11.setSuccess();	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r3 = r10.getLocalAddress();	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        org.jboss.netty.channel.Channels.fireChannelBound(r10, r3);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r3 = r9.workerExecutor;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r4 = new org.jboss.netty.util.internal.IoWorkerRunnable;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r5 = new org.jboss.netty.util.ThreadRenamingRunnable;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r6 = new org.jboss.netty.channel.socket.oio.OioDatagramWorker;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r6.<init>(r10);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r7.<init>();	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r8 = "Old I/O datagram worker (";	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r7 = r7.append(r10);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r8 = 41;	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r5.<init>(r6, r7);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r4.<init>(r5);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r3.execute(r4);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        r2 = 1;
        if (r0 == 0) goto L_0x0048;
    L_0x0043:
        if (r2 != 0) goto L_0x0048;
    L_0x0045:
        org.jboss.netty.channel.socket.oio.OioDatagramWorker.close(r10, r11);
    L_0x0048:
        return;
    L_0x0049:
        r1 = move-exception;
        r11.setFailure(r1);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        org.jboss.netty.channel.Channels.fireExceptionCaught(r10, r1);	 Catch:{ Throwable -> 0x0049, all -> 0x0058 }
        if (r0 == 0) goto L_0x0048;
    L_0x0052:
        if (r2 != 0) goto L_0x0048;
    L_0x0054:
        org.jboss.netty.channel.socket.oio.OioDatagramWorker.close(r10, r11);
        goto L_0x0048;
    L_0x0058:
        r3 = move-exception;
        if (r0 == 0) goto L_0x0060;
    L_0x005b:
        if (r2 != 0) goto L_0x0060;
    L_0x005d:
        org.jboss.netty.channel.socket.oio.OioDatagramWorker.close(r10, r11);
    L_0x0060:
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.oio.OioDatagramPipelineSink.bind(org.jboss.netty.channel.socket.oio.OioDatagramChannel, org.jboss.netty.channel.ChannelFuture, java.net.SocketAddress):void");
    }

    private void connect(org.jboss.netty.channel.socket.oio.OioDatagramChannel r11, org.jboss.netty.channel.ChannelFuture r12, java.net.SocketAddress r13) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:286)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:173)
*/
        /*
        r10 = this;
        r0 = r11.isBound();
        r1 = 0;
        r4 = 0;
        r6 = org.jboss.netty.channel.ChannelFutureListener.CLOSE_ON_FAILURE;
        r12.addListener(r6);
        r6 = 0;
        r11.remoteAddress = r6;
        r6 = r11.socket;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6.connect(r13);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r1 = 1;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r12.setSuccess();	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        if (r0 != 0) goto L_0x0020;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
    L_0x0019:
        r6 = r11.getLocalAddress();	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        org.jboss.netty.channel.Channels.fireChannelBound(r11, r6);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
    L_0x0020:
        r6 = r11.getRemoteAddress();	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        org.jboss.netty.channel.Channels.fireChannelConnected(r11, r6);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6.<init>();	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r7 = "Old I/O datagram worker (";	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6 = r6.append(r7);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6 = r6.append(r11);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r7 = 41;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6 = r6.append(r7);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r3 = r6.toString();	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        if (r0 != 0) goto L_0x0060;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
    L_0x0043:
        r6 = r10.workerExecutor;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r7 = new org.jboss.netty.util.internal.IoWorkerRunnable;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r8 = new org.jboss.netty.util.ThreadRenamingRunnable;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r9 = new org.jboss.netty.channel.socket.oio.OioDatagramWorker;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r9.<init>(r11);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r8.<init>(r9, r3);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r7.<init>(r8);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        r6.execute(r7);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
    L_0x0057:
        r4 = 1;
        if (r1 == 0) goto L_0x005f;
    L_0x005a:
        if (r4 != 0) goto L_0x005f;
    L_0x005c:
        org.jboss.netty.channel.socket.oio.OioDatagramWorker.close(r11, r12);
    L_0x005f:
        return;
    L_0x0060:
        r5 = r11.workerThread;	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        if (r5 == 0) goto L_0x0057;
    L_0x0064:
        r5.setName(r3);	 Catch:{ SecurityException -> 0x0068 }
        goto L_0x0057;
    L_0x0068:
        r6 = move-exception;
        goto L_0x0057;
    L_0x006a:
        r2 = move-exception;
        r12.setFailure(r2);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        org.jboss.netty.channel.Channels.fireExceptionCaught(r11, r2);	 Catch:{ Throwable -> 0x006a, all -> 0x0079 }
        if (r1 == 0) goto L_0x005f;
    L_0x0073:
        if (r4 != 0) goto L_0x005f;
    L_0x0075:
        org.jboss.netty.channel.socket.oio.OioDatagramWorker.close(r11, r12);
        goto L_0x005f;
    L_0x0079:
        r6 = move-exception;
        if (r1 == 0) goto L_0x0081;
    L_0x007c:
        if (r4 != 0) goto L_0x0081;
    L_0x007e:
        org.jboss.netty.channel.socket.oio.OioDatagramWorker.close(r11, r12);
    L_0x0081:
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.oio.OioDatagramPipelineSink.connect(org.jboss.netty.channel.socket.oio.OioDatagramChannel, org.jboss.netty.channel.ChannelFuture, java.net.SocketAddress):void");
    }

    OioDatagramPipelineSink(Executor workerExecutor) {
        this.workerExecutor = workerExecutor;
    }

    public void eventSunk(ChannelPipeline pipeline, ChannelEvent e) throws Exception {
        OioDatagramChannel channel = (OioDatagramChannel) e.getChannel();
        ChannelFuture future = e.getFuture();
        if (e instanceof ChannelStateEvent) {
            ChannelStateEvent stateEvent = (ChannelStateEvent) e;
            ChannelState state = stateEvent.getState();
            Object value = stateEvent.getValue();
            switch (AnonymousClass1.$SwitchMap$org$jboss$netty$channel$ChannelState[state.ordinal()]) {
                case BuddyOnlineState.OFFLINE /*1*/:
                    if (Boolean.FALSE.equals(value)) {
                        OioDatagramWorker.close(channel, future);
                        return;
                    }
                    return;
                case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                    if (value != null) {
                        bind(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        OioDatagramWorker.close(channel, future);
                        return;
                    }
                case MessageRecipientMode.TO_ZONE /*3*/:
                    if (value != null) {
                        connect(channel, future, (SocketAddress) value);
                        return;
                    } else {
                        OioDatagramWorker.disconnect(channel, future);
                        return;
                    }
                case Base64.DONT_GUNZIP /*4*/:
                    OioDatagramWorker.setInterestOps(channel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (e instanceof MessageEvent) {
            MessageEvent evt = (MessageEvent) e;
            OioDatagramWorker.write(channel, future, evt.getMessage(), evt.getRemoteAddress());
        }
    }
}
