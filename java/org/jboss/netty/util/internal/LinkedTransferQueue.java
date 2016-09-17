package org.jboss.netty.util.internal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

public class LinkedTransferQueue<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = (!LinkedTransferQueue.class.desiredAssertionStatus() ? true : MP);
    private static final int ASYNC = 1;
    private static final int CHAINED_SPINS = 64;
    private static final int FRONT_SPINS = 128;
    private static final boolean MP;
    private static final int NOW = 0;
    static final int SWEEP_THRESHOLD = 32;
    private static final int SYNC = 2;
    private static final int TIMED = 3;
    private static final AtomicReferenceFieldUpdater<LinkedTransferQueue, Node> headUpdater = AtomicFieldUpdaterUtil.newRefUpdater(LinkedTransferQueue.class, Node.class, "head");
    private static final long serialVersionUID = -3223113410248163686L;
    private static final AtomicIntegerFieldUpdater<LinkedTransferQueue> sweepVotesUpdater = AtomicFieldUpdaterUtil.newIntUpdater(LinkedTransferQueue.class, "sweepVotes");
    private static final AtomicReferenceFieldUpdater<LinkedTransferQueue, Node> tailUpdater = AtomicFieldUpdaterUtil.newRefUpdater(LinkedTransferQueue.class, Node.class, "tail");
    volatile transient Node head;
    volatile transient int sweepVotes;
    volatile transient Node tail;

    final class Itr implements Iterator<E> {
        private Node lastPred;
        private Node lastRet;
        private E nextItem;
        private Node nextNode;

        private void advance(Node prev) {
            this.lastPred = this.lastRet;
            this.lastRet = prev;
            Node p = prev == null ? LinkedTransferQueue.this.head : LinkedTransferQueue.this.succ(prev);
            while (p != null) {
                Node item = p.item;
                if (p.isData) {
                    if (!(item == null || item == p)) {
                        this.nextItem = LinkedTransferQueue.cast(item);
                        this.nextNode = p;
                        return;
                    }
                } else if (item == null) {
                    break;
                }
                p = LinkedTransferQueue.this.succ(p);
            }
            this.nextNode = null;
        }

        Itr() {
            advance(null);
        }

        public final boolean hasNext() {
            return this.nextNode != null ? true : LinkedTransferQueue.MP;
        }

        public final E next() {
            Node p = this.nextNode;
            if (p == null) {
                throw new NoSuchElementException();
            }
            E e = this.nextItem;
            advance(p);
            return e;
        }

        public final void remove() {
            Node p = this.lastRet;
            if (p == null) {
                throw new IllegalStateException();
            } else if (p.tryMatchData()) {
                LinkedTransferQueue.this.unsplice(this.lastPred, p);
            }
        }
    }

    static final class Node {
        static final /* synthetic */ boolean $assertionsDisabled;
        private static final AtomicReferenceFieldUpdater<Node, Object> itemUpdater = AtomicFieldUpdaterUtil.newRefUpdater(Node.class, Object.class, "item");
        private static final AtomicReferenceFieldUpdater<Node, Node> nextUpdater = AtomicFieldUpdaterUtil.newRefUpdater(Node.class, Node.class, "next");
        private static final long serialVersionUID = -3375979862319811754L;
        final boolean isData;
        volatile Object item;
        volatile Node next;
        volatile Thread waiter;

        static {
            boolean z;
            if (LinkedTransferQueue.class.desiredAssertionStatus()) {
                z = $assertionsDisabled;
            } else {
                z = true;
            }
            $assertionsDisabled = z;
        }

        final boolean casNext(Node cmp, Node val) {
            if (AtomicFieldUpdaterUtil.isAvailable()) {
                return nextUpdater.compareAndSet(this, cmp, val);
            }
            synchronized (this) {
                if (this.next == cmp) {
                    this.next = val;
                    return true;
                }
                return $assertionsDisabled;
            }
        }

        final boolean casItem(Object cmp, Object val) {
            if (!$assertionsDisabled && cmp != null && cmp.getClass() == Node.class) {
                throw new AssertionError();
            } else if (AtomicFieldUpdaterUtil.isAvailable()) {
                return itemUpdater.compareAndSet(this, cmp, val);
            } else {
                synchronized (this) {
                    if (this.item == cmp) {
                        this.item = val;
                        return true;
                    }
                    return $assertionsDisabled;
                }
            }
        }

        Node(Object item, boolean isData) {
            this.item = item;
            this.isData = isData;
        }

        final void forgetNext() {
            this.next = this;
        }

        final void forgetContents() {
            this.item = this;
            this.waiter = null;
        }

        final boolean isMatched() {
            Node x = this.item;
            if (x != this) {
                if ((x == null ? LinkedTransferQueue.ASYNC : $assertionsDisabled) != this.isData) {
                    return $assertionsDisabled;
                }
            }
            return true;
        }

        final boolean isUnmatchedRequest() {
            return (this.isData || this.item != null) ? $assertionsDisabled : true;
        }

        final boolean cannotPrecede(boolean haveData) {
            boolean d = this.isData;
            if (d != haveData) {
                Node x = this.item;
                if (x != this) {
                    if ((x != null ? true : LinkedTransferQueue.NOW) == d) {
                        return true;
                    }
                }
            }
            return $assertionsDisabled;
        }

        final boolean tryMatchData() {
            if ($assertionsDisabled || this.isData) {
                Node x = this.item;
                if (x == null || x == this || !casItem(x, null)) {
                    return $assertionsDisabled;
                }
                LockSupport.unpark(this.waiter);
                return true;
            }
            throw new AssertionError();
        }
    }

    static {
        boolean z = true;
        if (Runtime.getRuntime().availableProcessors() <= ASYNC) {
            z = MP;
        }
        MP = z;
    }

    private boolean casTail(Node cmp, Node val) {
        if (AtomicFieldUpdaterUtil.isAvailable()) {
            return tailUpdater.compareAndSet(this, cmp, val);
        }
        synchronized (this) {
            if (this.tail == cmp) {
                this.tail = val;
                return true;
            }
            return MP;
        }
    }

    private boolean casHead(Node cmp, Node val) {
        if (AtomicFieldUpdaterUtil.isAvailable()) {
            return headUpdater.compareAndSet(this, cmp, val);
        }
        synchronized (this) {
            if (this.head == cmp) {
                this.head = val;
                return true;
            }
            return MP;
        }
    }

    private boolean casSweepVotes(int cmp, int val) {
        if (AtomicFieldUpdaterUtil.isAvailable()) {
            return sweepVotesUpdater.compareAndSet(this, cmp, val);
        }
        synchronized (this) {
            if (this.sweepVotes == cmp) {
                this.sweepVotes = val;
                return true;
            }
            return MP;
        }
    }

    static <E> E cast(Object item) {
        if ($assertionsDisabled || item == null || item.getClass() != Node.class) {
            return item;
        }
        throw new AssertionError();
    }

    private E xfer(E e, boolean haveData, int how, long nanos) {
        if (haveData && e == null) {
            throw new NullPointerException();
        }
        Node s = null;
        Node pred;
        do {
            Node h = this.head;
            Node p = h;
            while (p != null) {
                Node n;
                boolean isData = p.isData;
                Node item = p.item;
                if (item != p) {
                    if ((item != null ? true : MP) == isData) {
                        if (isData == haveData) {
                            break;
                        } else if (p.casItem(item, e)) {
                            Node q = p;
                            while (q != h) {
                                n = q.next;
                                if (this.head == h) {
                                    if (n == null) {
                                        n = q;
                                    }
                                    if (casHead(h, n)) {
                                        h.forgetNext();
                                        break;
                                    }
                                }
                                h = this.head;
                                if (h == null) {
                                    break;
                                }
                                q = h.next;
                                if (q != null) {
                                    if (!q.isMatched()) {
                                        break;
                                    }
                                }
                                break;
                            }
                            LockSupport.unpark(p.waiter);
                            return cast(item);
                        }
                    }
                }
                n = p.next;
                if (p != n) {
                    p = n;
                } else {
                    h = this.head;
                    p = h;
                }
            }
            if (how == 0) {
                return e;
            }
            if (s == null) {
                s = new Node(e, haveData);
            }
            pred = tryAppend(s, haveData);
        } while (pred == null);
        if (how == ASYNC) {
            return e;
        }
        return awaitMatch(s, pred, e, how == TIMED ? true : MP, nanos);
    }

    private Node tryAppend(Node s, boolean haveData) {
        Node t = this.tail;
        Node p = t;
        while (true) {
            if (p == null) {
                p = this.head;
                if (p == null) {
                    if (casHead(null, s)) {
                        return s;
                    }
                }
            }
            if (!p.cannotPrecede(haveData)) {
                Node n = p.next;
                if (n == null) {
                    if (p.casNext(null, s)) {
                        break;
                    }
                    p = p.next;
                } else {
                    if (p != t) {
                        Node u = this.tail;
                        if (t != u) {
                            t = u;
                            p = u;
                        }
                    }
                    p = p != n ? n : null;
                }
            } else {
                return null;
            }
        }
        if (p != t) {
            do {
                if (this.tail != t || !casTail(t, s)) {
                    t = this.tail;
                    if (t == null) {
                        break;
                    }
                    s = t.next;
                    if (s == null) {
                        break;
                    }
                    s = s.next;
                    if (s == null) {
                        break;
                    }
                } else {
                    break;
                }
            } while (s != t);
        }
        return p;
    }

    private E awaitMatch(Node s, Node pred, E e, boolean timed, long nanos) {
        long lastTime = timed ? System.nanoTime() : 0;
        Thread w = Thread.currentThread();
        int spins = -1;
        ThreadLocalRandom randomYields = null;
        while (true) {
            E item = s.item;
            if (item != e) {
                break;
            } else if ((w.isInterrupted() || (timed && nanos <= 0)) && s.casItem(e, s)) {
                unsplice(pred, s);
                return e;
            } else if (spins < 0) {
                spins = spinsFor(pred, s.isData);
                if (spins > 0) {
                    randomYields = ThreadLocalRandom.current();
                }
            } else if (spins > 0) {
                spins--;
                if (randomYields.nextInt(CHAINED_SPINS) == 0) {
                    Thread.yield();
                }
            } else if (s.waiter == null) {
                s.waiter = w;
            } else if (timed) {
                long now = System.nanoTime();
                nanos -= now - lastTime;
                if (nanos > 0) {
                    LockSupport.parkNanos(nanos);
                }
                lastTime = now;
            } else {
                LockSupport.park();
            }
        }
        if ($assertionsDisabled || item != s) {
            s.forgetContents();
            return cast(item);
        }
        throw new AssertionError();
    }

    private static int spinsFor(Node pred, boolean haveData) {
        if (MP && pred != null) {
            if (pred.isData != haveData) {
                return 192;
            }
            if (pred.isMatched()) {
                return FRONT_SPINS;
            }
            if (pred.waiter == null) {
                return CHAINED_SPINS;
            }
        }
        return NOW;
    }

    final Node succ(Node p) {
        Node next = p.next;
        return p == next ? this.head : next;
    }

    private Node firstOfMode(boolean isData) {
        Node p = this.head;
        while (p != null) {
            if (!p.isMatched()) {
                return p.isData == isData ? p : null;
            } else {
                p = succ(p);
            }
        }
        return null;
    }

    private E firstDataItem() {
        Node p = this.head;
        while (p != null) {
            Node item = p.item;
            if (p.isData) {
                if (!(item == null || item == p)) {
                    return cast(item);
                }
            } else if (item == null) {
                return null;
            }
            p = succ(p);
        }
        return null;
    }

    private int countOfMode(boolean data) {
        int count = NOW;
        Node p = this.head;
        while (p != null) {
            if (!p.isMatched()) {
                if (p.isData == data) {
                    count += ASYNC;
                    if (count == Integer.MAX_VALUE) {
                        break;
                    }
                }
                return NOW;
            }
            Node n = p.next;
            if (n != p) {
                p = n;
            } else {
                count = NOW;
                p = this.head;
            }
        }
        return count;
    }

    final void unsplice(Node pred, Node s) {
        s.forgetContents();
        if (pred != null && pred != s && pred.next == s) {
            Node n = s.next;
            if (n == null || (n != s && pred.casNext(s, n) && pred.isMatched())) {
                while (true) {
                    Node h = this.head;
                    if (h != pred && h != s && h != null) {
                        if (!h.isMatched()) {
                            break;
                        }
                        Node hn = h.next;
                        if (hn == null) {
                            return;
                        }
                        if (hn != h && casHead(h, hn)) {
                            h.forgetNext();
                        }
                    } else {
                        return;
                    }
                }
                if (pred.next != pred && s.next != s) {
                    while (true) {
                        int v = this.sweepVotes;
                        if (v < SWEEP_THRESHOLD) {
                            if (casSweepVotes(v, v + ASYNC)) {
                                return;
                            }
                        } else if (casSweepVotes(v, NOW)) {
                            sweep();
                            return;
                        }
                    }
                }
            }
        }
    }

    private void sweep() {
        Node p = this.head;
        while (p != null) {
            Node s = p.next;
            if (s == null) {
                return;
            }
            if (p == s) {
                p = this.head;
            } else if (s.isMatched()) {
                Node n = s.next;
                if (n != null) {
                    p.casNext(s, n);
                } else {
                    return;
                }
            } else {
                p = s;
            }
        }
    }

    private boolean findAndRemove(Object e) {
        if (e != null) {
            Node pred = null;
            Node p = this.head;
            while (p != null) {
                Node item = p.item;
                if (!p.isData) {
                    if (item == null) {
                        break;
                    }
                } else if (item != null && item != p && e.equals(item) && p.tryMatchData()) {
                    unsplice(pred, p);
                    return true;
                }
                pred = p;
                p = p.next;
                if (p == pred) {
                    pred = null;
                    p = this.head;
                }
            }
        }
        return MP;
    }

    public LinkedTransferQueue(Collection<? extends E> c) {
        this();
        addAll(c);
    }

    public void put(E e) {
        xfer(e, true, ASYNC, 0);
    }

    public boolean offer(E e, long timeout, TimeUnit unit) {
        xfer(e, true, ASYNC, 0);
        return true;
    }

    public boolean offer(E e) {
        xfer(e, true, ASYNC, 0);
        return true;
    }

    public boolean add(E e) {
        xfer(e, true, ASYNC, 0);
        return true;
    }

    public boolean tryTransfer(E e) {
        return xfer(e, true, NOW, 0) == null ? true : MP;
    }

    public void transfer(E e) throws InterruptedException {
        if (xfer(e, true, SYNC, 0) != null) {
            Thread.interrupted();
            throw new InterruptedException();
        }
    }

    public boolean tryTransfer(E e, long timeout, TimeUnit unit) throws InterruptedException {
        if (xfer(e, true, TIMED, unit.toNanos(timeout)) == null) {
            return true;
        }
        if (!Thread.interrupted()) {
            return MP;
        }
        throw new InterruptedException();
    }

    public E take() throws InterruptedException {
        E e = xfer(null, MP, SYNC, 0);
        if (e != null) {
            return e;
        }
        Thread.interrupted();
        throw new InterruptedException();
    }

    public E poll(long timeout, TimeUnit unit) throws InterruptedException {
        E e = xfer(null, MP, TIMED, unit.toNanos(timeout));
        if (e != null || !Thread.interrupted()) {
            return e;
        }
        throw new InterruptedException();
    }

    public E poll() {
        return xfer(null, MP, NOW, 0);
    }

    public int drainTo(Collection<? super E> c) {
        if (c == null) {
            throw new NullPointerException();
        } else if (c == this) {
            throw new IllegalArgumentException();
        } else {
            int n = NOW;
            while (true) {
                E e = poll();
                if (e == null) {
                    return n;
                }
                c.add(e);
                n += ASYNC;
            }
        }
    }

    public int drainTo(Collection<? super E> c, int maxElements) {
        if (c == null) {
            throw new NullPointerException();
        } else if (c == this) {
            throw new IllegalArgumentException();
        } else {
            int n = NOW;
            while (n < maxElements) {
                E e = poll();
                if (e == null) {
                    break;
                }
                c.add(e);
                n += ASYNC;
            }
            return n;
        }
    }

    public Iterator<E> iterator() {
        return new Itr();
    }

    public E peek() {
        return firstDataItem();
    }

    public boolean isEmpty() {
        Node p = this.head;
        while (p != null) {
            if (p.isMatched()) {
                p = succ(p);
            } else if (p.isData) {
                return MP;
            } else {
                return true;
            }
        }
        return true;
    }

    public boolean hasWaitingConsumer() {
        return firstOfMode(MP) != null ? true : MP;
    }

    public int size() {
        return countOfMode(true);
    }

    public int getWaitingConsumerCount() {
        return countOfMode(MP);
    }

    public boolean remove(Object o) {
        return findAndRemove(o);
    }

    public int remainingCapacity() {
        return Integer.MAX_VALUE;
    }

    private void writeObject(ObjectOutputStream s) throws IOException {
        s.defaultWriteObject();
        Iterator i$ = iterator();
        while (i$.hasNext()) {
            s.writeObject(i$.next());
        }
        s.writeObject(null);
    }

    private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        while (true) {
            E item = s.readObject();
            if (item != null) {
                offer(item);
            } else {
                return;
            }
        }
    }
}
