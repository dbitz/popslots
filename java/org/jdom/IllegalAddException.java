package org.jdom;

public class IllegalAddException extends IllegalArgumentException {
    private static final String CVS_ID = "@(#) $RCSfile: IllegalAddException.java,v $ $Revision: 1.26 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";

    IllegalAddException(Element base, Attribute added, String reason) {
        super(new StringBuffer().append("The attribute \"").append(added.getQualifiedName()).append("\" could not be added to the element \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(Element base, Element added, String reason) {
        super(new StringBuffer().append("The element \"").append(added.getQualifiedName()).append("\" could not be added as a child of \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(Element added, String reason) {
        super(new StringBuffer().append("The element \"").append(added.getQualifiedName()).append("\" could not be added as the root of the document: ").append(reason).toString());
    }

    IllegalAddException(Element base, ProcessingInstruction added, String reason) {
        super(new StringBuffer().append("The PI \"").append(added.getTarget()).append("\" could not be added as content to \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(ProcessingInstruction added, String reason) {
        super(new StringBuffer().append("The PI \"").append(added.getTarget()).append("\" could not be added to the top level of the document: ").append(reason).toString());
    }

    IllegalAddException(Element base, Comment added, String reason) {
        super(new StringBuffer().append("The comment \"").append(added.getText()).append("\" could not be added as content to \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(Element base, CDATA added, String reason) {
        super(new StringBuffer().append("The CDATA \"").append(added.getText()).append("\" could not be added as content to \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(Element base, Text added, String reason) {
        super(new StringBuffer().append("The Text \"").append(added.getText()).append("\" could not be added as content to \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(Comment added, String reason) {
        super(new StringBuffer().append("The comment \"").append(added.getText()).append("\" could not be added to the top level of the document: ").append(reason).toString());
    }

    IllegalAddException(Element base, EntityRef added, String reason) {
        super(new StringBuffer().append("The entity reference\"").append(added.getName()).append("\" could not be added as content to \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(Element base, Namespace added, String reason) {
        String str;
        StringBuffer append = new StringBuffer().append("The namespace xmlns");
        if (added.getPrefix() == null || added.getPrefix().equals("")) {
            str = "=";
        } else {
            str = new StringBuffer().append(":").append(added.getPrefix()).append("=").toString();
        }
        super(append.append(str).append("\"").append(added.getURI()).append("\" could not be added as a namespace to \"").append(base.getQualifiedName()).append("\": ").append(reason).toString());
    }

    IllegalAddException(DocType added, String reason) {
        super(new StringBuffer().append("The DOCTYPE ").append(added.toString()).append(" could not be added to the document: ").append(reason).toString());
    }

    public IllegalAddException(String reason) {
        super(reason);
    }
}
