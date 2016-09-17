package org.jdom;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.jdom.filter.Filter;

final class ContentList extends AbstractList implements Serializable {
    private static final String CVS_ID = "@(#) $RCSfile: ContentList.java,v $ $Revision: 1.42 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";
    private static final int INITIAL_ARRAY_SIZE = 5;
    private static final long serialVersionUID = 1;
    private Content[] elementData;
    private Parent parent;
    private int size;

    class FilterList extends AbstractList implements Serializable {
        int count = 0;
        int expected = -1;
        Filter filter;
        private final ContentList this$0;

        FilterList(ContentList contentList, Filter filter) {
            this.this$0 = contentList;
            this.filter = filter;
        }

        public void add(int index, Object obj) {
            if (this.filter.matches(obj)) {
                this.this$0.add(getAdjustedIndex(index), obj);
                this.expected++;
                this.count++;
                return;
            }
            throw new IllegalAddException(new StringBuffer().append("Filter won't allow the ").append(obj.getClass().getName()).append(" '").append(obj).append("' to be added to the list").toString());
        }

        public Object get(int index) {
            return this.this$0.get(getAdjustedIndex(index));
        }

        public Iterator iterator() {
            return new FilterListIterator(this.this$0, this.filter, 0);
        }

        public ListIterator listIterator() {
            return new FilterListIterator(this.this$0, this.filter, 0);
        }

        public ListIterator listIterator(int index) {
            return new FilterListIterator(this.this$0, this.filter, index);
        }

        public Object remove(int index) {
            int adjusted = getAdjustedIndex(index);
            Object old = this.this$0.get(adjusted);
            if (this.filter.matches(old)) {
                old = this.this$0.remove(adjusted);
                this.expected++;
                this.count--;
                return old;
            }
            throw new IllegalAddException(new StringBuffer().append("Filter won't allow the ").append(old.getClass().getName()).append(" '").append(old).append("' (index ").append(index).append(") to be removed").toString());
        }

        public Object set(int index, Object obj) {
            if (this.filter.matches(obj)) {
                int adjusted = getAdjustedIndex(index);
                Object old = this.this$0.get(adjusted);
                if (this.filter.matches(old)) {
                    old = this.this$0.set(adjusted, obj);
                    this.expected += 2;
                    return old;
                }
                throw new IllegalAddException(new StringBuffer().append("Filter won't allow the ").append(old.getClass().getName()).append(" '").append(old).append("' (index ").append(index).append(") to be removed").toString());
            }
            throw new IllegalAddException(new StringBuffer().append("Filter won't allow index ").append(index).append(" to be set to ").append(obj.getClass().getName()).toString());
        }

        public int size() {
            if (this.expected == ContentList.access$000(this.this$0)) {
                return this.count;
            }
            this.count = 0;
            for (int i = 0; i < this.this$0.size(); i++) {
                if (this.filter.matches(ContentList.access$100(this.this$0)[i])) {
                    this.count++;
                }
            }
            this.expected = ContentList.access$000(this.this$0);
            return this.count;
        }

        private final int getAdjustedIndex(int index) {
            int adjusted = 0;
            for (int i = 0; i < ContentList.access$200(this.this$0); i++) {
                if (this.filter.matches(ContentList.access$100(this.this$0)[i])) {
                    if (index == adjusted) {
                        return i;
                    }
                    adjusted++;
                }
            }
            if (index == adjusted) {
                return ContentList.access$200(this.this$0);
            }
            return ContentList.access$200(this.this$0) + 1;
        }
    }

    class FilterListIterator implements ListIterator {
        private boolean canremove = false;
        private boolean canset = false;
        private int cursor = -1;
        private int expected = -1;
        Filter filter;
        private boolean forward = false;
        private int fsize = 0;
        private int index = -1;
        private final ContentList this$0;
        private int tmpcursor = -1;

