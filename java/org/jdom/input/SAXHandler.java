package org.jdom.input;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jdom.Attribute;
import org.jdom.DefaultJDOMFactory;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMFactory;
import org.jdom.Namespace;
import org.jdom.Parent;
import org.xml.sax.Attributes;
import org.xml.sax.DTDHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

public class SAXHandler extends DefaultHandler implements DTDHandler, DeclHandler, LexicalHandler {
    private static final String CVS_ID = "@(#) $RCSfile: SAXHandler.java,v $ $Revision: 1.73 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $";
    private static final Map attrNameToTypeMap = new HashMap(13);
    private boolean atRoot;
    private Element currentElement;
    private List declaredNamespaces;
    private Document document;
    private int entityDepth;
    private boolean expand;
    private Map externalEntities;
    private JDOMFactory factory;
    private boolean ignoringBoundaryWhite;
    private boolean ignoringWhite;
    private boolean inCDATA;
    private boolean inDTD;
    private boolean inInternalSubset;
    private StringBuffer internalSubset;
    private Locator locator;
    private boolean previousCDATA;
    private boolean suppress;
    private TextBuffer textBuffer;

    static {
        attrNameToTypeMap.put("CDATA", new Integer(1));
        attrNameToTypeMap.put("ID", new Integer(2));
        attrNameToTypeMap.put("IDREF", new Integer(3));
        attrNameToTypeMap.put("IDREFS", new Integer(4));
        attrNameToTypeMap.put("ENTITY", new Integer(5));
        attrNameToTypeMap.put("ENTITIES", new Integer(6));
        attrNameToTypeMap.put("NMTOKEN", new Integer(7));
        attrNameToTypeMap.put("NMTOKENS", new Integer(8));
        attrNameToTypeMap.put("NOTATION", new Integer(9));
        attrNameToTypeMap.put("ENUMERATION", new Integer(10));
    }

    public SAXHandler() {
        this(null);
    }

    public SAXHandler(JDOMFactory factory) {
        this.inDTD = false;
        this.inInternalSubset = false;
        this.previousCDATA = false;
        this.inCDATA = false;
        this.expand = true;
        this.suppress = false;
        this.entityDepth = 0;
        this.internalSubset = new StringBuffer();
        this.textBuffer = new TextBuffer();
        this.ignoringWhite = false;
        this.ignoringBoundaryWhite = false;
        if (factory != null) {
            this.factory = factory;
        } else {
            this.factory = new DefaultJDOMFactory();
        }
        this.atRoot = true;
        this.declaredNamespaces = new ArrayList();
        this.externalEntities = new HashMap();
        this.document = this.factory.document(null);
    }

    protected void pushElement(Element element) {
        if (this.atRoot) {
            this.document.setRootElement(element);
            this.atRoot = false;
        } else {
            this.factory.addContent(this.currentElement, element);
        }
        this.currentElement = element;
    }

