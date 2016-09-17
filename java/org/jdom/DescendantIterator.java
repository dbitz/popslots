package org.jdom;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

class DescendantIterator implements Iterator {
    private static final String CVS_ID = "@(#) $RCSfile: DescendantIterator.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";
    private Iterator iterator;
    private Iterator nextIterator;
    private List stack = new ArrayList();

    DescendantIterator(Parent parent) {
        if (parent == null) {
            throw new IllegalArgumentException("parent parameter was null");
        }
        this.iterator = parent.getContent().iterator();
    }

    public boolean hasNext() {
        if (this.iterator != null && this.iterator.hasNext()) {
            return true;
        }
        if ((this.nextIterator == null || !this.nextIterator.hasNext()) && !stackHasAnyNext()) {
            return false;
        }
        return true;
    }

    public Object next() {
        if (hasNext()) {
            if (this.nextIterator != null) {
                push(this.iterator);
                this.iterator = this.nextIterator;
                this.nextIterator = null;
            }
            while (!this.iterator.hasNext()) {
                if (this.stack.size() > 0) {
                    this.iterator = pop();
                } else {
                    throw new NoSuchElementException("Somehow we lost our iterator");
                }
            }
            Content child = (Content) this.iterator.next();
            if (child instanceof Element) {
                this.nextIterator = ((Element) child).getContent().iterator();
            }
            return child;
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        this.iterator.remove();
    }

    private Iterator pop() {
        int stackSize = this.stack.size();
        if (stackSize != 0) {
            return (Iterator) this.stack.remove(stackSize - 1);
        }
        throw new NoSuchElementException("empty stack");
    }

    private void push(Iterator itr) {
        this.stack.add(itr);
    }

    private boolean stackHasAnyNext() {
        int size = this.stack.size();
        for (int i = 0; i < size; i++) {
            if (((Iterator) this.stack.get(i)).hasNext()) {
                return true;
            }
        }
        return false;
    }
}
