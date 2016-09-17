package org.jdom.transform;

import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.transform.sax.SAXSource;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.output.SAXOutputter;
import org.jdom.output.XMLOutputter;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;

public class JDOMSource extends SAXSource {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMSource.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $";
    public static final String JDOM_FEATURE = "http://org.jdom.transform.JDOMSource/feature";
    private EntityResolver resolver = null;
    private XMLReader xmlReader = null;

    private static class DocumentReader extends SAXOutputter implements XMLReader {
        public void parse(String systemId) throws SAXNotSupportedException {
            throw new SAXNotSupportedException("Only JDOM Documents are supported as input");
        }

        public void parse(InputSource input) throws SAXException {
            if (input instanceof JDOMInputSource) {
                try {
                    Object source = ((JDOMInputSource) input).getSource();
                    if (source instanceof Document) {
                        output((Document) source);
                        return;
                    } else {
                        output((List) source);
                        return;
                    }
                } catch (JDOMException e) {
                    throw new SAXException(e.getMessage(), e);
                }
            }
            throw new SAXNotSupportedException("Only JDOM Documents are supported as input");
        }
    }

    private static class JDOMInputSource extends InputSource {
        private Object source = null;

        public JDOMInputSource(Document document) {
            this.source = document;
        }

        public JDOMInputSource(List nodes) {
            this.source = nodes;
        }

        public Object getSource() {
            return this.source;
        }

        public void setCharacterStream(Reader characterStream) throws UnsupportedOperationException {
            throw new UnsupportedOperationException();
        }

        public Reader getCharacterStream() {
            Object src = getSource();
            if (src instanceof Document) {
                return new StringReader(new XMLOutputter().outputString((Document) src));
            }
            if (src instanceof List) {
                return new StringReader(new XMLOutputter().outputString((List) src));
            }
            return null;
        }
    }

    public JDOMSource(Document source) {
        setDocument(source);
    }

    public JDOMSource(List source) {
        setNodes(source);
    }

    public JDOMSource(Element source) {
        List nodes = new ArrayList();
        nodes.add(source);
        setNodes(nodes);
    }

    public JDOMSource(Document source, EntityResolver resolver) {
        setDocument(source);
        this.resolver = resolver;
    }

    public void setDocument(Document source) {
        super.setInputSource(new JDOMInputSource(source));
    }

    public Document getDocument() {
        Document src = ((JDOMInputSource) getInputSource()).getSource();
        if (src instanceof Document) {
            return src;
        }
        return null;
    }

    public void setNodes(List source) {
        super.setInputSource(new JDOMInputSource(source));
    }

    public List getNodes() {
        List src = ((JDOMInputSource) getInputSource()).getSource();
        if (src instanceof List) {
            return src;
        }
        return null;
    }

    public void setInputSource(InputSource inputSource) throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    public void setXMLReader(XMLReader reader) throws UnsupportedOperationException {
        if (reader instanceof XMLFilter) {
            XMLFilter filter = (XMLFilter) reader;
            while (filter.getParent() instanceof XMLFilter) {
                filter = (XMLFilter) filter.getParent();
            }
            filter.setParent(buildDocumentReader());
            this.xmlReader = reader;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public XMLReader getXMLReader() {
        if (this.xmlReader == null) {
            this.xmlReader = buildDocumentReader();
        }
        return this.xmlReader;
    }

    private XMLReader buildDocumentReader() {
        DocumentReader reader = new DocumentReader();
        if (this.resolver != null) {
            reader.setEntityResolver(this.resolver);
        }
        return reader;
    }
}
