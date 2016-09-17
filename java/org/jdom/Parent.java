package org.jdom;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import org.jdom.filter.Filter;

public interface Parent extends Serializable, Cloneable {
    Object clone();

    List cloneContent();

    List getContent();

    List getContent(Filter filter);

    Content getContent(int i);

    int getContentSize();

    Iterator getDescendants();

    Iterator getDescendants(Filter filter);

    Document getDocument();

    Parent getParent();

    int indexOf(Content content);

    List removeContent();

    List removeContent(Filter filter);

    Content removeContent(int i);

    boolean removeContent(Content content);
}
