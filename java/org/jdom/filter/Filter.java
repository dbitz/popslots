package org.jdom.filter;

import java.io.Serializable;

public interface Filter extends Serializable {
    boolean matches(Object obj);
}