        FilterListIterator(ContentList contentList, Filter filter, int start) {
            this.this$0 = contentList;
            this.filter = filter;
            this.expected = ContentList.access$000(contentList);
            this.forward = false;
            if (start < 0) {
                throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(start).toString());
            }
            this.fsize = 0;
            for (int i = 0; i < contentList.size(); i++) {
                if (filter.matches(contentList.get(i))) {
                    if (start == this.fsize) {
                        this.cursor = i;
                        this.index = this.fsize;
                    }
                    this.fsize++;
                }
            }
            if (start > this.fsize) {
                throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(start).append(" Size: ").append(this.fsize).toString());
            } else if (this.cursor == -1) {
                this.cursor = contentList.size();
                this.index = this.fsize;
            }
        }

        public boolean hasNext() {
            return nextIndex() < this.fsize;
        }

        public Object next() {
            if (hasNext()) {
                this.index = nextIndex();
                this.cursor = this.tmpcursor;
                this.forward = true;
                this.canremove = true;
                this.canset = true;
                return this.this$0.get(this.cursor);
            }
            throw new NoSuchElementException("next() is beyond the end of the Iterator");
        }

        public boolean hasPrevious() {
            return previousIndex() >= 0;
        }

        public Object previous() {
            if (hasPrevious()) {
                this.index = previousIndex();
                this.cursor = this.tmpcursor;
                this.forward = false;
                this.canremove = true;
                this.canset = true;
                return this.this$0.get(this.cursor);
            }
            throw new NoSuchElementException("previous() is before the start of the Iterator");
        }

        public int nextIndex() {
            checkConcurrentModification();
            if (this.forward) {
                for (int i = this.cursor + 1; i < this.this$0.size(); i++) {
                    if (this.filter.matches(this.this$0.get(i))) {
                        this.tmpcursor = i;
                        return this.index + 1;
                    }
                }
                this.tmpcursor = this.this$0.size();
                return this.index + 1;
            }
            this.tmpcursor = this.cursor;
            return this.index;
        }

        public int previousIndex() {
            checkConcurrentModification();
            if (this.forward) {
                this.tmpcursor = this.cursor;
                return this.index;
            }
            for (int i = this.cursor - 1; i >= 0; i--) {
                if (this.filter.matches(this.this$0.get(i))) {
                    this.tmpcursor = i;
                    return this.index - 1;
                }
            }
            this.tmpcursor = -1;
            return this.index - 1;
        }

        public void add(Object obj) {
            nextIndex();
            this.this$0.add(this.tmpcursor, obj);
            this.forward = true;
            this.expected = ContentList.access$000(this.this$0);
            this.canset = false;
            this.canremove = false;
            this.index = nextIndex();
            this.cursor = this.tmpcursor;
            this.fsize++;
        }

        public void remove() {
            if (this.canremove) {
                nextIndex();
                this.this$0.remove(this.cursor);
                this.cursor = this.tmpcursor - 1;
                this.expected = ContentList.access$000(this.this$0);
                this.forward = false;
                this.canremove = false;
                this.canset = false;
                this.fsize--;
                return;
            }
            throw new IllegalStateException("Can not remove an element unless either next() or previous() has been called since the last remove()");
        }

        public void set(Object obj) {
            if (this.canset) {
                checkConcurrentModification();
                if (this.filter.matches(obj)) {
                    this.this$0.set(this.cursor, obj);
                    this.expected = ContentList.access$000(this.this$0);
                    return;
                }
                throw new IllegalAddException(new StringBuffer().append("Filter won't allow index ").append(this.index).append(" to be set to ").append(obj.getClass().getName()).toString());
            }
            throw new IllegalStateException("Can not set an element unless either next() or previous() has been called since the last remove() or set()");
        }

        private void checkConcurrentModification() {
            if (this.expected != ContentList.access$000(this.this$0)) {
                throw new ConcurrentModificationException();
            }
        }
    }

    static int access$000(ContentList x0) {
        return x0.getModCount();
    }

    static Content[] access$100(ContentList x0) {
        return x0.elementData;
    }

    static int access$200(ContentList x0) {
        return x0.size;
    }

    ContentList(Parent parent) {
        this.parent = parent;
    }

    final void uncheckedAddContent(Content c) {
        c.parent = this.parent;
        ensureCapacity(this.size + 1);
        Content[] contentArr = this.elementData;
        int i = this.size;
        this.size = i + 1;
        contentArr[i] = c;
        this.modCount++;
    }

    public void add(int index, Object obj) {
        if (obj == null) {
            throw new IllegalAddException("Cannot add null object");
        }
        if (obj instanceof String) {
            obj = new Text(obj.toString());
        }
        if (obj instanceof Content) {
            add(index, (Content) obj);
            return;
        }
        throw new IllegalAddException(new StringBuffer().append("Class ").append(obj.getClass().getName()).append(" is of unrecognized type and cannot be added").toString());
    }

    private void documentCanContain(int index, Content child) throws IllegalAddException {
        if (child instanceof Element) {
            if (indexOfFirstElement() >= 0) {
                throw new IllegalAddException("Cannot add a second root element, only one is allowed");
            } else if (indexOfDocType() > index) {
                throw new IllegalAddException("A root element cannot be added before the DocType");
            }
        }
        if (child instanceof DocType) {
            if (indexOfDocType() >= 0) {
                throw new IllegalAddException("Cannot add a second doctype, only one is allowed");
            }
            int firstElt = indexOfFirstElement();
            if (firstElt != -1 && firstElt < index) {
                throw new IllegalAddException("A DocType cannot be added after the root element");
            }
        }
        if (child instanceof CDATA) {
            throw new IllegalAddException("A CDATA is not allowed at the document root");
        } else if (child instanceof Text) {
            throw new IllegalAddException("A Text is not allowed at the document root");
        } else if (child instanceof EntityRef) {
            throw new IllegalAddException("An EntityRef is not allowed at the document root");
        }
    }

    private static void elementCanContain(int index, Content child) throws IllegalAddException {
        if (child instanceof DocType) {
            throw new IllegalAddException("A DocType is not allowed except at the document level");
        }
    }

    void add(int index, Content child) {
        if (child == null) {
            throw new IllegalAddException("Cannot add null object");
        }
        if (this.parent instanceof Document) {
            documentCanContain(index, child);
        } else {
            elementCanContain(index, child);
        }
        if (child.getParent() != null) {
            Parent p = child.getParent();
            if (p instanceof Document) {
                throw new IllegalAddException((Element) child, "The Content already has an existing parent document");
            }
            throw new IllegalAddException(new StringBuffer().append("The Content already has an existing parent \"").append(((Element) p).getQualifiedName()).append("\"").toString());
        } else if (child == this.parent) {
            throw new IllegalAddException("The Element cannot be added to itself");
        } else if ((this.parent instanceof Element) && (child instanceof Element) && ((Element) child).isAncestor((Element) this.parent)) {
            throw new IllegalAddException("The Element cannot be added as a descendent of itself");
        } else if (index < 0 || index > this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
        } else {
            child.setParent(this.parent);
            ensureCapacity(this.size + 1);
            if (index == this.size) {
                Content[] contentArr = this.elementData;
                int i = this.size;
                this.size = i + 1;
                contentArr[i] = child;
            } else {
                System.arraycopy(this.elementData, index, this.elementData, index + 1, this.size - index);
                this.elementData[index] = child;
                this.size++;
            }
            this.modCount++;
        }
    }

    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    public boolean addAll(int index, Collection collection) {
        Iterator i;
        if (index < 0 || index > this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
        } else if (collection == null || collection.size() == 0) {
            return false;
        } else {
            ensureCapacity(size() + collection.size());
            int count = 0;
            try {
                for (Object obj : collection) {
                    add(index + count, obj);
                    count++;
                }
                return true;
            } catch (RuntimeException exception) {
                for (i = null; i < null; i++) {
                    remove(index);
                }
                throw exception;
            }
        }
    }

    public void clear() {
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                removeParent(this.elementData[i]);
            }
            this.elementData = null;
            this.size = 0;
        }
        this.modCount++;
    }

    void clearAndSet(Collection collection) {
        Content[] old = this.elementData;
        int oldSize = this.size;
        this.elementData = null;
        this.size = 0;
        if (!(collection == null || collection.size() == 0)) {
            ensureCapacity(collection.size());
            try {
                addAll(0, collection);
            } catch (RuntimeException exception) {
                this.elementData = old;
                this.size = oldSize;
                throw exception;
            }
        }
        if (old != null) {
            for (int i = 0; i < oldSize; i++) {
                removeParent(old[i]);
            }
        }
        this.modCount++;
    }

    void ensureCapacity(int minCapacity) {
        if (this.elementData == null) {
            this.elementData = new Content[Math.max(minCapacity, INITIAL_ARRAY_SIZE)];
            return;
        }
        int oldCapacity = this.elementData.length;
        if (minCapacity > oldCapacity) {
            Object[] oldData = this.elementData;
            int newCapacity = ((oldCapacity * 3) / 2) + 1;
            if (newCapacity < minCapacity) {
                newCapacity = minCapacity;
            }
            this.elementData = new Content[newCapacity];
            System.arraycopy(oldData, 0, this.elementData, 0, this.size);
        }
    }

    public Object get(int index) {
        if (index >= 0 && index < this.size) {
            return this.elementData[index];
        }
        throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
    }

    List getView(Filter filter) {
        return new FilterList(this, filter);
    }

    int indexOfFirstElement() {
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                if (this.elementData[i] instanceof Element) {
                    return i;
                }
            }
        }
        return -1;
    }

    int indexOfDocType() {
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                if (this.elementData[i] instanceof DocType) {
                    return i;
                }
            }
        }
        return -1;
    }

    public Object remove(int index) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        Content old = this.elementData[index];
        removeParent(old);
        int numMoved = (this.size - index) - 1;
        if (numMoved > 0) {
            System.arraycopy(this.elementData, index + 1, this.elementData, index, numMoved);
        }
        Content[] contentArr = this.elementData;
        int i = this.size - 1;
        this.size = i;
        contentArr[i] = null;
        this.modCount++;
        return old;
    }

    private static void removeParent(Content c) {
        c.setParent(null);
    }

    public Object set(int index, Object obj) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        if ((obj instanceof Element) && (this.parent instanceof Document)) {
            int root = indexOfFirstElement();
            if (root >= 0 && root != index) {
                throw new IllegalAddException("Cannot add a second root element, only one is allowed");
            }
        }
        if ((obj instanceof DocType) && (this.parent instanceof Document)) {
            int docTypeIndex = indexOfDocType();
            if (docTypeIndex >= 0 && docTypeIndex != index) {
                throw new IllegalAddException("Cannot add a second doctype, only one is allowed");
            }
        }
        Object old = remove(index);
        try {
            add(index, obj);
            return old;
        } catch (RuntimeException exception) {
            add(index, old);
            throw exception;
        }
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        return super.toString();
    }

    private int getModCount() {
        return this.modCount;
    }
}
