package org.jboss.netty.channel.group;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class CombinedIterator<E> implements Iterator<E> {
    private Iterator<E> currentIterator;
    private final Iterator<E> i1;
    private final Iterator<E> i2;

    CombinedIterator(Iterator<E> i1, Iterator<E> i2) {
        if (i1 == null) {
            throw new NullPointerException("i1");
        } else if (i2 == null) {
            throw new NullPointerException("i2");
        } else {
            this.i1 = i1;
            this.i2 = i2;
            this.currentIterator = i1;
        }
    }

    public boolean hasNext() {
        if (this.currentIterator.hasNext()) {
            return true;
        }
        if (this.currentIterator != this.i1) {
            return false;
        }
        this.currentIterator = this.i2;
        return hasNext();
    }

    public E next() {
        try {
            return this.currentIterator.next();
        } catch (NoSuchElementException e) {
            if (this.currentIterator == this.i1) {
                this.currentIterator = this.i2;
                return next();
            }
            throw e;
        }
    }

    public void remove() {
        this.currentIterator.remove();
    }
}
