package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.Selector;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

final class SelectorUtil {
    static final int DEFAULT_IO_THREADS = (Runtime.getRuntime().availableProcessors() * 2);
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SelectorUtil.class);

    SelectorUtil() {
    }

    static void select(Selector selector) throws IOException {
        try {
            selector.select(500);
        } catch (CancelledKeyException e) {
            logger.debug(CancelledKeyException.class.getSimpleName() + " raised by a Selector - JDK bug?", e);
        }
    }
}
