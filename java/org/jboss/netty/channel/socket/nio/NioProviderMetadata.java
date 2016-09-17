package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.SelectorProvider;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.SystemPropertyUtil;

class NioProviderMetadata {
    static final int CONSTRAINT_LEVEL;
    private static final String CONSTRAINT_LEVEL_PROPERTY = "org.jboss.netty.channel.socket.nio.constraintLevel";
    private static final String OLD_CONSTRAINT_LEVEL_PROPERTY = "java.nio.channels.spi.constraintLevel";
    static final InternalLogger logger = InternalLoggerFactory.getInstance(NioProviderMetadata.class);

    private static final class ConstraintLevelAutodetector {
        ConstraintLevelAutodetector() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        int autodetect() {
            /*
            r16 = this;
            r3 = java.util.concurrent.Executors.newCachedThreadPool();
            r0 = 0;
            r7 = 0;
            r0 = java.nio.channels.ServerSocketChannel.open();	 Catch:{ Throwable -> 0x0265, all -> 0x0262 }
            r12 = r0.socket();	 Catch:{ Throwable -> 0x0062, all -> 0x0262 }
            r13 = new java.net.InetSocketAddress;	 Catch:{ Throwable -> 0x0062, all -> 0x0262 }
            r14 = 0;
            r13.<init>(r14);	 Catch:{ Throwable -> 0x0062, all -> 0x0262 }
            r12.bind(r13);	 Catch:{ Throwable -> 0x0062, all -> 0x0262 }
            r12 = 0;
            r0.configureBlocking(r12);	 Catch:{ Throwable -> 0x0062, all -> 0x0262 }
            r8 = new org.jboss.netty.channel.socket.nio.NioProviderMetadata$SelectorLoop;	 Catch:{ Throwable -> 0x0098, all -> 0x0262 }
            r8.<init>();	 Catch:{ Throwable -> 0x0098, all -> 0x0262 }
            r12 = r8.selector;	 Catch:{ Throwable -> 0x00cb, all -> 0x015e }
            r13 = 0;
            r0.register(r12, r13);	 Catch:{ Throwable -> 0x00cb, all -> 0x015e }
            r12 = r8.selector;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r6 = r0.keyFor(r12);	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r3.execute(r8);	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r9 = 1;
            r4 = 0;
        L_0x0031:
            r12 = 10;
            if (r4 >= r12) goto L_0x0125;
        L_0x0035:
            r12 = r8.selecting;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            if (r12 != 0) goto L_0x00f9;
        L_0x0039:
            java.lang.Thread.yield();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            goto L_0x0035;
        L_0x003d:
            r2 = move-exception;
            r7 = r8;
        L_0x003f:
            r1 = -1;
            if (r0 == 0) goto L_0x0045;
        L_0x0042:
            r0.close();	 Catch:{ Throwable -> 0x01c4 }
        L_0x0045:
            if (r7 == 0) goto L_0x0061;
        L_0x0047:
            r12 = 1;
            r7.done = r12;
            r3.shutdownNow();	 Catch:{ NullPointerException -> 0x01cf }
        L_0x004d:
            r12 = r7.selector;	 Catch:{ Throwable -> 0x025f }
            r12.wakeup();	 Catch:{ Throwable -> 0x025f }
            r12 = 1;
            r14 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x025c }
            r12 = r3.awaitTermination(r12, r14);	 Catch:{ InterruptedException -> 0x025c }
            if (r12 == 0) goto L_0x004d;
        L_0x005c:
            r12 = r7.selector;	 Catch:{ Throwable -> 0x01d2 }
            r12.close();	 Catch:{ Throwable -> 0x01d2 }
        L_0x0061:
            return r1;
        L_0x0062:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;	 Catch:{ Throwable -> 0x0265, all -> 0x0262 }
            r13 = "Failed to configure a temporary socket.";
            r12.warn(r13, r2);	 Catch:{ Throwable -> 0x0265, all -> 0x0262 }
            r1 = -1;
            if (r0 == 0) goto L_0x0071;
        L_0x006e:
            r0.close();	 Catch:{ Throwable -> 0x01f0 }
        L_0x0071:
            if (r7 == 0) goto L_0x0061;
        L_0x0073:
            r12 = 1;
            r7.done = r12;
            r3.shutdownNow();	 Catch:{ NullPointerException -> 0x01fb }
        L_0x0079:
            r12 = r7.selector;	 Catch:{ Throwable -> 0x0253 }
            r12.wakeup();	 Catch:{ Throwable -> 0x0253 }
            r12 = 1;
            r14 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x0250 }
            r12 = r3.awaitTermination(r12, r14);	 Catch:{ InterruptedException -> 0x0250 }
            if (r12 == 0) goto L_0x0079;
        L_0x0088:
            r12 = r7.selector;	 Catch:{ Throwable -> 0x008e }
            r12.close();	 Catch:{ Throwable -> 0x008e }
            goto L_0x0061;
        L_0x008e:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary selector.";
        L_0x0094:
            r12.warn(r13, r2);
            goto L_0x0061;
        L_0x0098:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;	 Catch:{ Throwable -> 0x0265, all -> 0x0262 }
            r13 = "Failed to open a temporary selector.";
            r12.warn(r13, r2);	 Catch:{ Throwable -> 0x0265, all -> 0x0262 }
            r1 = -1;
            if (r0 == 0) goto L_0x00a7;
        L_0x00a4:
            r0.close();	 Catch:{ Throwable -> 0x01fe }
        L_0x00a7:
            if (r7 == 0) goto L_0x0061;
        L_0x00a9:
            r12 = 1;
            r7.done = r12;
            r3.shutdownNow();	 Catch:{ NullPointerException -> 0x0209 }
        L_0x00af:
            r12 = r7.selector;	 Catch:{ Throwable -> 0x024d }
            r12.wakeup();	 Catch:{ Throwable -> 0x024d }
            r12 = 1;
            r14 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x024a }
            r12 = r3.awaitTermination(r12, r14);	 Catch:{ InterruptedException -> 0x024a }
            if (r12 == 0) goto L_0x00af;
        L_0x00be:
            r12 = r7.selector;	 Catch:{ Throwable -> 0x00c4 }
            r12.close();	 Catch:{ Throwable -> 0x00c4 }
            goto L_0x0061;
        L_0x00c4:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary selector.";
            goto L_0x0094;
        L_0x00cb:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r13 = "Failed to register a temporary selector.";
            r12.warn(r13, r2);	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r1 = -1;
            if (r0 == 0) goto L_0x00da;
        L_0x00d7:
            r0.close();	 Catch:{ Throwable -> 0x020c }
        L_0x00da:
            if (r8 == 0) goto L_0x00f6;
        L_0x00dc:
            r12 = 1;
            r8.done = r12;
            r3.shutdownNow();	 Catch:{ NullPointerException -> 0x0217 }
        L_0x00e2:
            r12 = r8.selector;	 Catch:{ Throwable -> 0x0247 }
            r12.wakeup();	 Catch:{ Throwable -> 0x0247 }
            r12 = 1;
            r14 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x0244 }
            r12 = r3.awaitTermination(r12, r14);	 Catch:{ InterruptedException -> 0x0244 }
            if (r12 == 0) goto L_0x00e2;
        L_0x00f1:
            r12 = r8.selector;	 Catch:{ Throwable -> 0x021a }
            r12.close();	 Catch:{ Throwable -> 0x021a }
        L_0x00f6:
            r7 = r8;
            goto L_0x0061;
        L_0x00f9:
            r12 = 50;
            java.lang.Thread.sleep(r12);	 Catch:{ InterruptedException -> 0x01bf }
        L_0x00fe:
            r12 = r8.selecting;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            if (r12 == 0) goto L_0x0035;
        L_0x0102:
            r10 = java.lang.System.nanoTime();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r6.interestOps();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r12 | 16;
            r6.interestOps(r12);	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r6.interestOps();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r12 & -17;
            r6.interestOps(r12);	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = java.lang.System.nanoTime();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r12 - r10;
            r14 = 500000000; // 0x1dcd6500 float:5.436748E-21 double:2.47032823E-315;
            r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
            if (r12 < 0) goto L_0x014c;
        L_0x0124:
            r9 = 0;
        L_0x0125:
            if (r9 == 0) goto L_0x0150;
        L_0x0127:
            r1 = 0;
        L_0x0128:
            if (r0 == 0) goto L_0x012d;
        L_0x012a:
            r0.close();	 Catch:{ Throwable -> 0x0225 }
        L_0x012d:
            if (r8 == 0) goto L_0x0149;
        L_0x012f:
            r12 = 1;
            r8.done = r12;
            r3.shutdownNow();	 Catch:{ NullPointerException -> 0x0230 }
        L_0x0135:
            r12 = r8.selector;	 Catch:{ Throwable -> 0x0241 }
            r12.wakeup();	 Catch:{ Throwable -> 0x0241 }
            r12 = 1;
            r14 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x023e }
            r12 = r3.awaitTermination(r12, r14);	 Catch:{ InterruptedException -> 0x023e }
            if (r12 == 0) goto L_0x0135;
        L_0x0144:
            r12 = r8.selector;	 Catch:{ Throwable -> 0x0233 }
            r12.close();	 Catch:{ Throwable -> 0x0233 }
        L_0x0149:
            r7 = r8;
            goto L_0x0061;
        L_0x014c:
            r4 = r4 + 1;
            goto L_0x0031;
        L_0x0150:
            r9 = 1;
            r4 = 0;
        L_0x0152:
            r12 = 10;
            if (r4 >= r12) goto L_0x01b1;
        L_0x0156:
            r12 = r8.selecting;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            if (r12 != 0) goto L_0x0182;
        L_0x015a:
            java.lang.Thread.yield();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            goto L_0x0156;
        L_0x015e:
            r12 = move-exception;
            r7 = r8;
        L_0x0160:
            if (r0 == 0) goto L_0x0165;
        L_0x0162:
            r0.close();	 Catch:{ Throwable -> 0x01da }
        L_0x0165:
            if (r7 == 0) goto L_0x0181;
        L_0x0167:
            r13 = 1;
            r7.done = r13;
            r3.shutdownNow();	 Catch:{ NullPointerException -> 0x01e4 }
        L_0x016d:
            r13 = r7.selector;	 Catch:{ Throwable -> 0x0259 }
            r13.wakeup();	 Catch:{ Throwable -> 0x0259 }
            r14 = 1;
            r13 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ InterruptedException -> 0x0256 }
            r13 = r3.awaitTermination(r14, r13);	 Catch:{ InterruptedException -> 0x0256 }
            if (r13 == 0) goto L_0x016d;
        L_0x017c:
            r13 = r7.selector;	 Catch:{ Throwable -> 0x01e6 }
            r13.close();	 Catch:{ Throwable -> 0x01e6 }
        L_0x0181:
            throw r12;
        L_0x0182:
            r12 = 50;
            java.lang.Thread.sleep(r12);	 Catch:{ InterruptedException -> 0x01c2 }
        L_0x0187:
            r12 = r8.selecting;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            if (r12 == 0) goto L_0x0156;
        L_0x018b:
            r10 = java.lang.System.nanoTime();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r5 = r6.interestOps();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            monitor-enter(r8);	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r8.selector;	 Catch:{ all -> 0x01b6 }
            r12.wakeup();	 Catch:{ all -> 0x01b6 }
            r12 = r5 | 16;
            r6.interestOps(r12);	 Catch:{ all -> 0x01b6 }
            r12 = r5 & -17;
            r6.interestOps(r12);	 Catch:{ all -> 0x01b6 }
            monitor-exit(r8);	 Catch:{ all -> 0x01b6 }
            r12 = java.lang.System.nanoTime();	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
            r12 = r12 - r10;
            r14 = 500000000; // 0x1dcd6500 float:5.436748E-21 double:2.47032823E-315;
            r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
            if (r12 < 0) goto L_0x01b9;
        L_0x01b0:
            r9 = 0;
        L_0x01b1:
            if (r9 == 0) goto L_0x01bc;
        L_0x01b3:
            r1 = 1;
            goto L_0x0128;
        L_0x01b6:
            r12 = move-exception;
            monitor-exit(r8);	 Catch:{ all -> 0x01b6 }
            throw r12;	 Catch:{ Throwable -> 0x003d, all -> 0x015e }
        L_0x01b9:
            r4 = r4 + 1;
            goto L_0x0152;
        L_0x01bc:
            r1 = 2;
            goto L_0x0128;
        L_0x01bf:
            r12 = move-exception;
            goto L_0x00fe;
        L_0x01c2:
            r12 = move-exception;
            goto L_0x0187;
        L_0x01c4:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary socket.";
            r12.warn(r13, r2);
            goto L_0x0045;
        L_0x01cf:
            r12 = move-exception;
            goto L_0x004d;
        L_0x01d2:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary selector.";
            goto L_0x0094;
        L_0x01da:
            r2 = move-exception;
            r13 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r14 = "Failed to close a temporary socket.";
            r13.warn(r14, r2);
            goto L_0x0165;
        L_0x01e4:
            r13 = move-exception;
            goto L_0x016d;
        L_0x01e6:
            r2 = move-exception;
            r13 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r14 = "Failed to close a temporary selector.";
            r13.warn(r14, r2);
            goto L_0x0181;
        L_0x01f0:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary socket.";
            r12.warn(r13, r2);
            goto L_0x0071;
        L_0x01fb:
            r12 = move-exception;
            goto L_0x0079;
        L_0x01fe:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary socket.";
            r12.warn(r13, r2);
            goto L_0x00a7;
        L_0x0209:
            r12 = move-exception;
            goto L_0x00af;
        L_0x020c:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary socket.";
            r12.warn(r13, r2);
            goto L_0x00da;
        L_0x0217:
            r12 = move-exception;
            goto L_0x00e2;
        L_0x021a:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary selector.";
            r12.warn(r13, r2);
            goto L_0x00f6;
        L_0x0225:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary socket.";
            r12.warn(r13, r2);
            goto L_0x012d;
        L_0x0230:
            r12 = move-exception;
            goto L_0x0135;
        L_0x0233:
            r2 = move-exception;
            r12 = org.jboss.netty.channel.socket.nio.NioProviderMetadata.logger;
            r13 = "Failed to close a temporary selector.";
            r12.warn(r13, r2);
            goto L_0x0149;
        L_0x023e:
            r12 = move-exception;
            goto L_0x0135;
        L_0x0241:
            r12 = move-exception;
            goto L_0x0144;
        L_0x0244:
            r12 = move-exception;
            goto L_0x00e2;
        L_0x0247:
            r12 = move-exception;
            goto L_0x00f1;
        L_0x024a:
            r12 = move-exception;
            goto L_0x00af;
        L_0x024d:
            r12 = move-exception;
            goto L_0x00be;
        L_0x0250:
            r12 = move-exception;
            goto L_0x0079;
        L_0x0253:
            r12 = move-exception;
            goto L_0x0088;
        L_0x0256:
            r13 = move-exception;
            goto L_0x016d;
        L_0x0259:
            r13 = move-exception;
            goto L_0x017c;
        L_0x025c:
            r12 = move-exception;
            goto L_0x004d;
        L_0x025f:
            r12 = move-exception;
            goto L_0x005c;
        L_0x0262:
            r12 = move-exception;
            goto L_0x0160;
        L_0x0265:
            r2 = move-exception;
            goto L_0x003f;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioProviderMetadata.ConstraintLevelAutodetector.autodetect():int");
        }
    }

    private static final class SelectorLoop implements Runnable {
        volatile boolean done;
        volatile boolean selecting;
        final Selector selector = Selector.open();

        SelectorLoop() throws IOException {
        }

        public void run() {
            while (!this.done) {
                synchronized (this) {
                }
                try {
                    this.selecting = true;
                    this.selector.select(1000);
                    this.selecting = false;
                    Set<SelectionKey> keys = this.selector.selectedKeys();
                    for (SelectionKey k : keys) {
                        k.interestOps(NioProviderMetadata.CONSTRAINT_LEVEL);
                    }
                    keys.clear();
                } catch (IOException e) {
                    NioProviderMetadata.logger.warn("Failed to wait for a temporary selector.", e);
                } catch (Throwable th) {
                    this.selecting = false;
                }
            }
        }
    }

    static {
        int constraintLevel = SystemPropertyUtil.get(CONSTRAINT_LEVEL_PROPERTY, -1);
        if (constraintLevel < 0 || constraintLevel > 2) {
            constraintLevel = SystemPropertyUtil.get(OLD_CONSTRAINT_LEVEL_PROPERTY, -1);
            if (constraintLevel < 0 || constraintLevel > 2) {
                constraintLevel = -1;
            } else {
                logger.warn("System property 'java.nio.channels.spi.constraintLevel' has been deprecated.  Use 'org.jboss.netty.channel.socket.nio.constraintLevel' instead.");
            }
        }
        if (constraintLevel >= 0) {
            logger.debug("Setting the NIO constraint level to: " + constraintLevel);
        }
        if (constraintLevel < 0) {
            constraintLevel = detectConstraintLevelFromSystemProperties();
            if (constraintLevel < 0) {
                constraintLevel = 2;
                logger.debug("Couldn't determine the NIO constraint level from the system properties; using the safest level (2)");
            } else if (constraintLevel != 0) {
                logger.info("Using the autodetected NIO constraint level: " + constraintLevel + " (Use better NIO provider for better performance)");
            } else {
                logger.debug("Using the autodetected NIO constraint level: " + constraintLevel);
            }
        }
        CONSTRAINT_LEVEL = constraintLevel;
        if (CONSTRAINT_LEVEL < 0 || CONSTRAINT_LEVEL > 2) {
            throw new Error("Unexpected NIO constraint level: " + CONSTRAINT_LEVEL + ", please report this error.");
        }
    }

    private static int detectConstraintLevelFromSystemProperties() {
        String provider;
        String version = SystemPropertyUtil.get("java.specification.version");
        String vminfo = SystemPropertyUtil.get("java.vm.info", "");
        String os = SystemPropertyUtil.get("os.name");
        String vendor = SystemPropertyUtil.get("java.vm.vendor");
        try {
            provider = SelectorProvider.provider().getClass().getName();
        } catch (Exception e) {
            provider = null;
        }
        if (version == null || os == null || vendor == null || provider == null) {
            return -1;
        }
        os = os.toLowerCase();
        vendor = vendor.toLowerCase();
        if (vendor.indexOf("sun") >= 0) {
            if (os.indexOf("linux") >= 0) {
                if (provider.equals("sun.nio.ch.EPollSelectorProvider") || provider.equals("sun.nio.ch.PollSelectorProvider")) {
                    return CONSTRAINT_LEVEL;
                }
            } else if (os.indexOf("windows") >= 0) {
                if (provider.equals("sun.nio.ch.WindowsSelectorProvider")) {
                    return CONSTRAINT_LEVEL;
                }
            } else if ((os.indexOf("sun") >= 0 || os.indexOf("solaris") >= 0) && provider.equals("sun.nio.ch.DevPollSelectorProvider")) {
                return CONSTRAINT_LEVEL;
            }
        } else if (vendor.indexOf("apple") >= 0) {
            if (os.indexOf("mac") >= 0 && os.indexOf("os") >= 0 && provider.equals("sun.nio.ch.KQueueSelectorProvider")) {
                return CONSTRAINT_LEVEL;
            }
        } else if (vendor.indexOf("ibm") >= 0) {
            if (os.indexOf("linux") >= 0 || os.indexOf("aix") >= 0) {
                if (version.equals("1.5") || version.matches("^1\\.5\\D.*$")) {
                    if (provider.equals("sun.nio.ch.PollSelectorProvider")) {
                        return 1;
                    }
                } else if (version.equals("1.6") || version.matches("^1\\.6\\D.*$")) {
                    Matcher dateMatcher = Pattern.compile("(?:^|[^0-9])([2-9][0-9]{3}(?:0[1-9]|1[0-2])(?:0[1-9]|[12][0-9]|3[01]))(?:$|[^0-9])").matcher(vminfo);
                    if (dateMatcher.find()) {
                        if (Long.parseLong(dateMatcher.group(1)) < 20081105) {
                            return 2;
                        }
                        if (provider.equals("sun.nio.ch.EPollSelectorProvider")) {
                            return CONSTRAINT_LEVEL;
                        }
                        if (provider.equals("sun.nio.ch.PollSelectorProvider")) {
                            return 1;
                        }
                    }
                }
            }
        } else if (vendor.indexOf("bea") >= 0 || vendor.indexOf("oracle") >= 0) {
            if (os.indexOf("linux") >= 0) {
                if (provider.equals("sun.nio.ch.EPollSelectorProvider")) {
                    return CONSTRAINT_LEVEL;
                }
                if (provider.equals("sun.nio.ch.PollSelectorProvider")) {
                    return CONSTRAINT_LEVEL;
                }
            } else if (os.indexOf("windows") >= 0 && provider.equals("sun.nio.ch.WindowsSelectorProvider")) {
                return CONSTRAINT_LEVEL;
            }
        } else if (vendor.indexOf("apache") >= 0 && provider.equals("org.apache.harmony.nio.internal.SelectorProviderImpl")) {
            return 1;
        }
        return -1;
    }

    public static void main(String[] args) throws Exception {
        for (Entry<Object, Object> e : System.getProperties().entrySet()) {
            System.out.println(e.getKey() + ": " + e.getValue());
        }
        System.out.println();
        System.out.println("Hard-coded Constraint Level: " + CONSTRAINT_LEVEL);
        System.out.println("Auto-detected Constraint Level: " + new ConstraintLevelAutodetector().autodetect());
    }

    private NioProviderMetadata() {
    }
}
