package com.helpshift.support;

import java.io.Serializable;

public class FaqTagFilter implements Serializable {
    private static final long serialVersionUID = 7526472295622776147L;
    private Operator operator = Operator.UNDEFINED;
    private String[] tags = new String[0];

    public enum Operator {
        AND,
        OR,
        NOT,
        UNDEFINED
    }

    public FaqTagFilter(Operator operator, String[] tags) {
        this.operator = operator;
        this.tags = tags;
    }

    public Operator getOperator() {
        return this.operator;
    }

    public String[] getTags() {
        return this.tags;
    }
}
