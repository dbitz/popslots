package org.jdom.xpath;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.List;
import org.jdom.JDOMException;
import org.jdom.Namespace;

public abstract class XPath implements Serializable {
    private static final String CVS_ID = "@(#) $RCSfile: XPath.java,v $ $Revision: 1.17 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $";
    private static final String DEFAULT_XPATH_CLASS = "org.jdom.xpath.JaxenXPath";
    public static final String JDOM_OBJECT_MODEL_URI = "http://jdom.org/jaxp/xpath/jdom";
    private static final String XPATH_CLASS_PROPERTY = "org.jdom.xpath.class";
    static Class class$java$lang$String;
    static Class class$org$jdom$xpath$XPath;
    private static Constructor constructor = null;

    private static final class XPathString implements Serializable {
        private String xPath = null;

        public XPathString(String xpath) {
            this.xPath = xpath;
        }

        private Object readResolve() throws ObjectStreamException {
            try {
                return XPath.newInstance(this.xPath);
            } catch (JDOMException ex1) {
                throw new InvalidObjectException(new StringBuffer().append("Can't create XPath object for expression \"").append(this.xPath).append("\": ").append(ex1.toString()).toString());
            }
        }
    }

    public abstract void addNamespace(Namespace namespace);

    public abstract String getXPath();

    public abstract Number numberValueOf(Object obj) throws JDOMException;

    public abstract List selectNodes(Object obj) throws JDOMException;

    public abstract Object selectSingleNode(Object obj) throws JDOMException;

    public abstract void setVariable(String str, Object obj);

    public abstract String valueOf(Object obj) throws JDOMException;

    public static XPath newInstance(String path) throws JDOMException {
        try {
            if (constructor == null) {
                String className;
                try {
                    className = System.getProperty(XPATH_CLASS_PROPERTY, DEFAULT_XPATH_CLASS);
                } catch (SecurityException e) {
                    className = DEFAULT_XPATH_CLASS;
                }
                setXPathClass(Class.forName(className));
            }
            return (XPath) constructor.newInstance(new Object[]{path});
        } catch (JDOMException ex1) {
            throw ex1;
        } catch (InvocationTargetException ex2) {
            Throwable t = ex2.getTargetException();
            throw (t instanceof JDOMException ? (JDOMException) t : new JDOMException(t.toString(), t));
        } catch (Exception ex3) {
            throw new JDOMException(ex3.toString(), ex3);
        }
    }

    public static void setXPathClass(Class aClass) throws JDOMException {
        if (aClass == null) {
            throw new IllegalArgumentException("aClass");
        }
        try {
            Class class$;
            if (class$org$jdom$xpath$XPath == null) {
                class$ = class$("org.jdom.xpath.XPath");
                class$org$jdom$xpath$XPath = class$;
            } else {
                class$ = class$org$jdom$xpath$XPath;
            }
            if (!class$.isAssignableFrom(aClass) || Modifier.isAbstract(aClass.getModifiers())) {
                throw new JDOMException(new StringBuffer().append(aClass.getName()).append(" is not a concrete JDOM XPath implementation").toString());
            }
            Class[] clsArr = new Class[1];
            if (class$java$lang$String == null) {
                class$ = class$("java.lang.String");
                class$java$lang$String = class$;
            } else {
                class$ = class$java$lang$String;
            }
            clsArr[0] = class$;
            constructor = aClass.getConstructor(clsArr);
        } catch (JDOMException ex1) {
            throw ex1;
        } catch (Exception ex2) {
            throw new JDOMException(ex2.toString(), ex2);
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public void addNamespace(String prefix, String uri) {
        addNamespace(Namespace.getNamespace(prefix, uri));
    }

    public static List selectNodes(Object context, String path) throws JDOMException {
        return newInstance(path).selectNodes(context);
    }

    public static Object selectSingleNode(Object context, String path) throws JDOMException {
        return newInstance(path).selectSingleNode(context);
    }

    protected final Object writeReplace() throws ObjectStreamException {
        return new XPathString(getXPath());
    }
}
