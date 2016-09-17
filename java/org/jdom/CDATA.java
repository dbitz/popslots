package org.jdom;

public class CDATA extends Text {
    private static final String CVS_ID = "@(#) $RCSfile: CDATA.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";

    protected CDATA() {
    }

    public CDATA(String string) {
        setText(string);
    }

    public Text setText(String str) {
        if (str == null || "".equals(str)) {
            this.value = "";
        } else {
            String reason = Verifier.checkCDATASection(str);
            if (reason != null) {
                throw new IllegalDataException(str, "CDATA section", reason);
            }
            this.value = str;
        }
        return this;
    }

    public void append(String str) {
        if (str != null && !"".equals(str)) {
            String tmpValue;
            if (this.value == "") {
                tmpValue = str;
            } else {
                tmpValue = new StringBuffer().append(this.value).append(str).toString();
            }
            String reason = Verifier.checkCDATASection(tmpValue);
            if (reason != null) {
                throw new IllegalDataException(str, "CDATA section", reason);
            }
            this.value = tmpValue;
        }
    }

    public void append(Text text) {
        if (text != null) {
            append(text.getText());
        }
    }

    public String toString() {
        return new StringBuffer(64).append("[CDATA: ").append(getText()).append("]").toString();
    }
}
