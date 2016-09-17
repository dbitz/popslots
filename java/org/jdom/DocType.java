package org.jdom;

import org.jdom.output.XMLOutputter;

public class DocType extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: DocType.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";
    protected String elementName;
    protected String internalSubset;
    protected String publicID;
    protected String systemID;

    protected DocType() {
    }

    public DocType(String elementName, String publicID, String systemID) {
        setElementName(elementName);
        setPublicID(publicID);
        setSystemID(systemID);
    }

    public DocType(String elementName, String systemID) {
        this(elementName, null, systemID);
    }

    public DocType(String elementName) {
        this(elementName, null, null);
    }

    public String getElementName() {
        return this.elementName;
    }

    public DocType setElementName(String elementName) {
        String reason = Verifier.checkXMLName(elementName);
        if (reason != null) {
            throw new IllegalNameException(elementName, "DocType", reason);
        }
        this.elementName = elementName;
        return this;
    }

    public String getPublicID() {
        return this.publicID;
    }

    public DocType setPublicID(String publicID) {
        String reason = Verifier.checkPublicID(publicID);
        if (reason != null) {
            throw new IllegalDataException(publicID, "DocType", reason);
        }
        this.publicID = publicID;
        return this;
    }

    public String getSystemID() {
        return this.systemID;
    }

    public DocType setSystemID(String systemID) {
        String reason = Verifier.checkSystemLiteral(systemID);
        if (reason != null) {
            throw new IllegalDataException(systemID, "DocType", reason);
        }
        this.systemID = systemID;
        return this;
    }

    public String getValue() {
        return "";
    }

    public void setInternalSubset(String newData) {
        this.internalSubset = newData;
    }

    public String getInternalSubset() {
        return this.internalSubset;
    }

    public String toString() {
        return new StringBuffer().append("[DocType: ").append(new XMLOutputter().outputString(this)).append("]").toString();
    }
}