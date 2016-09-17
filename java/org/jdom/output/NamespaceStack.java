package org.jdom.output;

import java.util.Stack;
import org.jdom.Namespace;

class NamespaceStack {
    private static final String CVS_ID = "@(#) $RCSfile: NamespaceStack.java,v $ $Revision: 1.14 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $";
    private Stack prefixes = new Stack();
    private Stack uris = new Stack();

    NamespaceStack() {
    }

    public void push(Namespace ns) {
        this.prefixes.push(ns.getPrefix());
        this.uris.push(ns.getURI());
    }

    public String pop() {
        String prefix = (String) this.prefixes.pop();
        this.uris.pop();
        return prefix;
    }

    public int size() {
        return this.prefixes.size();
    }

    public String getURI(String prefix) {
        int index = this.prefixes.lastIndexOf(prefix);
        if (index == -1) {
            return null;
        }
        return (String) this.uris.elementAt(index);
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        String sep = System.getProperty("line.separator");
        buf.append(new StringBuffer().append("Stack: ").append(this.prefixes.size()).append(sep).toString());
        for (int i = 0; i < this.prefixes.size(); i++) {
            buf.append(new StringBuffer().append(this.prefixes.elementAt(i)).append("&").append(this.uris.elementAt(i)).append(sep).toString());
        }
        return buf.toString();
    }
}
