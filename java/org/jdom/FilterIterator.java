package org.jdom;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jdom.filter.Filter;

class FilterIterator implements Iterator {
    private static final String CVS_ID = "@(#) $RCSfile: FilterIterator.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    private Filter filter;
    private Iterator iterator;
    private Object nextObject;

    public FilterIterator(Iterator iterator, Filter filter) {
        if (iterator == null || filter == null) {
            throw new IllegalArgumentException("null parameter");
        }
        this.iterator = iterator;
        this.filter = filter;
    }

    public boolean hasNext() {
        if (this.nextObject != null) {
            return true;
        }
        while (this.iterator.hasNext()) {
            Object obj = this.iterator.next();
            if (this.filter.matches(obj)) {
                this.nextObject = obj;
                return true;
            }
        }
        return false;
    }

    public Object next() {
        if (hasNext()) {
            Object obj = this.nextObject;
            this.nextObject = null;
            return obj;
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        this.iterator.remove();
    }
}
