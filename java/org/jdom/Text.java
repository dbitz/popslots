package org.jdom;

public class Text extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: Text.java,v $ $Revision: 1.25 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    static final String EMPTY_STRING = "";
    protected String value;

    protected Text() {
    }

    public Text(String str) {
        setText(str);
    }

    public String getText() {
        return this.value;
    }

    public String getTextTrim() {
        return getText().trim();
    }

    public String getTextNormalize() {
        return normalizeString(getText());
    }

    public static String normalizeString(String str) {
        if (str == null) {
            return EMPTY_STRING;
        }
        char[] c = str.toCharArray();
        char[] n = new char[c.length];
        boolean white = true;
        int pos = 0;
        for (int i = 0; i < c.length; i++) {
            int pos2;
            if (" \t\n\r".indexOf(c[i]) == -1) {
                pos2 = pos + 1;
                n[pos] = c[i];
                white = false;
                pos = pos2;
            } else if (!white) {
                pos2 = pos + 1;
                n[pos] = ' ';
                white = true;
                pos = pos2;
            }
        }
        if (white && pos > 0) {
            pos--;
        }
        return new String(n, 0, pos);
    }

    public Text setText(String str) {
        if (str == null) {
            this.value = EMPTY_STRING;
        } else {
            String reason = Verifier.checkCharacterData(str);
            if (reason != null) {
                throw new IllegalDataException(str, "character content", reason);
            }
            this.value = str;
        }
        return this;
    }

    public void append(String str) {
        if (str != null) {
            String reason = Verifier.checkCharacterData(str);
            if (reason != null) {
                throw new IllegalDataException(str, "character content", reason);
            } else if (str == EMPTY_STRING) {
                this.value = str;
            } else {
                this.value = new StringBuffer().append(this.value).append(str).toString();
            }
        }
    }

    public void append(Text text) {
        if (text != null) {
            this.value = new StringBuffer().append(this.value).append(text.getText()).toString();
        }
    }

    public String getValue() {
        return this.value;
    }

    public String toString() {
        return new StringBuffer(64).append("[Text: ").append(getText()).append("]").toString();
    }

    public Object clone() {
        Text text = (Text) super.clone();
        text.value = this.value;
        return text;
    }
}
