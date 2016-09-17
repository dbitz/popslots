package org.jdom;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jdom.filter.ElementFilter;
import org.jdom.filter.Filter;

public class Element extends Content implements Parent {
    private static final String CVS_ID = "@(#) $RCSfile: Element.java,v $ $Revision: 1.159 $ $Date: 2007/11/14 05:02:08 $ $Name: jdom_1_1 $";
    private static final int INITIAL_ARRAY_SIZE = 5;
    protected transient List additionalNamespaces;
    AttributeList attributes;
    ContentList content;
    protected String name;
    protected transient Namespace namespace;

    protected Element() {
        this.attributes = new AttributeList(this);
        this.content = new ContentList(this);
    }

    public Element(String name, Namespace namespace) {
        this.attributes = new AttributeList(this);
        this.content = new ContentList(this);
        setName(name);
        setNamespace(namespace);
    }

    public Element(String name) {
        this(name, (Namespace) null);
    }

    public Element(String name, String uri) {
        this(name, Namespace.getNamespace("", uri));
    }

    public Element(String name, String prefix, String uri) {
        this(name, Namespace.getNamespace(prefix, uri));
    }

    public String getName() {
        return this.name;
    }

    public Element setName(String name) {
        String reason = Verifier.checkElementName(name);
        if (reason != null) {
            throw new IllegalNameException(name, "element", reason);
        }
        this.name = name;
        return this;
    }

    public Namespace getNamespace() {
        return this.namespace;
    }

    public Element setNamespace(Namespace namespace) {
        if (namespace == null) {
            namespace = Namespace.NO_NAMESPACE;
        }
        this.namespace = namespace;
        return this;
    }

    public String getNamespacePrefix() {
        return this.namespace.getPrefix();
    }

    public String getNamespaceURI() {
        return this.namespace.getURI();
    }

    public Namespace getNamespace(String prefix) {
        if (prefix == null) {
            return null;
        }
        if ("xml".equals(prefix)) {
            return Namespace.XML_NAMESPACE;
        }
        if (prefix.equals(getNamespacePrefix())) {
            return getNamespace();
        }
        if (this.additionalNamespaces != null) {
            for (int i = 0; i < this.additionalNamespaces.size(); i++) {
                Namespace ns = (Namespace) this.additionalNamespaces.get(i);
                if (prefix.equals(ns.getPrefix())) {
                    return ns;
                }
            }
        }
        return this.parent instanceof Element ? ((Element) this.parent).getNamespace(prefix) : null;
    }

    public String getQualifiedName() {
        if ("".equals(this.namespace.getPrefix())) {
            return getName();
        }
        return new StringBuffer(this.namespace.getPrefix()).append(':').append(this.name).toString();
    }

    public void addNamespaceDeclaration(Namespace additionalNamespace) {
        String reason = Verifier.checkNamespaceCollision(additionalNamespace, this);
        if (reason != null) {
            throw new IllegalAddException(this, additionalNamespace, reason);
        }
        if (this.additionalNamespaces == null) {
            this.additionalNamespaces = new ArrayList(INITIAL_ARRAY_SIZE);
        }
        this.additionalNamespaces.add(additionalNamespace);
    }

    public void removeNamespaceDeclaration(Namespace additionalNamespace) {
        if (this.additionalNamespaces != null) {
            this.additionalNamespaces.remove(additionalNamespace);
        }
    }

    public List getAdditionalNamespaces() {
        if (this.additionalNamespaces == null) {
            return Collections.EMPTY_LIST;
        }
        return Collections.unmodifiableList(this.additionalNamespaces);
    }

    public String getValue() {
        StringBuffer buffer = new StringBuffer();
        for (Content child : getContent()) {
            if ((child instanceof Element) || (child instanceof Text)) {
                buffer.append(child.getValue());
            }
        }
        return buffer.toString();
    }

    public boolean isRootElement() {
        return this.parent instanceof Document;
    }

    public int getContentSize() {
        return this.content.size();
    }

    public int indexOf(Content child) {
        return this.content.indexOf(child);
    }

