package org.jdom.filter;

import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;

public class ContentFilter extends AbstractFilter {
    public static final int CDATA = 2;
    public static final int COMMENT = 8;
    private static final String CVS_ID = "@(#) $RCSfile: ContentFilter.java,v $ $Revision: 1.15 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $";
    public static final int DOCTYPE = 128;
    public static final int DOCUMENT = 64;
    public static final int ELEMENT = 1;
    public static final int ENTITYREF = 32;
    public static final int PI = 16;
    public static final int TEXT = 4;
    private int filterMask;

    public ContentFilter() {
        setDefaultMask();
    }

    public ContentFilter(boolean allVisible) {
        if (allVisible) {
            setDefaultMask();
        } else {
            this.filterMask &= this.filterMask ^ -1;
        }
    }

    public ContentFilter(int mask) {
        setFilterMask(mask);
    }

    public int getFilterMask() {
        return this.filterMask;
    }

    public void setFilterMask(int mask) {
        setDefaultMask();
        this.filterMask &= mask;
    }

    public void setDefaultMask() {
        this.filterMask = 255;
    }

    public void setDocumentContent() {
        this.filterMask = 153;
    }

    public void setElementContent() {
        this.filterMask = 63;
    }

    public void setElementVisible(boolean visible) {
        if (visible) {
            this.filterMask |= ELEMENT;
        } else {
            this.filterMask &= -2;
        }
    }

    public void setCDATAVisible(boolean visible) {
        if (visible) {
            this.filterMask |= CDATA;
        } else {
            this.filterMask &= -3;
        }
    }

    public void setTextVisible(boolean visible) {
        if (visible) {
            this.filterMask |= TEXT;
        } else {
            this.filterMask &= -5;
        }
    }

    public void setCommentVisible(boolean visible) {
        if (visible) {
            this.filterMask |= COMMENT;
        } else {
            this.filterMask &= -9;
        }
    }

    public void setPIVisible(boolean visible) {
        if (visible) {
            this.filterMask |= PI;
        } else {
            this.filterMask &= -17;
        }
    }

    public void setEntityRefVisible(boolean visible) {
        if (visible) {
            this.filterMask |= ENTITYREF;
        } else {
            this.filterMask &= -33;
        }
    }

    public void setDocTypeVisible(boolean visible) {
        if (visible) {
            this.filterMask |= DOCTYPE;
        } else {
            this.filterMask &= -129;
        }
    }

    public boolean matches(Object obj) {
        if (obj instanceof Element) {
            if ((this.filterMask & ELEMENT) != 0) {
                return true;
            }
            return false;
        } else if (obj instanceof CDATA) {
            if ((this.filterMask & CDATA) == 0) {
                return false;
            }
            return true;
        } else if (obj instanceof Text) {
            if ((this.filterMask & TEXT) == 0) {
                return false;
            }
            return true;
        } else if (obj instanceof Comment) {
            if ((this.filterMask & COMMENT) == 0) {
                return false;
            }
            return true;
        } else if (obj instanceof ProcessingInstruction) {
            if ((this.filterMask & PI) == 0) {
                return false;
            }
            return true;
        } else if (obj instanceof EntityRef) {
            if ((this.filterMask & ENTITYREF) == 0) {
                return false;
            }
            return true;
        } else if (obj instanceof Document) {
            if ((this.filterMask & DOCUMENT) == 0) {
                return false;
            }
            return true;
        } else if (!(obj instanceof DocType)) {
            return false;
        } else {
            if ((this.filterMask & DOCTYPE) == 0) {
                return false;
            }
            return true;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentFilter)) {
            return false;
        }
        if (this.filterMask != ((ContentFilter) obj).filterMask) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.filterMask;
    }
}