    public Document getDocument() {
        return this.document;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    public void setExpandEntities(boolean expand) {
        this.expand = expand;
    }

    public boolean getExpandEntities() {
        return this.expand;
    }

    public void setIgnoringElementContentWhitespace(boolean ignoringWhite) {
        this.ignoringWhite = ignoringWhite;
    }

    public void setIgnoringBoundaryWhitespace(boolean ignoringBoundaryWhite) {
        this.ignoringBoundaryWhite = ignoringBoundaryWhite;
    }

    public boolean getIgnoringBoundaryWhitespace() {
        return this.ignoringBoundaryWhite;
    }

    public boolean getIgnoringElementContentWhitespace() {
        return this.ignoringWhite;
    }

    public void startDocument() {
        if (this.locator != null) {
            this.document.setBaseURI(this.locator.getSystemId());
        }
    }

    public void externalEntityDecl(String name, String publicID, String systemID) throws SAXException {
        this.externalEntities.put(name, new String[]{publicID, systemID});
        if (this.inInternalSubset) {
            this.internalSubset.append("  <!ENTITY ").append(name);
            appendExternalId(publicID, systemID);
            this.internalSubset.append(">\n");
        }
    }

    public void attributeDecl(String eName, String aName, String type, String valueDefault, String value) throws SAXException {
        if (this.inInternalSubset) {
            this.internalSubset.append("  <!ATTLIST ").append(eName).append(' ').append(aName).append(' ').append(type).append(' ');
            if (valueDefault != null) {
                this.internalSubset.append(valueDefault);
            } else {
                this.internalSubset.append('\"').append(value).append('\"');
            }
            if (valueDefault != null && valueDefault.equals("#FIXED")) {
                this.internalSubset.append(" \"").append(value).append('\"');
            }
            this.internalSubset.append(">\n");
        }
    }

    public void elementDecl(String name, String model) throws SAXException {
        if (this.inInternalSubset) {
            this.internalSubset.append("  <!ELEMENT ").append(name).append(' ').append(model).append(">\n");
        }
    }

    public void internalEntityDecl(String name, String value) throws SAXException {
        if (this.inInternalSubset) {
            this.internalSubset.append("  <!ENTITY ");
            if (name.startsWith("%")) {
                this.internalSubset.append("% ").append(name.substring(1));
            } else {
                this.internalSubset.append(name);
            }
            this.internalSubset.append(" \"").append(value).append("\">\n");
        }
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if (!this.suppress) {
            flushCharacters();
            if (this.atRoot) {
                this.factory.addContent(this.document, this.factory.processingInstruction(target, data));
            } else {
                this.factory.addContent(getCurrentElement(), this.factory.processingInstruction(target, data));
            }
        }
    }

    public void skippedEntity(String name) throws SAXException {
        if (!name.startsWith("%")) {
            flushCharacters();
            this.factory.addContent(getCurrentElement(), this.factory.entityRef(name));
        }
    }

    public void startPrefixMapping(String prefix, String uri) throws SAXException {
        if (!this.suppress) {
            this.declaredNamespaces.add(Namespace.getNamespace(prefix, uri));
        }
    }

    public void startElement(String namespaceURI, String localName, String qName, Attributes atts) throws SAXException {
        if (!this.suppress) {
            Element element;
            int len;
            int i;
            String attLocalName;
            String attQName;
            int attType;
            Attribute attribute;
            if (namespaceURI != null) {
                if (!namespaceURI.equals("")) {
                    String prefix = "";
                    if (!qName.equals(localName)) {
                        prefix = qName.substring(0, qName.indexOf(":"));
                    }
                    element = this.factory.element(localName, Namespace.getNamespace(prefix, namespaceURI));
                    if (this.declaredNamespaces.size() > 0) {
                        transferNamespaces(element);
                    }
                    len = atts.getLength();
                    for (i = 0; i < len; i++) {
                        attLocalName = atts.getLocalName(i);
                        attQName = atts.getQName(i);
                        attType = getAttributeType(atts.getType(i));
                        if (!(attQName.startsWith("xmlns:") || attQName.equals("xmlns"))) {
                            if (!"".equals(attLocalName) && attQName.indexOf(":") == -1) {
                                attribute = this.factory.attribute(attQName, atts.getValue(i), attType);
                            } else if (attQName.equals(attLocalName)) {
                                attribute = this.factory.attribute(attLocalName, atts.getValue(i), attType, Namespace.getNamespace(attQName.substring(0, attQName.indexOf(":")), atts.getURI(i)));
                            } else {
                                attribute = this.factory.attribute(attLocalName, atts.getValue(i), attType);
                            }
                            this.factory.setAttribute(element, attribute);
                        }
                    }
                    flushCharacters();
                    if (this.atRoot) {
                        this.factory.addContent(getCurrentElement(), element);
                    } else {
                        this.document.setRootElement(element);
                        this.atRoot = false;
                    }
                    this.currentElement = element;
                }
            }
            element = this.factory.element(localName);
            if (this.declaredNamespaces.size() > 0) {
                transferNamespaces(element);
            }
            len = atts.getLength();
            while (i < len) {
                attLocalName = atts.getLocalName(i);
                attQName = atts.getQName(i);
                attType = getAttributeType(atts.getType(i));
                if (!"".equals(attLocalName)) {
                }
                if (attQName.equals(attLocalName)) {
                    attribute = this.factory.attribute(attLocalName, atts.getValue(i), attType);
                } else {
                    attribute = this.factory.attribute(attLocalName, atts.getValue(i), attType, Namespace.getNamespace(attQName.substring(0, attQName.indexOf(":")), atts.getURI(i)));
                }
                this.factory.setAttribute(element, attribute);
            }
            flushCharacters();
            if (this.atRoot) {
                this.factory.addContent(getCurrentElement(), element);
            } else {
                this.document.setRootElement(element);
                this.atRoot = false;
            }
            this.currentElement = element;
        }
    }

    private void transferNamespaces(Element element) {
        for (Namespace ns : this.declaredNamespaces) {
            if (ns != element.getNamespace()) {
                element.addNamespaceDeclaration(ns);
            }
        }
        this.declaredNamespaces.clear();
    }

    public void characters(char[] ch, int start, int length) throws SAXException {
        if (!this.suppress && length != 0) {
            if (this.previousCDATA != this.inCDATA) {
                flushCharacters();
            }
            this.textBuffer.append(ch, start, length);
        }
    }

    public void ignorableWhitespace(char[] ch, int start, int length) throws SAXException {
        if (!this.ignoringWhite) {
            characters(ch, start, length);
        }
    }

    protected void flushCharacters() throws SAXException {
        if (!this.ignoringBoundaryWhite) {
            flushCharacters(this.textBuffer.toString());
        } else if (!this.textBuffer.isAllWhitespace()) {
            flushCharacters(this.textBuffer.toString());
        }
        this.textBuffer.clear();
    }

    protected void flushCharacters(String data) throws SAXException {
        if (data.length() == 0) {
            this.previousCDATA = this.inCDATA;
            return;
        }
        if (this.previousCDATA) {
            this.factory.addContent(getCurrentElement(), this.factory.cdata(data));
        } else {
            this.factory.addContent(getCurrentElement(), this.factory.text(data));
        }
        this.previousCDATA = this.inCDATA;
    }

    public void endElement(String namespaceURI, String localName, String qName) throws SAXException {
        if (!this.suppress) {
            flushCharacters();
            if (this.atRoot) {
                throw new SAXException(new StringBuffer().append("Ill-formed XML document (missing opening tag for ").append(localName).append(")").toString());
            }
            Parent p = this.currentElement.getParent();
            if (p instanceof Document) {
                this.atRoot = true;
            } else {
                this.currentElement = (Element) p;
            }
        }
    }

    public void startDTD(String name, String publicID, String systemID) throws SAXException {
        flushCharacters();
        this.factory.addContent(this.document, this.factory.docType(name, publicID, systemID));
        this.inDTD = true;
        this.inInternalSubset = true;
    }

    public void endDTD() throws SAXException {
        this.document.getDocType().setInternalSubset(this.internalSubset.toString());
        this.inDTD = false;
        this.inInternalSubset = false;
    }

    public void startEntity(String name) throws SAXException {
        this.entityDepth++;
        if (!this.expand && this.entityDepth <= 1) {
            if (name.equals("[dtd]")) {
                this.inInternalSubset = false;
            } else if (!this.inDTD && !name.equals("amp") && !name.equals("lt") && !name.equals("gt") && !name.equals("apos") && !name.equals("quot") && !this.expand) {
                String pub = null;
                String sys = null;
                String[] ids = (String[]) this.externalEntities.get(name);
                if (ids != null) {
                    pub = ids[0];
                    sys = ids[1];
                }
                if (!this.atRoot) {
                    flushCharacters();
                    this.factory.addContent(getCurrentElement(), this.factory.entityRef(name, pub, sys));
                }
                this.suppress = true;
            }
        }
    }

    public void endEntity(String name) throws SAXException {
        this.entityDepth--;
        if (this.entityDepth == 0) {
            this.suppress = false;
        }
        if (name.equals("[dtd]")) {
            this.inInternalSubset = true;
        }
    }

    public void startCDATA() throws SAXException {
        if (!this.suppress) {
            this.inCDATA = true;
        }
    }

    public void endCDATA() throws SAXException {
        if (!this.suppress) {
            this.previousCDATA = true;
            this.inCDATA = false;
        }
    }

    public void comment(char[] ch, int start, int length) throws SAXException {
        if (!this.suppress) {
            flushCharacters();
            String commentText = new String(ch, start, length);
            if (this.inDTD && this.inInternalSubset && !this.expand) {
                this.internalSubset.append("  <!--").append(commentText).append("-->\n");
            } else if (!this.inDTD && !commentText.equals("")) {
                if (this.atRoot) {
                    this.factory.addContent(this.document, this.factory.comment(commentText));
                } else {
                    this.factory.addContent(getCurrentElement(), this.factory.comment(commentText));
                }
            }
        }
    }

    public void notationDecl(String name, String publicID, String systemID) throws SAXException {
        if (this.inInternalSubset) {
            this.internalSubset.append("  <!NOTATION ").append(name);
            appendExternalId(publicID, systemID);
            this.internalSubset.append(">\n");
        }
    }

    public void unparsedEntityDecl(String name, String publicID, String systemID, String notationName) throws SAXException {
        if (this.inInternalSubset) {
            this.internalSubset.append("  <!ENTITY ").append(name);
            appendExternalId(publicID, systemID);
            this.internalSubset.append(" NDATA ").append(notationName);
            this.internalSubset.append(">\n");
        }
    }

    private void appendExternalId(String publicID, String systemID) {
        if (publicID != null) {
            this.internalSubset.append(" PUBLIC \"").append(publicID).append('\"');
        }
        if (systemID != null) {
            if (publicID == null) {
                this.internalSubset.append(" SYSTEM ");
            } else {
                this.internalSubset.append(' ');
            }
            this.internalSubset.append('\"').append(systemID).append('\"');
        }
    }

    public Element getCurrentElement() throws SAXException {
        if (this.currentElement != null) {
            return this.currentElement;
        }
        throw new SAXException("Ill-formed XML document (multiple root elements detected)");
    }

    private static int getAttributeType(String typeName) {
        Integer type = (Integer) attrNameToTypeMap.get(typeName);
        if (type != null) {
            return type.intValue();
        }
        if (typeName == null || typeName.length() <= 0 || typeName.charAt(0) != '(') {
            return 0;
        }
        return 10;
    }

    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
    }

    public Locator getDocumentLocator() {
        return this.locator;
    }
}
