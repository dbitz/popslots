package sfs2x.client.entities.match;

public enum BoolMatch implements IMatcher {
    EQUALS("=="),
    NOT_EQUALS("!=");
    
    private static final int TYPE_ID = 0;
    private String symbol;

    private BoolMatch(String symbol) {
        this.symbol = symbol;
    }

    public String getSymbol() {
        return this.symbol;
    }

    public int getType() {
        return 0;
    }
}
