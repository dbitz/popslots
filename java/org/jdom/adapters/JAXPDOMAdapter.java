package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import org.jdom.JDOMException;
import org.jdom.input.BuilderErrorHandler;
import org.w3c.dom.Document;

public class JAXPDOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: JAXPDOMAdapter.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    static Class class$java$io$InputStream;
    static Class class$org$xml$sax$ErrorHandler;

    public Document getDocument(InputStream in, boolean validate) throws IOException, JDOMException {
        try {
            Class class$;
            Class.forName("javax.xml.transform.Transformer");
            Class factoryClass = Class.forName("javax.xml.parsers.DocumentBuilderFactory");
            Object factory = factoryClass.getMethod("newInstance", null).invoke(null, null);
            factoryClass.getMethod("setValidating", new Class[]{Boolean.TYPE}).invoke(factory, new Object[]{new Boolean(validate)});
            factoryClass.getMethod("setNamespaceAware", new Class[]{Boolean.TYPE}).invoke(factory, new Object[]{Boolean.TRUE});
            Object jaxpParser = factoryClass.getMethod("newDocumentBuilder", null).invoke(factory, null);
            Class parserClass = jaxpParser.getClass();
            String str = "setErrorHandler";
            Class[] clsArr = new Class[1];
            if (class$org$xml$sax$ErrorHandler == null) {
                class$ = class$("org.xml.sax.ErrorHandler");
                class$org$xml$sax$ErrorHandler = class$;
            } else {
                class$ = class$org$xml$sax$ErrorHandler;
            }
            clsArr[0] = class$;
            parserClass.getMethod(str, clsArr).invoke(jaxpParser, new Object[]{new BuilderErrorHandler()});
            str = "parse";
            clsArr = new Class[1];
            if (class$java$io$InputStream == null) {
                class$ = class$("java.io.InputStream");
                class$java$io$InputStream = class$;
            } else {
                class$ = class$java$io$InputStream;
            }
            clsArr[0] = class$;
            return (Document) parserClass.getMethod(str, clsArr).invoke(jaxpParser, new Object[]{in});
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof IOException) {
                throw ((IOException) targetException);
            }
            throw new JDOMException(targetException.getMessage(), targetException);
        } catch (Exception e2) {
            throw new JDOMException("Reflection failed while parsing a document with JAXP", e2);
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
            Class.forName("javax.xml.transform.Transformer");
            Class factoryClass = Class.forName("javax.xml.parsers.DocumentBuilderFactory");
            Object jaxpParser = factoryClass.getMethod("newDocumentBuilder", null).invoke(factoryClass.getMethod("newInstance", null).invoke(null, null), null);
            return (Document) jaxpParser.getClass().getMethod("newDocument", null).invoke(jaxpParser, null);
        } catch (Exception e) {
            throw new JDOMException("Reflection failed while creating new JAXP document", e);
        }
    }
}
