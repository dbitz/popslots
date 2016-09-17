package org.jdom;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.rmi.RemoteException;
import java.sql.SQLException;
import org.xml.sax.SAXException;

public class JDOMException extends Exception {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMException.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    private Throwable cause;

    public JDOMException() {
        super("Error occurred in JDOM application.");
    }

    public JDOMException(String message) {
        super(message);
    }

    public JDOMException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    public Throwable initCause(Throwable cause) {
        this.cause = cause;
        return this;
    }

    public String getMessage() {
        String msg = super.getMessage();
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child == null) {
                break;
            }
            String msg2 = child.getMessage();
            if (child instanceof SAXException) {
                Throwable grandchild = ((SAXException) child).getException();
                if (!(grandchild == null || msg2 == null || !msg2.equals(grandchild.getMessage()))) {
                    msg2 = null;
                }
            }
            if (msg2 != null) {
                if (msg != null) {
                    msg = new StringBuffer().append(msg).append(": ").append(msg2).toString();
                } else {
                    msg = msg2;
                }
            }
            if (child instanceof JDOMException) {
                break;
            }
            parent = child;
        }
        return msg;
    }

    public void printStackTrace() {
        super.printStackTrace();
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child != null) {
                System.err.print("Caused by: ");
                child.printStackTrace();
                if (!(child instanceof JDOMException)) {
                    parent = child;
                } else {
                    return;
                }
            }
            return;
        }
    }

    public void printStackTrace(PrintStream s) {
        super.printStackTrace(s);
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child != null) {
                s.print("Caused by: ");
                child.printStackTrace(s);
                if (!(child instanceof JDOMException)) {
                    parent = child;
                } else {
                    return;
                }
            }
            return;
        }
    }

    public void printStackTrace(PrintWriter w) {
        super.printStackTrace(w);
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child != null) {
                w.print("Caused by: ");
                child.printStackTrace(w);
                if (!(child instanceof JDOMException)) {
                    parent = child;
                } else {
                    return;
                }
            }
            return;
        }
    }

    public Throwable getCause() {
        return this.cause;
    }

    private static Throwable getNestedException(Throwable parent) {
        if (parent instanceof JDOMException) {
            return ((JDOMException) parent).getCause();
        }
        if (parent instanceof SAXException) {
            return ((SAXException) parent).getException();
        }
        if (parent instanceof SQLException) {
            return ((SQLException) parent).getNextException();
        }
        if (parent instanceof InvocationTargetException) {
            return ((InvocationTargetException) parent).getTargetException();
        }
        if (parent instanceof ExceptionInInitializerError) {
            return ((ExceptionInInitializerError) parent).getException();
        }
        if (parent instanceof RemoteException) {
            return ((RemoteException) parent).detail;
        }
        Throwable nestedException = getNestedException(parent, "javax.naming.NamingException", "getRootCause");
        if (nestedException != null) {
            return nestedException;
        }
        nestedException = getNestedException(parent, "javax.servlet.ServletException", "getRootCause");
        return nestedException == null ? null : nestedException;
    }

    private static Throwable getNestedException(Throwable parent, String className, String methodName) {
        try {
            Class testClass = Class.forName(className);
            if (testClass.isAssignableFrom(parent.getClass())) {
                return (Throwable) testClass.getMethod(methodName, new Class[0]).invoke(parent, new Object[0]);
            }
        } catch (Exception e) {
        }
        return null;
    }
}
