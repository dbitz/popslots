package org.jdom;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

class AttributeList extends AbstractList implements Serializable, List {
    private static final String CVS_ID = "@(#) $RCSfile: AttributeList.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";
    private static final int INITIAL_ARRAY_SIZE = 5;
    private Attribute[] elementData;
    private Element parent;
    private int size;

    private AttributeList() {
    }

    AttributeList(Element parent) {
        this.parent = parent;
    }

    final void uncheckedAddAttribute(Attribute a) {
        a.parent = this.parent;
        ensureCapacity(this.size + 1);
        Attribute[] attributeArr = this.elementData;
        int i = this.size;
        this.size = i + 1;
        attributeArr[i] = a;
        this.modCount++;
    }

    public boolean add(Object obj) {
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            int duplicate = indexOfDuplicate(attribute);
            if (duplicate < 0) {
                add(size(), attribute);
            } else {
                set(duplicate, attribute);
            }
            return true;
        } else if (obj == null) {
            throw new IllegalAddException("Cannot add null attribute");
        } else {
            throw new IllegalAddException(new StringBuffer().append("Class ").append(obj.getClass().getName()).append(" is not an attribute").toString());
        }
    }

    public void add(int index, Object obj) {
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            if (indexOfDuplicate(attribute) >= 0) {
                throw new IllegalAddException("Cannot add duplicate attribute");
            }
            add(index, attribute);
            this.modCount++;
        } else if (obj == null) {
            throw new IllegalAddException("Cannot add null attribute");
        } else {
            throw new IllegalAddException(new StringBuffer().append("Class ").append(obj.getClass().getName()).append(" is not an attribute").toString());
        }
    }

    void add(int index, Attribute attribute) {
        if (attribute.getParent() != null) {
            throw new IllegalAddException(new StringBuffer().append("The attribute already has an existing parent \"").append(attribute.getParent().getQualifiedName()).append("\"").toString());
        }
        String reason = Verifier.checkNamespaceCollision(attribute, this.parent);
        if (reason != null) {
            throw new IllegalAddException(this.parent, attribute, reason);
        } else if (index < 0 || index > this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
        } else {
            attribute.setParent(this.parent);
            ensureCapacity(this.size + 1);
            if (index == this.size) {
                Attribute[] attributeArr = this.elementData;
                int i = this.size;
                this.size = i + 1;
                attributeArr[i] = attribute;
            } else {
                System.arraycopy(this.elementData, index, this.elementData, index + 1, this.size - index);
                this.elementData[index] = attribute;
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
                this.elementData[i].setParent(null);
            }
            this.elementData = null;
            this.size = 0;
        }
        this.modCount++;
    }

    void clearAndSet(Collection collection) {
        Attribute[] old = this.elementData;
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
                old[i].setParent(null);
            }
        }
        this.modCount++;
    }

    private void ensureCapacity(int minCapacity) {
        if (this.elementData == null) {
            this.elementData = new Attribute[Math.max(minCapacity, INITIAL_ARRAY_SIZE)];
            return;
        }
        int oldCapacity = this.elementData.length;
        if (minCapacity > oldCapacity) {
            Attribute[] oldData = this.elementData;
            int newCapacity = ((oldCapacity * 3) / 2) + 1;
            if (newCapacity < minCapacity) {
                newCapacity = minCapacity;
            }
            this.elementData = new Attribute[newCapacity];
            System.arraycopy(oldData, 0, this.elementData, 0, this.size);
        }
    }

    public Object get(int index) {
        if (index >= 0 && index < this.size) {
            return this.elementData[index];
        }
        throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
    }

    Object get(String name, Namespace namespace) {
        int index = indexOf(name, namespace);
        if (index < 0) {
            return null;
        }
        return this.elementData[index];
    }

    int indexOf(String name, Namespace namespace) {
        String uri = namespace.getURI();
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                Attribute old = this.elementData[i];
                String oldURI = old.getNamespaceURI();
                String oldName = old.getName();
                if (oldURI.equals(uri) && oldName.equals(name)) {
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
        Attribute old = this.elementData[index];
        old.setParent(null);
        int numMoved = (this.size - index) - 1;
        if (numMoved > 0) {
            System.arraycopy(this.elementData, index + 1, this.elementData, index, numMoved);
        }
        Attribute[] attributeArr = this.elementData;
        int i = this.size - 1;
        this.size = i;
        attributeArr[i] = null;
        this.modCount++;
        return old;
    }

    boolean remove(String name, Namespace namespace) {
        int index = indexOf(name, namespace);
        if (index < 0) {
            return false;
        }
        remove(index);
        return true;
    }

    public Object set(int index, Object obj) {
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            int duplicate = indexOfDuplicate(attribute);
            if (duplicate < 0 || duplicate == index) {
                return set(index, attribute);
            }
            throw new IllegalAddException("Cannot set duplicate attribute");
        } else if (obj == null) {
            throw new IllegalAddException("Cannot add null attribute");
        } else {
            throw new IllegalAddException(new StringBuffer().append("Class ").append(obj.getClass().getName()).append(" is not an attribute").toString());
        }
    }

    Object set(int index, Attribute attribute) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index: ").append(index).append(" Size: ").append(size()).toString());
        } else if (attribute.getParent() != null) {
            throw new IllegalAddException(new StringBuffer().append("The attribute already has an existing parent \"").append(attribute.getParent().getQualifiedName()).append("\"").toString());
        } else {
            String reason = Verifier.checkNamespaceCollision(attribute, this.parent);
            if (reason != null) {
                throw new IllegalAddException(this.parent, attribute, reason);
            }
            Attribute old = this.elementData[index];
            old.setParent(null);
            this.elementData[index] = attribute;
            attribute.setParent(this.parent);
            return old;
        }
    }

    private int indexOfDuplicate(Attribute attribute) {
        return indexOf(attribute.getName(), attribute.getNamespace());
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        return super.toString();
    }
}
