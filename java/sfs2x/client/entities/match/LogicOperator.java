package sfs2x.client.entities.match;

public enum LogicOperator {
    AND("AND"),
    OR("OR");
    
    private final String id;

    private LogicOperator(String id) {
        this.id = id;
    }

    public String getId() {
        return this.id;
    }
}
