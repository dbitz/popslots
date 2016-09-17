package org.jdom.input;

import org.jdom.Document;
import org.jdom.JDOMException;
import org.xml.sax.SAXParseException;

public class JDOMParseException extends JDOMException {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMParseException.java,v $ $Revision: 1.8 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $";
    private final Document partialDocument;

    public JDOMParseException(String message, Throwable cause) {
        this(message, cause, null);
    }

    public JDOMParseException(String message, Throwable cause, Document partialDocument) {
        super(message, cause);
        this.partialDocument = partialDocument;
    }

    public Document getPartialDocument() {
        return this.partialDocument;
    }

    public String getPublicId() {
        return getCause() instanceof SAXParseException ? ((SAXParseException) getCause()).getPublicId() : null;
    }

    public String getSystemId() {
        return getCause() instanceof SAXParseException ? ((SAXParseException) getCause()).getSystemId() : null;
    }

    public int getLineNumber() {
        return getCause() instanceof SAXParseException ? ((SAXParseException) getCause()).getLineNumber() : -1;
    }

    public int getColumnNumber() {
        return getCause() instanceof SAXParseException ? ((SAXParseException) getCause()).getColumnNumber() : -1;
    }
}
