package org.jdom;

import org.jdom.output.XMLOutputter;

public class Comment extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: Comment.java,v $ $Revision: 1.33 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";
    protected String text;

    protected Comment() {
    }

    public Comment(String text) {
        setText(text);
    }

    public String getValue() {
        return this.text;
    }

    public String getText() {
        return this.text;
    }

    public Comment setText(String text) {
        String reason = Verifier.checkCommentData(text);
        if (reason != null) {
            throw new IllegalDataException(text, "comment", reason);
        }
        this.text = text;
        return this;
    }

    public String toString() {
        return new StringBuffer().append("[Comment: ").append(new XMLOutputter().outputString(this)).append("]").toString();
    }
}
