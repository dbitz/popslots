package org.jdom;

import java.util.HashMap;

public final class Namespace {
    private static final String CVS_ID = "@(#) $RCSfile: Namespace.java,v $ $Revision: 1.43 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    public static final Namespace NO_NAMESPACE = new Namespace("", "");
    public static final Namespace XML_NAMESPACE = new Namespace("xml", "http://www.w3.org/XML/1998/namespace");
    private static HashMap namespaces = new HashMap(16);
    private String prefix;
    private String uri;

    static {
        namespaces.put(new NamespaceKey(NO_NAMESPACE), NO_NAMESPACE);
        namespaces.put(new NamespaceKey(XML_NAMESPACE), XML_NAMESPACE);
    }

    public static Namespace getNamespace(String prefix, String uri) {
        if (prefix == null || prefix.trim().equals("")) {
            if (uri == null || uri.trim().equals("")) {
                return NO_NAMESPACE;
            }
            prefix = "";
        } else if (uri == null || uri.trim().equals("")) {
            uri = "";
        }
        NamespaceKey lookup = new NamespaceKey(prefix, uri);
        Namespace preexisting = (Namespace) namespaces.get(lookup);
        if (preexisting != null) {
            return preexisting;
        }
        String reason = Verifier.checkNamespacePrefix(prefix);
        if (reason != null) {
            throw new IllegalNameException(prefix, "Namespace prefix", reason);
        }
        reason = Verifier.checkNamespaceURI(uri);
        if (reason != null) {
            throw new IllegalNameException(uri, "Namespace URI", reason);
        } else if (!prefix.equals("") && uri.equals("")) {
            throw new IllegalNameException("", "namespace", "Namespace URIs must be non-null and non-empty Strings");
        } else if (prefix.equals("xml")) {
            throw new IllegalNameException(prefix, "Namespace prefix", "The xml prefix can only be bound to http://www.w3.org/XML/1998/namespace");
        } else if (uri.equals("http://www.w3.org/XML/1998/namespace")) {
            throw new IllegalNameException(uri, "Namespace URI", "The http://www.w3.org/XML/1998/namespace must be bound to the xml prefix.");
        } else {
            Namespace ns = new Namespace(prefix, uri);
            namespaces.put(lookup, ns);
            return ns;
        }
    }

    public static Namespace getNamespace(String uri) {
        return getNamespace("", uri);
    }

    private Namespace(String prefix, String uri) {
        this.prefix = prefix;
        this.uri = uri;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getURI() {
        return this.uri;
    }

    public boolean equals(Object ob) {
        if (this == ob) {
            return true;
        }
        if (ob instanceof Namespace) {
            return this.uri.equals(((Namespace) ob).uri);
        }
        return false;
    }

    public String toString() {
        return new StringBuffer().append("[Namespace: prefix \"").append(this.prefix).append("\" is mapped to URI \"").append(this.uri).append("\"]").toString();
    }

    public int hashCode() {
        return this.uri.hashCode();
    }
}
