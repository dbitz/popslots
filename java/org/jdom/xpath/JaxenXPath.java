package org.jdom.xpath;

import java.util.List;
import org.jaxen.JaxenException;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.SimpleVariableContext;
import org.jaxen.VariableContext;
import org.jaxen.jdom.JDOMXPath;
import org.jdom.Attribute;
import org.jdom.Content;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.Namespace;

class JaxenXPath extends XPath {
    private static final String CVS_ID = "@(#) $RCSfile: JaxenXPath.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $";
    private Object currentContext;
    private transient JDOMXPath xPath;

    private class NSContext extends SimpleNamespaceContext {
        private final JaxenXPath this$0;

        public NSContext(JaxenXPath jaxenXPath) {
            this.this$0 = jaxenXPath;
        }

        public String translateNamespacePrefixToUri(String prefix) {
            if (prefix == null || prefix.length() == 0) {
                return null;
            }
            String uri = super.translateNamespacePrefixToUri(prefix);
            if (uri != null) {
                return uri;
            }
            Element ctx = JaxenXPath.access$000(this.this$0);
            if (ctx == null) {
                return uri;
            }
            Element elt = null;
            if (ctx instanceof Element) {
                elt = ctx;
            } else if (ctx instanceof Attribute) {
                elt = ((Attribute) ctx).getParent();
            } else if (ctx instanceof Content) {
                elt = ctx.getParentElement();
            } else if (ctx instanceof Document) {
                elt = ((Document) ctx).getRootElement();
            }
            if (elt == null) {
                return uri;
            }
            Namespace ns = elt.getNamespace(prefix);
            if (ns != null) {
                return ns.getURI();
            }
            return uri;
        }
    }

    static Object access$000(JaxenXPath x0) {
        return x0.currentContext;
    }

    public JaxenXPath(String expr) throws JDOMException {
        setXPath(expr);
    }

    public List selectNodes(Object context) throws JDOMException {
        try {
            this.currentContext = context;
            List selectNodes = this.xPath.selectNodes(context);
            this.currentContext = null;
            return selectNodes;
        } catch (JaxenException ex1) {
            throw new JDOMException(new StringBuffer().append("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
        } catch (Throwable th) {
            this.currentContext = null;
        }
    }

    public Object selectSingleNode(Object context) throws JDOMException {
        try {
            this.currentContext = context;
            Object selectSingleNode = this.xPath.selectSingleNode(context);
            this.currentContext = null;
            return selectSingleNode;
        } catch (JaxenException ex1) {
            throw new JDOMException(new StringBuffer().append("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
        } catch (Throwable th) {
            this.currentContext = null;
        }
    }

    public String valueOf(Object context) throws JDOMException {
        try {
            this.currentContext = context;
            String stringValueOf = this.xPath.stringValueOf(context);
            this.currentContext = null;
            return stringValueOf;
        } catch (JaxenException ex1) {
            throw new JDOMException(new StringBuffer().append("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
        } catch (Throwable th) {
            this.currentContext = null;
        }
    }

    public Number numberValueOf(Object context) throws JDOMException {
        try {
            this.currentContext = context;
            Number numberValueOf = this.xPath.numberValueOf(context);
            this.currentContext = null;
            return numberValueOf;
        } catch (JaxenException ex1) {
            throw new JDOMException(new StringBuffer().append("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
        } catch (Throwable th) {
            this.currentContext = null;
        }
    }

    public void setVariable(String name, Object value) throws IllegalArgumentException {
        VariableContext o = this.xPath.getVariableContext();
        if (o instanceof SimpleVariableContext) {
            ((SimpleVariableContext) o).setVariableValue(null, name, value);
        }
    }

    public void addNamespace(Namespace namespace) {
        try {
            this.xPath.addNamespace(namespace.getPrefix(), namespace.getURI());
        } catch (JaxenException e) {
        }
    }

    public String getXPath() {
        return this.xPath.toString();
    }

    private void setXPath(String expr) throws JDOMException {
        try {
            this.xPath = new JDOMXPath(expr);
            this.xPath.setNamespaceContext(new NSContext(this));
        } catch (Exception ex1) {
            throw new JDOMException(new StringBuffer().append("Invalid XPath expression: \"").append(expr).append("\"").toString(), ex1);
        }
    }

    public String toString() {
        return this.xPath.toString();
    }

    public boolean equals(Object o) {
        if (!(o instanceof JaxenXPath)) {
            return false;
        }
        JaxenXPath x = (JaxenXPath) o;
        if (super.equals(o) && this.xPath.toString().equals(x.xPath.toString())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.xPath.hashCode();
    }
}
