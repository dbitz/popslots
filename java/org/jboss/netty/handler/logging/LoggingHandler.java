package org.jboss.netty.handler.logging;

import com.helpshift.support.storage.ProfilesDBHelper;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogLevel;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

@Sharable
public class LoggingHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler {
    private static final InternalLogLevel DEFAULT_LEVEL = InternalLogLevel.DEBUG;
    private final boolean hexDump;
    private final InternalLogLevel level;
    private final InternalLogger logger;

    public LoggingHandler() {
        this(true);
    }

    public LoggingHandler(InternalLogLevel level) {
        this(level, true);
    }

    public LoggingHandler(boolean hexDump) {
        this(DEFAULT_LEVEL, hexDump);
    }

    public LoggingHandler(InternalLogLevel level, boolean hexDump) {
        if (level == null) {
            throw new NullPointerException("level");
        }
        this.logger = InternalLoggerFactory.getInstance(getClass());
        this.level = level;
        this.hexDump = hexDump;
    }

    public LoggingHandler(Class<?> clazz) {
        this((Class) clazz, true);
    }

    public LoggingHandler(Class<?> clazz, boolean hexDump) {
        this((Class) clazz, DEFAULT_LEVEL, hexDump);
    }

    public LoggingHandler(Class<?> clazz, InternalLogLevel level) {
        this((Class) clazz, level, true);
    }

    public LoggingHandler(Class<?> clazz, InternalLogLevel level, boolean hexDump) {
        if (clazz == null) {
            throw new NullPointerException("clazz");
        } else if (level == null) {
            throw new NullPointerException("level");
        } else {
            this.logger = InternalLoggerFactory.getInstance((Class) clazz);
            this.level = level;
            this.hexDump = hexDump;
        }
    }

    public LoggingHandler(String name) {
        this(name, true);
    }

    public LoggingHandler(String name, boolean hexDump) {
        this(name, DEFAULT_LEVEL, hexDump);
    }

    public LoggingHandler(String name, InternalLogLevel level, boolean hexDump) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        } else if (level == null) {
            throw new NullPointerException("level");
        } else {
            this.logger = InternalLoggerFactory.getInstance(name);
            this.level = level;
            this.hexDump = hexDump;
        }
    }

    public InternalLogger getLogger() {
        return this.logger;
    }

    public InternalLogLevel getLevel() {
        return this.level;
    }

    public void log(ChannelEvent e) {
        if (getLogger().isEnabled(this.level)) {
            String msg = e.toString();
            if (this.hexDump && (e instanceof MessageEvent)) {
                MessageEvent me = (MessageEvent) e;
                if (me.getMessage() instanceof ChannelBuffer) {
                    msg = msg + " - (HEXDUMP: " + ChannelBuffers.hexDump((ChannelBuffer) me.getMessage()) + ')';
                }
            }
            if (e instanceof ExceptionEvent) {
                getLogger().log(this.level, msg, ((ExceptionEvent) e).getCause());
            } else {
                getLogger().log(this.level, msg);
            }
        }
    }

    public void handleUpstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        log(e);
        ctx.sendUpstream(e);
    }

    public void handleDownstream(ChannelHandlerContext ctx, ChannelEvent e) throws Exception {
        log(e);
        ctx.sendDownstream(e);
    }
}