    public String getText() {
        if (this.content.size() == 0) {
            return "";
        }
        Object obj;
        if (this.content.size() == 1) {
            obj = this.content.get(0);
            if (obj instanceof Text) {
                return ((Text) obj).getText();
            }
            return "";
        }
        StringBuffer textContent = new StringBuffer();
        boolean hasText = false;
        for (int i = 0; i < this.content.size(); i++) {
            obj = this.content.get(i);
            if (obj instanceof Text) {
                textContent.append(((Text) obj).getText());
                hasText = true;
            }
        }
        if (hasText) {
            return textContent.toString();
        }
        return "";
    }

    public String getTextTrim() {
        return getText().trim();
    }

    public String getTextNormalize() {
        return Text.normalizeString(getText());
    }

    public String getChildText(String name) {
        Element child = getChild(name);
        if (child == null) {
            return null;
        }
        return child.getText();
    }

    public String getChildTextTrim(String name) {
        Element child = getChild(name);
        if (child == null) {
            return null;
        }
        return child.getTextTrim();
    }

    public String getChildTextNormalize(String name) {
        Element child = getChild(name);
        if (child == null) {
            return null;
        }
        return child.getTextNormalize();
    }

    public String getChildText(String name, Namespace ns) {
        Element child = getChild(name, ns);
        if (child == null) {
            return null;
        }
        return child.getText();
    }

    public String getChildTextTrim(String name, Namespace ns) {
        Element child = getChild(name, ns);
        if (child == null) {
            return null;
        }
        return child.getTextTrim();
    }

    public String getChildTextNormalize(String name, Namespace ns) {
        Element child = getChild(name, ns);
        if (child == null) {
            return null;
        }
        return child.getTextNormalize();
    }

    public Element setText(String text) {
        this.content.clear();
        if (text != null) {
            addContent(new Text(text));
        }
        return this;
    }

    public List getContent() {
        return this.content;
    }

    public List getContent(Filter filter) {
        return this.content.getView(filter);
    }

    public List removeContent() {
        List old = new ArrayList(this.content);
        this.content.clear();
        return old;
    }

    public List removeContent(Filter filter) {
        List old = new ArrayList();
        Iterator iter = this.content.getView(filter).iterator();
        while (iter.hasNext()) {
            old.add((Content) iter.next());
            iter.remove();
        }
        return old;
    }

    public Element setContent(Collection newContent) {
        this.content.clearAndSet(newContent);
        return this;
    }

    public Element setContent(int index, Content child) {
        this.content.set(index, child);
        return this;
    }

    public Parent setContent(int index, Collection newContent) {
        this.content.remove(index);
        this.content.addAll(index, newContent);
        return this;
    }

    public Element addContent(String str) {
        return addContent(new Text(str));
    }

    public Element addContent(Content child) {
        this.content.add(child);
        return this;
    }

    public Element addContent(Collection newContent) {
        this.content.addAll(newContent);
        return this;
    }

    public Element addContent(int index, Content child) {
        this.content.add(index, child);
        return this;
    }

