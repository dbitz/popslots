package org.jdom.input;

import org.jdom.Content;
import org.jdom.DefaultJDOMFactory;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMFactory;
import org.jdom.Namespace;
import org.w3c.dom.Attr;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class DOMBuilder {
    private static final String CVS_ID = "@(#) $RCSfile: DOMBuilder.java,v $ $Revision: 1.60 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $";
    private String adapterClass;
    private JDOMFactory factory = new DefaultJDOMFactory();

    public DOMBuilder(String adapterClass) {
        this.adapterClass = adapterClass;
    }

    public void setFactory(JDOMFactory factory) {
        this.factory = factory;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    public Document build(org.w3c.dom.Document domDocument) {
        Document doc = this.factory.document(null);
        buildTree(domDocument, doc, null, true);
        return doc;
    }

    public Element build(org.w3c.dom.Element domElement) {
        Document doc = this.factory.document(null);
        buildTree(domElement, doc, null, true);
        return doc.getRootElement();
    }

    private void buildTree(Node node, Document doc, Element current, boolean atRoot) {
        int i;
        int size;
        switch (node.getNodeType()) {
            case BuddyOnlineState.OFFLINE /*1*/:
                Attr att;
                String attname;
                String attPrefix;
                String nodeName = node.getNodeName();
                String prefix = "";
                String localName = nodeName;
                int colon = nodeName.indexOf(58);
                if (colon >= 0) {
                    prefix = nodeName.substring(0, colon);
                    localName = nodeName.substring(colon + 1);
                }
                String uri = node.getNamespaceURI();
                Namespace ns = uri == null ? current == null ? Namespace.NO_NAMESPACE : current.getNamespace(prefix) : Namespace.getNamespace(prefix, uri);
                Content element = this.factory.element(localName, ns);
                if (atRoot) {
                    doc.setRootElement(element);
                } else {
                    this.factory.addContent(current, element);
                }
                NamedNodeMap attributeList = node.getAttributes();
                int attsize = attributeList.getLength();
                for (i = 0; i < attsize; i++) {
                    att = (Attr) attributeList.item(i);
                    attname = att.getName();
                    if (attname.startsWith("xmlns")) {
                        attPrefix = "";
                        colon = attname.indexOf(58);
                        if (colon >= 0) {
                            attPrefix = attname.substring(colon + 1);
                        }
                        Namespace declaredNS = Namespace.getNamespace(attPrefix, att.getValue());
                        if (prefix.equals(attPrefix)) {
                            element.setNamespace(declaredNS);
                        } else {
                            this.factory.addNamespaceDeclaration(element, declaredNS);
                        }
                    }
                }
                for (i = 0; i < attsize; i++) {
                    att = (Attr) attributeList.item(i);
                    attname = att.getName();
                    if (!attname.startsWith("xmlns")) {
                        Namespace attns;
                        attPrefix = "";
                        String attLocalName = attname;
                        colon = attname.indexOf(58);
                        if (colon >= 0) {
                            attPrefix = attname.substring(0, colon);
                            attLocalName = attname.substring(colon + 1);
                        }
                        String attvalue = att.getValue();
                        if ("".equals(attPrefix)) {
                            attns = Namespace.NO_NAMESPACE;
                        } else {
                            attns = element.getNamespace(attPrefix);
                        }
                        this.factory.setAttribute(element, this.factory.attribute(attLocalName, attvalue, attns));
                    }
                }
                NodeList children = node.getChildNodes();
                if (children != null) {
                    size = children.getLength();
                    for (i = 0; i < size; i++) {
                        Node item = children.item(i);
                        if (item != null) {
                            buildTree(item, doc, element, false);
                        }
                    }
                    return;
                }
                return;
            case MessageRecipientMode.TO_ZONE /*3*/:
                this.factory.addContent(current, this.factory.text(node.getNodeValue()));
                return;
            case Base64.DONT_GUNZIP /*4*/:
                this.factory.addContent(current, this.factory.cdata(node.getNodeValue()));
                return;
            case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                this.factory.addContent(current, this.factory.entityRef(node.getNodeName()));
                return;
            case BaseRequest.GenericMessage /*7*/:
                if (atRoot) {
                    this.factory.addContent(doc, this.factory.processingInstruction(node.getNodeName(), node.getNodeValue()));
                    return;
                } else {
                    this.factory.addContent(current, this.factory.processingInstruction(node.getNodeName(), node.getNodeValue()));
                    return;
                }
            case Base64.DO_BREAK_LINES /*8*/:
                if (atRoot) {
                    this.factory.addContent(doc, this.factory.comment(node.getNodeValue()));
                    return;
                } else {
                    this.factory.addContent(current, this.factory.comment(node.getNodeValue()));
                    return;
                }
            case BaseRequest.ChangeRoomPassword /*9*/:
                NodeList nodes = node.getChildNodes();
                size = nodes.getLength();
                for (i = 0; i < size; i++) {
                    buildTree(nodes.item(i), doc, current, true);
                }
                return;
            case BaseRequest.ObjectMessage /*10*/:
                DocumentType domDocType = (DocumentType) node;
                String publicID = domDocType.getPublicId();
                String systemID = domDocType.getSystemId();
                String internalDTD = domDocType.getInternalSubset();
                Content docType = this.factory.docType(domDocType.getName());
                docType.setPublicID(publicID);
                docType.setSystemID(systemID);
                docType.setInternalSubset(internalDTD);
                this.factory.addContent(doc, docType);
                return;
            default:
                return;
        }
    }
}
