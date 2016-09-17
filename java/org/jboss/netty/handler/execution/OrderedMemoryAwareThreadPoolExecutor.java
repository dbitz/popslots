package org.jboss.netty.handler.execution;

import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap;

public class OrderedMemoryAwareThreadPoolExecutor extends MemoryAwareThreadPoolExecutor {
    private final ConcurrentMap<Object, Executor> childExecutors = newChildExecutorMap();

    private final class ChildExecutor implements Runnable, Executor {
        private final LinkedList<Runnable> tasks = new LinkedList();

        ChildExecutor() {
        }

        public void execute(Runnable command) {
            synchronized (this.tasks) {
                boolean needsExecution = this.tasks.isEmpty();
                this.tasks.add(command);
            }
            if (needsExecution) {
                OrderedMemoryAwareThreadPoolExecutor.this.doUnorderedExecute(this);
            }
        }

        public void run() {
            Runnable task;
            Thread thread = Thread.currentThread();
            while (true) {
                synchronized (this.tasks) {
                    task = (Runnable) this.tasks.getFirst();
                }
                boolean ran = false;
                OrderedMemoryAwareThreadPoolExecutor.this.beforeExecute(thread, task);
                try {
                    task.run();
                    ran = true;
                    OrderedMemoryAwareThreadPoolExecutor.this.onAfterExecute(task, null);
                    synchronized (this.tasks) {
                        this.tasks.removeFirst();
                        if (this.tasks.isEmpty()) {
                            return;
                        }
                    }
                } catch (RuntimeException e) {
                    if (!ran) {
                        OrderedMemoryAwareThreadPoolExecutor.this.onAfterExecute(task, e);
                    }
                    throw e;
                } catch (Throwable th) {
                    synchronized (this.tasks) {
                        this.tasks.removeFirst();
                        if (this.tasks.isEmpty()) {
                            return;
                        }
                    }
                }
            }
        }
    }

    public OrderedMemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize) {
        super(corePoolSize, maxChannelMemorySize, maxTotalMemorySize);
    }

    public OrderedMemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize, long keepAliveTime, TimeUnit unit) {
        super(corePoolSize, maxChannelMemorySize, maxTotalMemorySize, keepAliveTime, unit);
    }

    public OrderedMemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize, long keepAliveTime, TimeUnit unit, ThreadFactory threadFactory) {
        super(corePoolSize, maxChannelMemorySize, maxTotalMemorySize, keepAliveTime, unit, threadFactory);
    }

    public OrderedMemoryAwareThreadPoolExecutor(int corePoolSize, long maxChannelMemorySize, long maxTotalMemorySize, long keepAliveTime, TimeUnit unit, ObjectSizeEstimator objectSizeEstimator, ThreadFactory threadFactory) {
        super(corePoolSize, maxChannelMemorySize, maxTotalMemorySize, keepAliveTime, unit, objectSizeEstimator, threadFactory);
    }

    protected ConcurrentMap<Object, Executor> newChildExecutorMap() {
        return new ConcurrentIdentityWeakKeyHashMap();
    }

    protected Object getChildExecutorKey(ChannelEvent e) {
        return e.getChannel();
    }

    protected Set<Object> getChildExecutorKeySet() {
        return this.childExecutors.keySet();
    }

    protected boolean removeChildExecutor(Object key) {
        return this.childExecutors.remove(key) != null;
    }

    protected void doExecute(Runnable task) {
        if (task instanceof ChannelEventRunnable) {
            getChildExecutor(((ChannelEventRunnable) task).getEvent()).execute(task);
        } else {
            doUnorderedExecute(task);
        }
    }

    private Executor getChildExecutor(ChannelEvent e) {
        Object key = getChildExecutorKey(e);
        Executor executor = (Executor) this.childExecutors.get(key);
        if (executor == null) {
            executor = new ChildExecutor();
            Executor oldExecutor = (Executor) this.childExecutors.putIfAbsent(key, executor);
            if (oldExecutor != null) {
                executor = oldExecutor;
            }
        }
        if (e instanceof ChannelStateEvent) {
            Channel channel = e.getChannel();
            if (((ChannelStateEvent) e).getState() == ChannelState.OPEN && !channel.isOpen()) {
                this.childExecutors.remove(channel);
            }
        }
        return executor;
    }

    protected boolean shouldCount(Runnable task) {
        if (task instanceof ChildExecutor) {
            return false;
        }
        return super.shouldCount(task);
    }

    void onAfterExecute(Runnable r, Throwable t) {
        afterExecute(r, t);
    }
}
