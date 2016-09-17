package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import org.jdom.JDOMException;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;

public class OracleV1DOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: OracleV1DOMAdapter.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    static Class class$org$xml$sax$InputSource;

    public Document getDocument(InputStream in, boolean validate) throws IOException, JDOMException {
        try {
            Class class$;
            Class parserClass = Class.forName("oracle.xml.parser.XMLParser");
            Object parser = parserClass.newInstance();
            String str = "parse";
            Class[] clsArr = new Class[1];
            if (class$org$xml$sax$InputSource == null) {
                class$ = class$("org.xml.sax.InputSource");
                class$org$xml$sax$InputSource = class$;
            } else {
                class$ = class$org$xml$sax$InputSource;
            }
            clsArr[0] = class$;
            parserClass.getMethod(str, clsArr).invoke(parser, new Object[]{new InputSource(in)});
            return (Document) parserClass.getMethod("getDocument", null).invoke(parser, null);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof SAXParseException) {
                SAXParseException parseException = (SAXParseException) targetException;
                throw new JDOMException(new StringBuffer().append("Error on line ").append(parseException.getLineNumber()).append(" of XML document: ").append(parseException.getMessage()).toString(), parseException);
            } else if (targetException instanceof IOException) {
                throw ((IOException) targetException);
            } else {
                throw new JDOMException(targetException.getMessage(), targetException);
            }
        } catch (Exception e2) {
            throw new JDOMException(new StringBuffer().append(e2.getClass().getName()).append(": ").append(e2.getMessage()).toString(), e2);
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public Document createDocument() throws JDOMException {
        try {
            return (Document) Class.forName("oracle.xml.parser.XMLDocument").newInstance();
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer().append(e.getClass().getName()).append(": ").append(e.getMessage()).append(" when creating document").toString(), e);
        }
    }
}
