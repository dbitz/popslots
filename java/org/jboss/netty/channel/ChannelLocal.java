package org.jboss.netty.channel;

import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap;

public class ChannelLocal<T> {
    private final ConcurrentMap<Channel, T> map = new ConcurrentIdentityWeakKeyHashMap();

    protected T initialValue(Channel channel) {
        return null;
    }

    public T get(Channel channel) {
        if (channel == null) {
            throw new NullPointerException("channel");
        }
        T value = this.map.get(channel);
        if (value != null) {
            return value;
        }
        value = initialValue(channel);
        if (value == null) {
            return value;
        }
        T oldValue = setIfAbsent(channel, value);
        if (oldValue != null) {
            return oldValue;
        }
        return value;
    }

    public T set(Channel channel, T value) {
        if (value == null) {
            return remove(channel);
        }
        if (channel != null) {
            return this.map.put(channel, value);
        }
        throw new NullPointerException("channel");
    }

    public T setIfAbsent(Channel channel, T value) {
        if (value == null) {
            return get(channel);
        }
        if (channel != null) {
            return this.map.putIfAbsent(channel, value);
        }
        throw new NullPointerException("channel");
    }

    public T remove(Channel channel) {
        if (channel != null) {
            return this.map.remove(channel);
        }
        throw new NullPointerException("channel");
    }
}
