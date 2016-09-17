package org.jboss.netty.handler.codec.http;

import java.io.Serializable;
import java.util.Comparator;

final class CaseIgnoringComparator implements Comparator<String>, Serializable {
    static final CaseIgnoringComparator INSTANCE = new CaseIgnoringComparator();
    private static final long serialVersionUID = 4582133183775373862L;

    private CaseIgnoringComparator() {
    }

    public int compare(String o1, String o2) {
        return o1.compareToIgnoreCase(o2);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
