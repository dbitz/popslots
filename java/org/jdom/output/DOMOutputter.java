package org.jdom.output;

import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.JDOMException;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;
import org.jdom.adapters.DOMAdapter;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;

public class DOMOutputter {
    private static final String CVS_ID = "@(#) $RCSfile: DOMOutputter.java,v $ $Revision: 1.43 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $";
    private static final String DEFAULT_ADAPTER_CLASS = "org.jdom.adapters.XercesDOMAdapter";
    private String adapterClass;
    private boolean forceNamespaceAware;

    public DOMOutputter(String adapterClass) {
        this.adapterClass = adapterClass;
    }

    public void setForceNamespaceAware(boolean flag) {
        this.forceNamespaceAware = flag;
    }

    public boolean getForceNamespaceAware() {
        return this.forceNamespaceAware;
    }

    public Document output(org.jdom.Document document) throws JDOMException {
        NamespaceStack namespaces = new NamespaceStack();
        try {
            Document domDoc = createDOMDocument(document.getDocType());
            for (Object node : document.getContent()) {
                if (node instanceof Element) {
                    org.w3c.dom.Element domElement = output((Element) node, domDoc, namespaces);
                    org.w3c.dom.Element root = domDoc.getDocumentElement();
                    if (root == null) {
                        domDoc.appendChild(domElement);
                    } else {
                        domDoc.replaceChild(domElement, root);
                    }
                } else if (node instanceof Comment) {
                    domDoc.appendChild(domDoc.createComment(((Comment) node).getText()));
                } else if (node instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) node;
                    domDoc.appendChild(domDoc.createProcessingInstruction(pi.getTarget(), pi.getData()));
                } else if (!(node instanceof DocType)) {
                    throw new JDOMException(new StringBuffer().append("Document contained top-level content with type:").append(node.getClass().getName()).toString());
                }
            }
            return domDoc;
        } catch (Throwable e) {
            JDOMException jDOMException = new JDOMException("Exception outputting Document", e);
        }
    }

    private Document createDOMDocument(DocType dt) throws JDOMException {
        Document createDocument;
        if (this.adapterClass != null) {
            try {
                createDocument = ((DOMAdapter) Class.forName(this.adapterClass).newInstance()).createDocument(dt);
            } catch (ClassNotFoundException e) {
                try {
                    createDocument = ((DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance()).createDocument(dt);
                    return createDocument;
                } catch (ClassNotFoundException e2) {
                    throw new JDOMException("No JAXP or default parser available");
                } catch (IllegalAccessException e3) {
                    throw new JDOMException("No JAXP or default parser available");
                } catch (InstantiationException e4) {
                    throw new JDOMException("No JAXP or default parser available");
                }
            } catch (IllegalAccessException e5) {
                createDocument = ((DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance()).createDocument(dt);
                return createDocument;
            } catch (InstantiationException e6) {
                createDocument = ((DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance()).createDocument(dt);
                return createDocument;
            }
        }
        try {
            createDocument = ((DOMAdapter) Class.forName("org.jdom.adapters.JAXPDOMAdapter").newInstance()).createDocument(dt);
        } catch (ClassNotFoundException e7) {
            createDocument = ((DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance()).createDocument(dt);
            return createDocument;
        } catch (IllegalAccessException e8) {
            createDocument = ((DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance()).createDocument(dt);
            return createDocument;
        } catch (InstantiationException e9) {
            createDocument = ((DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance()).createDocument(dt);
            return createDocument;
        }
        return createDocument;
    }

    private org.w3c.dom.Element output(Element element, Document domDoc, NamespaceStack namespaces) throws JDOMException {
        try {
            org.w3c.dom.Element domElement;
            int previouslyDeclaredNamespaces = namespaces.size();
            if (element.getNamespace() != Namespace.NO_NAMESPACE) {
                domElement = domDoc.createElementNS(element.getNamespaceURI(), element.getQualifiedName());
            } else if (this.forceNamespaceAware) {
                domElement = domDoc.createElementNS(null, element.getQualifiedName());
            } else {
                domElement = domDoc.createElement(element.getQualifiedName());
            }
            Namespace ns = element.getNamespace();
            if (!(ns == Namespace.XML_NAMESPACE || (ns == Namespace.NO_NAMESPACE && namespaces.getURI("") == null))) {
                if (!ns.getURI().equals(namespaces.getURI(ns.getPrefix()))) {
                    namespaces.push(ns);
                    domElement.setAttribute(getXmlnsTagFor(ns), ns.getURI());
                }
            }
            for (Namespace additional : element.getAdditionalNamespaces()) {
                if (!additional.getURI().equals(namespaces.getURI(additional.getPrefix()))) {
                    domElement.setAttribute(getXmlnsTagFor(additional), additional.getURI());
                    namespaces.push(additional);
                }
            }
            for (Attribute attribute : element.getAttributes()) {
                domElement.setAttributeNode(output(attribute, domDoc));
                Namespace ns1 = attribute.getNamespace();
                if (!(ns1 == Namespace.NO_NAMESPACE || ns1 == Namespace.XML_NAMESPACE)) {
                    if (!ns1.getURI().equals(namespaces.getURI(ns1.getPrefix()))) {
                        domElement.setAttribute(getXmlnsTagFor(ns1), ns1.getURI());
                        namespaces.push(ns1);
                    }
                }
                if (attribute.getNamespace() != Namespace.NO_NAMESPACE) {
                    domElement.setAttributeNS(attribute.getNamespaceURI(), attribute.getQualifiedName(), attribute.getValue());
                } else if (this.forceNamespaceAware) {
                    domElement.setAttributeNS(null, attribute.getQualifiedName(), attribute.getValue());
                } else {
                    domElement.setAttribute(attribute.getQualifiedName(), attribute.getValue());
                }
            }
            for (Object node : element.getContent()) {
                if (node instanceof Element) {
                    domElement.appendChild(output((Element) node, domDoc, namespaces));
                } else if (node instanceof String) {
                    domElement.appendChild(domDoc.createTextNode((String) node));
                } else if (node instanceof CDATA) {
                    domElement.appendChild(domDoc.createCDATASection(((CDATA) node).getText()));
                } else if (node instanceof Text) {
                    domElement.appendChild(domDoc.createTextNode(((Text) node).getText()));
                } else if (node instanceof Comment) {
                    domElement.appendChild(domDoc.createComment(((Comment) node).getText()));
                } else if (node instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) node;
                    domElement.appendChild(domDoc.createProcessingInstruction(pi.getTarget(), pi.getData()));
                } else if (node instanceof EntityRef) {
                    domElement.appendChild(domDoc.createEntityReference(((EntityRef) node).getName()));
                } else {
                    throw new JDOMException(new StringBuffer().append("Element contained content with type:").append(node.getClass().getName()).toString());
                }
            }
            while (namespaces.size() > previouslyDeclaredNamespaces) {
                namespaces.pop();
            }
            return domElement;
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer().append("Exception outputting Element ").append(element.getQualifiedName()).toString(), e);
        }
    }

    private Attr output(Attribute attribute, Document domDoc) throws JDOMException {
        try {
            Attr domAttr;
            if (attribute.getNamespace() != Namespace.NO_NAMESPACE) {
                domAttr = domDoc.createAttributeNS(attribute.getNamespaceURI(), attribute.getQualifiedName());
            } else if (this.forceNamespaceAware) {
                domAttr = domDoc.createAttributeNS(null, attribute.getQualifiedName());
            } else {
                domAttr = domDoc.createAttribute(attribute.getQualifiedName());
            }
            domAttr.setValue(attribute.getValue());
            return domAttr;
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer().append("Exception outputting Attribute ").append(attribute.getQualifiedName()).toString(), e);
        }
    }

    private static String getXmlnsTagFor(Namespace ns) {
        String attrName = "xmlns";
        if (ns.getPrefix().equals("")) {
            return attrName;
        }
        return new StringBuffer().append(new StringBuffer().append(attrName).append(":").toString()).append(ns.getPrefix()).toString();
    }
}
