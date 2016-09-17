package org.jdom.adapters;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.jdom.DocType;
import org.jdom.JDOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;

public abstract class AbstractDOMAdapter implements DOMAdapter {
    private static final String CVS_ID = "@(#) $RCSfile: AbstractDOMAdapter.java,v $ $Revision: 1.21 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    static Class class$java$lang$String;

    public abstract Document createDocument() throws JDOMException;

    public abstract Document getDocument(InputStream inputStream, boolean z) throws IOException, JDOMException;

    public Document getDocument(File filename, boolean validate) throws IOException, JDOMException {
        return getDocument(new FileInputStream(filename), validate);
    }

    public Document createDocument(DocType doctype) throws JDOMException {
        if (doctype == null) {
            return createDocument();
        }
        DOMImplementation domImpl = createDocument().getImplementation();
        DocumentType domDocType = domImpl.createDocumentType(doctype.getElementName(), doctype.getPublicID(), doctype.getSystemID());
        setInternalSubset(domDocType, doctype.getInternalSubset());
        return domImpl.createDocument("http://temporary", doctype.getElementName(), domDocType);
    }

    protected void setInternalSubset(DocumentType dt, String s) {
        if (dt != null && s != null) {
            try {
                Class class$;
                Class dtclass = dt.getClass();
                String str = "setInternalSubset";
                Class[] clsArr = new Class[1];
                if (class$java$lang$String == null) {
                    class$ = class$("java.lang.String");
                    class$java$lang$String = class$;
                } else {
                    class$ = class$java$lang$String;
                }
                clsArr[0] = class$;
                dtclass.getMethod(str, clsArr).invoke(dt, new Object[]{s});
            } catch (Exception e) {
            }
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}
