package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import org.jdom.JDOMException;
import org.w3c.dom.Document;
import org.xml.sax.SAXParseException;

public class CrimsonDOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: CrimsonDOMAdapter.java,v $ $Revision: 1.17 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";

    public Document getDocument(InputStream in, boolean validate) throws IOException, JDOMException {
        try {
            return (Document) Class.forName("org.apache.crimson.tree.XmlDocument").getMethod("createXmlDocument", new Class[]{Class.forName("java.io.InputStream"), Boolean.TYPE}).invoke(null, new Object[]{in, new Boolean(false)});
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

    public Document createDocument() throws JDOMException {
        try {
            return (Document) Class.forName("org.apache.crimson.tree.XmlDocument").newInstance();
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer().append(e.getClass().getName()).append(": ").append(e.getMessage()).append(" when creating document").toString(), e);
        }
    }
}
