package org.jdom.filter;

final class NegateFilter extends AbstractFilter {
    private static final String CVS_ID = "@(#) $RCSfile: NegateFilter.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:00 $";
    private Filter filter;

    public NegateFilter(Filter filter) {
        this.filter = filter;
    }

    public boolean matches(Object obj) {
        return !this.filter.matches(obj);
    }

    public Filter negate() {
        return this.filter;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NegateFilter) {
            return this.filter.equals(((NegateFilter) obj).filter);
        }
        return false;
    }

    public int hashCode() {
        return this.filter.hashCode() ^ -1;
    }

    public String toString() {
        return new StringBuffer(64).append("[NegateFilter: ").append(this.filter.toString()).append("]").toString();
    }
}
