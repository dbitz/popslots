package org.jdom.transform;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.xml.transform.sax.SAXResult;
import org.jdom.DefaultJDOMFactory;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMFactory;
import org.jdom.input.SAXHandler;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.XMLFilterImpl;

public class JDOMResult extends SAXResult {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMResult.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $";
    public static final String JDOM_FEATURE = "http://org.jdom.transform.JDOMResult/feature";
    private JDOMFactory factory = null;
    private boolean queried = false;
    private Object result = null;

    private class DocumentBuilder extends XMLFilterImpl implements LexicalHandler {
        private FragmentHandler saxHandler = null;
        private boolean startDocumentReceived = false;
        private final JDOMResult this$0;

        public DocumentBuilder(JDOMResult jDOMResult) {
            this.this$0 = jDOMResult;
        }

        public List getResult() {
            if (this.saxHandler == null) {
                return null;
            }
            List result = this.saxHandler.getResult();
            this.saxHandler = null;
            this.startDocumentReceived = false;
            return result;
        }

        private void ensureInitialization() throws SAXException {
            if (!this.startDocumentReceived) {
                startDocument();
            }
        }

        public void startDocument() throws SAXException {
            this.startDocumentReceived = true;
            this.this$0.setResult(null);
            this.saxHandler = new FragmentHandler(this.this$0.getFactory());
            super.setContentHandler(this.saxHandler);
            super.startDocument();
        }

        public void startElement(String nsURI, String localName, String qName, Attributes atts) throws SAXException {
            ensureInitialization();
            super.startElement(nsURI, localName, qName, atts);
        }

        public void startPrefixMapping(String prefix, String uri) throws SAXException {
            ensureInitialization();
            super.startPrefixMapping(prefix, uri);
        }

        public void characters(char[] ch, int start, int length) throws SAXException {
            ensureInitialization();
            super.characters(ch, start, length);
        }

        public void ignorableWhitespace(char[] ch, int start, int length) throws SAXException {
            ensureInitialization();
            super.ignorableWhitespace(ch, start, length);
        }

        public void processingInstruction(String target, String data) throws SAXException {
            ensureInitialization();
            super.processingInstruction(target, data);
        }

        public void skippedEntity(String name) throws SAXException {
            ensureInitialization();
            super.skippedEntity(name);
        }

        public void startDTD(String name, String publicId, String systemId) throws SAXException {
            ensureInitialization();
            this.saxHandler.startDTD(name, publicId, systemId);
        }

        public void endDTD() throws SAXException {
            this.saxHandler.endDTD();
        }

        public void startEntity(String name) throws SAXException {
            ensureInitialization();
            this.saxHandler.startEntity(name);
        }

        public void endEntity(String name) throws SAXException {
            this.saxHandler.endEntity(name);
        }

        public void startCDATA() throws SAXException {
            ensureInitialization();
            this.saxHandler.startCDATA();
        }

        public void endCDATA() throws SAXException {
            this.saxHandler.endCDATA();
        }

        public void comment(char[] ch, int start, int length) throws SAXException {
            ensureInitialization();
            this.saxHandler.comment(ch, start, length);
        }
    }

    private static class FragmentHandler extends SAXHandler {
        private Element dummyRoot = new Element("root", null, null);

        public FragmentHandler(JDOMFactory factory) {
            super(factory);
            pushElement(this.dummyRoot);
        }

        public List getResult() {
            try {
                flushCharacters();
            } catch (SAXException e) {
            }
            return getDetachedContent(this.dummyRoot);
        }

        private List getDetachedContent(Element elt) {
            List content = elt.getContent();
            List nodes = new ArrayList(content.size());
            while (content.size() != 0) {
                nodes.add(content.remove(0));
            }
            return nodes;
        }
    }

    public JDOMResult() {
        DocumentBuilder builder = new DocumentBuilder(this);
        super.setHandler(builder);
        super.setLexicalHandler(builder);
    }

    public void setResult(List result) {
        this.result = result;
        this.queried = false;
    }

    public List getResult() {
        List nodes = Collections.EMPTY_LIST;
        retrieveResult();
        if (this.result instanceof List) {
            nodes = this.result;
        } else if ((this.result instanceof Document) && !this.queried) {
            List content = ((Document) this.result).getContent();
            nodes = new ArrayList(content.size());
            while (content.size() != 0) {
                nodes.add(content.remove(0));
            }
            this.result = nodes;
        }
        this.queried = true;
        return nodes;
    }

    public void setDocument(Document document) {
        this.result = document;
        this.queried = false;
    }

    public Document getDocument() {
        Document doc = null;
        retrieveResult();
        if (this.result instanceof Document) {
            doc = this.result;
        } else if ((this.result instanceof List) && !this.queried) {
            try {
                JDOMFactory f = getFactory();
                if (f == null) {
                    f = new DefaultJDOMFactory();
                }
                doc = f.document(null);
                doc.setContent((List) this.result);
                this.result = doc;
            } catch (RuntimeException e) {
            }
        }
        this.queried = true;
        return doc;
    }

    public void setFactory(JDOMFactory factory) {
        this.factory = factory;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    private void retrieveResult() {
        if (this.result == null) {
            setResult(((DocumentBuilder) getHandler()).getResult());
        }
    }

    public void setHandler(ContentHandler handler) {
    }

    public void setLexicalHandler(LexicalHandler handler) {
    }
}
