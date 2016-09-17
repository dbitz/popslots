package sfs2x.client.entities.match;

public enum NumberMatch implements IMatcher {
    EQUALS("=="),
    NOT_EQUALS("!="),
    GREATER_THAN(">"),
    GREATER_THAN_OR_EQUAL_TO(">="),
    LESS_THAN("<"),
    LESS_THAN_OR_EQUAL_TO("<=");
    
    private static final int TYPE_ID = 1;
    private String symbol;

    private NumberMatch(String symbol) {
        this.symbol = symbol;
    }

    public String getSymbol() {
        return this.symbol;
    }

    public int getType() {
        return TYPE_ID;
    }
}
