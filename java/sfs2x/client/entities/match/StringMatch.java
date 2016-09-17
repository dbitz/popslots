package sfs2x.client.entities.match;

public enum StringMatch implements IMatcher {
    EQUALS("=="),
    NOT_EQUALS("!="),
    CONTAINS("contains"),
    STARTS_WITH("startsWith"),
    ENDS_WITH("endsWith");
    
    private static final int TYPE_ID = 2;
    private String symbol;

    private StringMatch(String symbol) {
        this.symbol = symbol;
    }

    public String getSymbol() {
        return this.symbol;
    }

    public int getType() {
        return TYPE_ID;
    }
}
