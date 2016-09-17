package sfs2x.client.entities.match;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.SFSArray;

public class MatchExpression {
    private IMatcher condition;
    private LogicOperator logicOp;
    private MatchExpression next;
    private MatchExpression parent;
    private Object value;
    private String varName;

    protected MatchExpression(String varName, IMatcher condition, Object value, LogicOperator logicOp, MatchExpression parent) {
        this(varName, condition, value);
        this.logicOp = logicOp;
        this.parent = parent;
    }

    public MatchExpression(String varName, IMatcher condition, Object value) {
        this.varName = varName;
        this.condition = condition;
        this.value = value;
    }

    public MatchExpression and(String varName, IMatcher condition, Object value) {
        this.next = new MatchExpression(varName, condition, value, LogicOperator.AND, this);
        return this.next;
    }

    public MatchExpression or(String varName, IMatcher condition, Object value) {
        this.next = new MatchExpression(varName, condition, value, LogicOperator.OR, this);
        return this.next;
    }

    public String getVarName() {
        return this.varName;
    }

    public IMatcher getCondition() {
        return this.condition;
    }

    public Object getValue() {
        return this.value;
    }

    public LogicOperator getLogicOp() {
        return this.logicOp;
    }

    public boolean hasNext() {
        return this.next != null;
    }

    public MatchExpression getNext() {
        return this.next;
    }

    public MatchExpression rewind() {
        MatchExpression currNode = this;
        while (currNode.parent != null) {
            currNode = currNode.parent;
        }
        return currNode;
    }

    public String asString() {
        StringBuilder sb = new StringBuilder();
        if (this.logicOp != null) {
            sb.append(" ").append(this.logicOp.getId()).append(" ");
        }
        sb.append("(");
        sb.append(this.varName).append(" ").append(this.condition.getSymbol()).append(" ").append(this.value instanceof String ? "'" + this.value + "'" : this.value);
        sb.append(")");
        return sb.toString();
    }

    public String toString() {
        MatchExpression expr = rewind();
        StringBuilder sb = new StringBuilder(expr.asString());
        while (expr.hasNext()) {
            expr = expr.next;
            sb.append(expr.asString());
        }
        return sb.toString();
    }

    public ISFSArray toSFSArray() {
        MatchExpression expr = rewind();
        ISFSArray sfsa = new SFSArray();
        sfsa.addSFSArray(expr.expressionAsSFSArray());
        while (expr.hasNext()) {
            expr = expr.next;
            sfsa.addSFSArray(expr.expressionAsSFSArray());
        }
        return sfsa;
    }

    private ISFSArray expressionAsSFSArray() {
        ISFSArray expr = new SFSArray();
        if (this.logicOp != null) {
            expr.addUtfString(this.logicOp.getId());
        } else {
            expr.addNull();
        }
        expr.addUtfString(this.varName);
        expr.addByte((byte) this.condition.getType());
        expr.addUtfString(this.condition.getSymbol());
        if (this.condition.getType() == 0) {
            expr.addBool(((Boolean) this.value).booleanValue());
        } else if (this.condition.getType() != 1) {
            expr.addUtfString(this.value.toString());
        } else if (this.value instanceof Integer) {
            expr.addDouble(((Integer) this.value).doubleValue());
        } else if (this.value instanceof Double) {
            expr.addDouble(((Double) this.value).doubleValue());
        } else {
            expr.addDouble(((Double) this.value).doubleValue());
        }
        return expr;
    }
}
