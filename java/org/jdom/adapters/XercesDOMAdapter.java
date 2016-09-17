package org.jdom.adapters;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.jdom.JDOMException;
import org.jdom.input.BuilderErrorHandler;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;

public class XercesDOMAdapter extends AbstractDOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: XercesDOMAdapter.java,v $ $Revision: 1.19 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    static Class class$java$lang$String;
    static Class class$org$xml$sax$ErrorHandler;
    static Class class$org$xml$sax$InputSource;

    public Document getDocument(InputStream in, boolean validate) throws IOException, JDOMException {
        try {
            Class class$;
            Class parserClass = Class.forName("org.apache.xerces.parsers.DOMParser");
            Object parser = parserClass.newInstance();
            String str = "setFeature";
            Class[] clsArr = new Class[2];
            if (class$java$lang$String == null) {
                class$ = class$("java.lang.String");
                class$java$lang$String = class$;
            } else {
                class$ = class$java$lang$String;
            }
            clsArr[0] = class$;
            clsArr[1] = Boolean.TYPE;
            Method setFeature = parserClass.getMethod(str, clsArr);
            setFeature.invoke(parser, new Object[]{"http://xml.org/sax/features/validation", new Boolean(validate)});
            setFeature.invoke(parser, new Object[]{"http://xml.org/sax/features/namespaces", new Boolean(true)});
            if (validate) {
                str = "setErrorHandler";
                clsArr = new Class[1];
                if (class$org$xml$sax$ErrorHandler == null) {
                    class$ = class$("org.xml.sax.ErrorHandler");
                    class$org$xml$sax$ErrorHandler = class$;
                } else {
                    class$ = class$org$xml$sax$ErrorHandler;
                }
                clsArr[0] = class$;
                parserClass.getMethod(str, clsArr).invoke(parser, new Object[]{new BuilderErrorHandler()});
            }
            str = "parse";
            clsArr = new Class[1];
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
                throw new JDOMException(new StringBuffer().append("Error on line ").append(parseException.getLineNumber()).append(" of XML document: ").append(parseException.getMessage()).toString(), e);
            } else if (targetException instanceof IOException) {
                throw ((IOException) targetException);
            } else {
                throw new JDOMException(targetException.getMessage(), e);
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
            return (Document) Class.forName("org.apache.xerces.dom.DocumentImpl").newInstance();
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer().append(e.getClass().getName()).append(": ").append(e.getMessage()).append(" when creating document").toString(), e);
        }
    }
}
