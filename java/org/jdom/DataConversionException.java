package org.jdom;

public class DataConversionException extends JDOMException {
    private static final String CVS_ID = "@(#) $RCSfile: DataConversionException.java,v $ $Revision: 1.14 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $";

    public DataConversionException(String name, String dataType) {
        super(new StringBuffer().append("The XML construct ").append(name).append(" could not be converted to a ").append(dataType).toString());
    }
}
