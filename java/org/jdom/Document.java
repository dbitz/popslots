package org.jdom;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.jdom.filter.Filter;

public class Document implements Parent {
    private static final String CVS_ID = "@(#) $RCSfile: Document.java,v $ $Revision: 1.85 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";
    protected String baseURI;
    ContentList content;
    private HashMap propertyMap;

    public Document() {
        this.content = new ContentList(this);
        this.baseURI = null;
        this.propertyMap = null;
    }

    public Document(Element rootElement, DocType docType, String baseURI) {
        this.content = new ContentList(this);
        this.baseURI = null;
        this.propertyMap = null;
        if (rootElement != null) {
            setRootElement(rootElement);
        }
        if (docType != null) {
            setDocType(docType);
        }
        if (baseURI != null) {
            setBaseURI(baseURI);
        }
    }

    public Document(Element rootElement, DocType docType) {
        this(rootElement, docType, null);
    }

    public Document(Element rootElement) {
        this(rootElement, null, null);
    }

    public Document(List content) {
        this.content = new ContentList(this);
        this.baseURI = null;
        this.propertyMap = null;
        setContent((Collection) content);
    }

    public int getContentSize() {
        return this.content.size();
    }

    public int indexOf(Content child) {
        return this.content.indexOf(child);
    }

    public boolean hasRootElement() {
        return this.content.indexOfFirstElement() >= 0;
    }

    public Element getRootElement() {
        int index = this.content.indexOfFirstElement();
        if (index >= 0) {
            return (Element) this.content.get(index);
        }
        throw new IllegalStateException("Root element not set");
    }

    public Document setRootElement(Element rootElement) {
        int index = this.content.indexOfFirstElement();
        if (index < 0) {
            this.content.add(rootElement);
        } else {
            this.content.set(index, rootElement);
        }
        return this;
    }

    public Element detachRootElement() {
        int index = this.content.indexOfFirstElement();
        if (index < 0) {
            return null;
        }
        return (Element) removeContent(index);
    }

    public DocType getDocType() {
        int index = this.content.indexOfDocType();
        if (index < 0) {
            return null;
        }
        return (DocType) this.content.get(index);
    }

    public Document setDocType(DocType docType) {
        int docTypeIndex;
        if (docType == null) {
            docTypeIndex = this.content.indexOfDocType();
            if (docTypeIndex >= 0) {
                this.content.remove(docTypeIndex);
            }
        } else if (docType.getParent() != null) {
            throw new IllegalAddException(docType, "The DocType already is attached to a document");
        } else {
            docTypeIndex = this.content.indexOfDocType();
            if (docTypeIndex < 0) {
                this.content.add(0, (Content) docType);
            } else {
                this.content.set(docTypeIndex, docType);
            }
        }
        return this;
    }

    public Document addContent(Content child) {
        this.content.add(child);
        return this;
    }

    public Document addContent(Collection c) {
        this.content.addAll(c);
        return this;
    }

    public Document addContent(int index, Content child) {
        this.content.add(index, child);
        return this;
    }

    public Document addContent(int index, Collection c) {
        this.content.addAll(index, c);
        return this;
    }

    public List cloneContent() {
        int size = getContentSize();
        List list = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            list.add(getContent(i).clone());
        }
        return list;
    }

    public Content getContent(int index) {
        return (Content) this.content.get(index);
    }

    public List getContent() {
        if (hasRootElement()) {
            return this.content;
        }
        throw new IllegalStateException("Root element not set");
    }

    public List getContent(Filter filter) {
        if (hasRootElement()) {
            return this.content.getView(filter);
        }
        throw new IllegalStateException("Root element not set");
    }

    public List removeContent() {
        List old = new ArrayList(this.content);
        this.content.clear();
        return old;
    }

    public List removeContent(Filter filter) {
        List old = new ArrayList();
        Iterator itr = this.content.getView(filter).iterator();
        while (itr.hasNext()) {
            old.add((Content) itr.next());
            itr.remove();
        }
        return old;
    }

    public Document setContent(Collection newContent) {
        this.content.clearAndSet(newContent);
        return this;
    }

    public final void setBaseURI(String uri) {
        this.baseURI = uri;
    }

    public final String getBaseURI() {
        return this.baseURI;
    }

    public Document setContent(int index, Content child) {
        this.content.set(index, child);
        return this;
    }

    public Document setContent(int index, Collection collection) {
        this.content.remove(index);
        this.content.addAll(index, collection);
        return this;
    }

    public boolean removeContent(Content child) {
        return this.content.remove(child);
    }

    public Content removeContent(int index) {
        return (Content) this.content.remove(index);
    }

    public Document setContent(Content child) {
        this.content.clear();
        this.content.add(child);
        return this;
    }

    public String toString() {
        StringBuffer stringForm = new StringBuffer().append("[Document: ");
        DocType docType = getDocType();
        if (docType != null) {
            stringForm.append(docType.toString()).append(", ");
        } else {
            stringForm.append(" No DOCTYPE declaration, ");
        }
        Element rootElement = getRootElement();
        if (rootElement != null) {
            stringForm.append("Root is ").append(rootElement.toString());
        } else {
            stringForm.append(" No root element");
        }
        stringForm.append("]");
        return stringForm.toString();
    }

    public final boolean equals(Object ob) {
        return ob == this;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public Object clone() {
        Document doc = null;
        try {
            doc = (Document) super.clone();
        } catch (CloneNotSupportedException e) {
        }
        doc.content = new ContentList(doc);
        for (int i = 0; i < this.content.size(); i++) {
            Object obj = this.content.get(i);
            if (obj instanceof Element) {
                doc.content.add((Element) ((Element) obj).clone());
            } else if (obj instanceof Comment) {
                doc.content.add((Comment) ((Comment) obj).clone());
            } else if (obj instanceof ProcessingInstruction) {
                doc.content.add((ProcessingInstruction) ((ProcessingInstruction) obj).clone());
            } else if (obj instanceof DocType) {
                doc.content.add((DocType) ((DocType) obj).clone());
            }
        }
        return doc;
    }

    public Iterator getDescendants() {
        return new DescendantIterator(this);
    }

    public Iterator getDescendants(Filter filter) {
        return new FilterIterator(new DescendantIterator(this), filter);
    }

    public Parent getParent() {
        return null;
    }

    public Document getDocument() {
        return this;
    }

    public void setProperty(String id, Object value) {
        if (this.propertyMap == null) {
            this.propertyMap = new HashMap();
        }
        this.propertyMap.put(id, value);
    }

    public Object getProperty(String id) {
        if (this.propertyMap == null) {
            return null;
        }
        return this.propertyMap.get(id);
    }
}
