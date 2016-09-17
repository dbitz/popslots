package org.jboss.netty.bootstrap;

import java.net.SocketAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ChildChannelStateEvent;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.ServerChannelFactory;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;

public class ServerBootstrap extends Bootstrap {
    private volatile ChannelHandler parentHandler;

    private final class Binder extends SimpleChannelUpstreamHandler {
        static final /* synthetic */ boolean $assertionsDisabled = (!ServerBootstrap.class.desiredAssertionStatus());
        private final Map<String, Object> childOptions = new HashMap();
        private final BlockingQueue<ChannelFuture> futureQueue;
        private final SocketAddress localAddress;

        Binder(SocketAddress localAddress, BlockingQueue<ChannelFuture> futureQueue) {
            this.localAddress = localAddress;
            this.futureQueue = futureQueue;
        }

        public void channelOpen(ChannelHandlerContext ctx, ChannelStateEvent evt) {
            try {
                evt.getChannel().getConfig().setPipelineFactory(ServerBootstrap.this.getPipelineFactory());
                Map<String, Object> allOptions = ServerBootstrap.this.getOptions();
                Map<String, Object> parentOptions = new HashMap();
                for (Entry<String, Object> e : allOptions.entrySet()) {
                    if (((String) e.getKey()).startsWith("child.")) {
                        this.childOptions.put(((String) e.getKey()).substring(6), e.getValue());
                    } else if (!((String) e.getKey()).equals("pipelineFactory")) {
                        parentOptions.put(e.getKey(), e.getValue());
                    }
                }
                evt.getChannel().getConfig().setOptions(parentOptions);
                boolean finished = this.futureQueue.offer(evt.getChannel().bind(this.localAddress));
                if (!$assertionsDisabled && !finished) {
                    throw new AssertionError();
                }
            } finally {
                ctx.sendUpstream(evt);
            }
        }

        public void childChannelOpen(ChannelHandlerContext ctx, ChildChannelStateEvent e) throws Exception {
            e.getChildChannel().getConfig().setOptions(this.childOptions);
            ctx.sendUpstream(e);
        }

        public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) throws Exception {
            boolean finished = this.futureQueue.offer(Channels.failedFuture(e.getChannel(), e.getCause()));
            if ($assertionsDisabled || finished) {
                ctx.sendUpstream(e);
                return;
            }
            throw new AssertionError();
        }
    }

    public ServerBootstrap(ChannelFactory channelFactory) {
        super(channelFactory);
    }

    public void setFactory(ChannelFactory factory) {
        if (factory == null) {
            throw new NullPointerException("factory");
        } else if (factory instanceof ServerChannelFactory) {
            super.setFactory(factory);
        } else {
            throw new IllegalArgumentException("factory must be a " + ServerChannelFactory.class.getSimpleName() + ": " + factory.getClass());
        }
    }

    public ChannelHandler getParentHandler() {
        return this.parentHandler;
    }

    public void setParentHandler(ChannelHandler parentHandler) {
        this.parentHandler = parentHandler;
    }

    public Channel bind() {
        SocketAddress localAddress = (SocketAddress) getOption("localAddress");
        if (localAddress != null) {
            return bind(localAddress);
        }
        throw new IllegalStateException("localAddress option is not set.");
    }

    public Channel bind(SocketAddress localAddress) {
        if (localAddress == null) {
            throw new NullPointerException("localAddress");
        }
        BlockingQueue<ChannelFuture> futureQueue = new LinkedBlockingQueue();
        ChannelHandler binder = new Binder(localAddress, futureQueue);
        ChannelHandler parentHandler = getParentHandler();
        ChannelPipeline bossPipeline = Channels.pipeline();
        bossPipeline.addLast("binder", binder);
        if (parentHandler != null) {
            bossPipeline.addLast("userHandler", parentHandler);
        }
        Channel channel = getFactory().newChannel(bossPipeline);
        ChannelFuture future = null;
        boolean interrupted = false;
        do {
            try {
                future = (ChannelFuture) futureQueue.poll(2147483647L, TimeUnit.SECONDS);
                continue;
            } catch (InterruptedException e) {
                interrupted = true;
                continue;
            }
        } while (future == null);
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
        future.awaitUninterruptibly();
        if (future.isSuccess()) {
            return channel;
        }
        future.getChannel().close().awaitUninterruptibly();
        throw new ChannelException("Failed to bind to: " + localAddress, future.getCause());
    }
}
