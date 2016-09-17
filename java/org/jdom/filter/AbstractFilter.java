package org.jdom.filter;

public abstract class AbstractFilter implements Filter {
    private static final String CVS_ID = "@(#) $RCSfile: AbstractFilter.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:29:00 $";

    public Filter negate() {
        return new NegateFilter(this);
    }

    public Filter or(Filter filter) {
        return new OrFilter(this, filter);
    }

    public Filter and(Filter filter) {
        return new AndFilter(this, filter);
    }
}
