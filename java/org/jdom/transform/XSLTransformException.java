package org.jdom.transform;

import org.jdom.JDOMException;

public class XSLTransformException extends JDOMException {
    private static final String CVS_ID = "@(#) $RCSfile: XSLTransformException.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $";

    public XSLTransformException(String message) {
        super(message);
    }

    public XSLTransformException(String message, Exception cause) {
        super(message, cause);
    }
}
