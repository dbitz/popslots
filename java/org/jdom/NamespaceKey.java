package org.jdom;

final class NamespaceKey {
    private static final String CVS_ID = "@(#) $RCSfile: NamespaceKey.java,v $ $Revision: 1.2 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    private int hash;
    private String prefix;
    private String uri;

    public NamespaceKey(String prefix, String uri) {
        this.prefix = prefix;
        this.uri = uri;
        this.hash = prefix.hashCode();
    }

    public NamespaceKey(Namespace namespace) {
        this(namespace.getPrefix(), namespace.getURI());
    }

    public boolean equals(Object ob) {
        if (this == ob) {
            return true;
        }
        if (!(ob instanceof NamespaceKey)) {
            return false;
        }
        NamespaceKey other = (NamespaceKey) ob;
        if (this.prefix.equals(other.prefix) && this.uri.equals(other.uri)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.hash;
    }

    public String toString() {
        return new StringBuffer().append("[NamespaceKey: prefix \"").append(this.prefix).append("\" is mapped to URI \"").append(this.uri).append("\"]").toString();
    }
}