    public Element addContent(int index, Collection newContent) {
        this.content.addAll(index, newContent);
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

    public boolean removeContent(Content child) {
        return this.content.remove(child);
    }

    public Content removeContent(int index) {
        return (Content) this.content.remove(index);
    }

    public Element setContent(Content child) {
        this.content.clear();
        this.content.add(child);
        return this;
    }

    public boolean isAncestor(Element element) {
        for (Element p = element.getParent(); p instanceof Element; p = p.getParent()) {
            if (p == this) {
                return true;
            }
        }
        return false;
    }

    public List getAttributes() {
        return this.attributes;
    }

    public Attribute getAttribute(String name) {
        return getAttribute(name, Namespace.NO_NAMESPACE);
    }

    public Attribute getAttribute(String name, Namespace ns) {
        return (Attribute) this.attributes.get(name, ns);
    }

    public String getAttributeValue(String name) {
        return getAttributeValue(name, Namespace.NO_NAMESPACE);
    }

    public String getAttributeValue(String name, String def) {
        return getAttributeValue(name, Namespace.NO_NAMESPACE, def);
    }

    public String getAttributeValue(String name, Namespace ns) {
        return getAttributeValue(name, ns, null);
    }

    public String getAttributeValue(String name, Namespace ns, String def) {
        Attribute attribute = (Attribute) this.attributes.get(name, ns);
        return attribute == null ? def : attribute.getValue();
    }

    public Element setAttributes(Collection newAttributes) {
        this.attributes.clearAndSet(newAttributes);
        return this;
    }

    public Element setAttributes(List newAttributes) {
        return setAttributes((Collection) newAttributes);
    }

    public Element setAttribute(String name, String value) {
        Attribute attribute = getAttribute(name);
        if (attribute == null) {
            setAttribute(new Attribute(name, value));
        } else {
            attribute.setValue(value);
        }
        return this;
    }

    public Element setAttribute(String name, String value, Namespace ns) {
        Attribute attribute = getAttribute(name, ns);
        if (attribute == null) {
            setAttribute(new Attribute(name, value, ns));
        } else {
            attribute.setValue(value);
        }
        return this;
    }

    public Element setAttribute(Attribute attribute) {
        this.attributes.add(attribute);
        return this;
    }

    public boolean removeAttribute(String name) {
        return removeAttribute(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeAttribute(String name, Namespace ns) {
        return this.attributes.remove(name, ns);
    }

    public boolean removeAttribute(Attribute attribute) {
        return this.attributes.remove(attribute);
    }

    public String toString() {
        StringBuffer stringForm = new StringBuffer(64).append("[Element: <").append(getQualifiedName());
        String nsuri = getNamespaceURI();
        if (!"".equals(nsuri)) {
            stringForm.append(" [Namespace: ").append(nsuri).append("]");
        }
        stringForm.append("/>]");
        return stringForm.toString();
    }

    public Object clone() {
        int i;
        Element element = (Element) super.clone();
        element.content = new ContentList(element);
        element.attributes = new AttributeList(element);
        if (this.attributes != null) {
            for (i = 0; i < this.attributes.size(); i++) {
                element.attributes.add(((Attribute) this.attributes.get(i)).clone());
            }
        }
        if (this.additionalNamespaces != null) {
            element.additionalNamespaces = new ArrayList(this.additionalNamespaces);
        }
        if (this.content != null) {
            for (i = 0; i < this.content.size(); i++) {
                element.content.add(((Content) this.content.get(i)).clone());
            }
        }
        return element;
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        out.writeObject(this.namespace.getPrefix());
        out.writeObject(this.namespace.getURI());
        if (this.additionalNamespaces == null) {
            out.write(0);
            return;
        }
        int size = this.additionalNamespaces.size();
        out.write(size);
        for (int i = 0; i < size; i++) {
            Namespace additional = (Namespace) this.additionalNamespaces.get(i);
            out.writeObject(additional.getPrefix());
            out.writeObject(additional.getURI());
        }
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.namespace = Namespace.getNamespace((String) in.readObject(), (String) in.readObject());
        int size = in.read();
        if (size != 0) {
            this.additionalNamespaces = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                this.additionalNamespaces.add(Namespace.getNamespace((String) in.readObject(), (String) in.readObject()));
            }
        }
    }

    public Iterator getDescendants() {
        return new DescendantIterator(this);
    }

    public Iterator getDescendants(Filter filter) {
        return new FilterIterator(new DescendantIterator(this), filter);
    }

    public List getChildren() {
        return this.content.getView(new ElementFilter());
    }

    public List getChildren(String name) {
        return getChildren(name, Namespace.NO_NAMESPACE);
    }

    public List getChildren(String name, Namespace ns) {
        return this.content.getView(new ElementFilter(name, ns));
    }

    public Element getChild(String name, Namespace ns) {
        Iterator iter = this.content.getView(new ElementFilter(name, ns)).iterator();
        if (iter.hasNext()) {
            return (Element) iter.next();
        }
        return null;
    }

    public Element getChild(String name) {
        return getChild(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeChild(String name) {
        return removeChild(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeChild(String name, Namespace ns) {
        Iterator iter = this.content.getView(new ElementFilter(name, ns)).iterator();
        if (!iter.hasNext()) {
            return false;
        }
        iter.next();
        iter.remove();
        return true;
    }

    public boolean removeChildren(String name) {
        return removeChildren(name, Namespace.NO_NAMESPACE);
    }

    public boolean removeChildren(String name, Namespace ns) {
        boolean deletedSome = false;
        Iterator iter = this.content.getView(new ElementFilter(name, ns)).iterator();
        while (iter.hasNext()) {
            iter.next();
            iter.remove();
            deletedSome = true;
        }
        return deletedSome;
    }
}
