package org.jdom.filter;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.jdom.Element;
import org.jdom.Namespace;

public class ElementFilter extends AbstractFilter {
    private static final String CVS_ID = "@(#) $RCSfile: ElementFilter.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $";
    private String name;
    private transient Namespace namespace;

    public ElementFilter(String name) {
        this.name = name;
    }

    public ElementFilter(Namespace namespace) {
        this.namespace = namespace;
    }

    public ElementFilter(String name, Namespace namespace) {
        this.name = name;
        this.namespace = namespace;
    }

    public boolean matches(Object obj) {
        if (!(obj instanceof Element)) {
            return false;
        }
        Element el = (Element) obj;
        if (this.name != null && !this.name.equals(el.getName())) {
            return false;
        }
        if (this.namespace == null || this.namespace.equals(el.getNamespace())) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ElementFilter)) {
            return false;
        }
        ElementFilter filter = (ElementFilter) obj;
        if (this.name == null ? filter.name != null : !this.name.equals(filter.name)) {
            return false;
        }
        if (this.namespace != null) {
            if (this.namespace.equals(filter.namespace)) {
                return true;
            }
        } else if (filter.namespace == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result;
        int i = 0;
        if (this.name != null) {
            result = this.name.hashCode();
        } else {
            result = 0;
        }
        int i2 = result * 29;
        if (this.namespace != null) {
            i = this.namespace.hashCode();
        }
        return i2 + i;
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        if (this.namespace != null) {
            out.writeObject(this.namespace.getPrefix());
            out.writeObject(this.namespace.getURI());
            return;
        }
        out.writeObject(null);
        out.writeObject(null);
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        Object prefix = in.readObject();
        Object uri = in.readObject();
        if (prefix != null) {
            this.namespace = Namespace.getNamespace((String) prefix, (String) uri);
        }
    }
}
